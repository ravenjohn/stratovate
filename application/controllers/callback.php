<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Callback extends REST_Controller
{
	public $_model = 'clients';

    public $methods = array(
		'index_get' => array()
	);

    function __construct()
    {
        parent::__construct();
		$this->load->model('users_model');
    }
	
	public function index_get($id = NULL)
	{
		$data = $this->_get_args;
		
		$this->userNumber = $data['from'];
		$message	= $data['text'];
		$this->rrn	= $data['rrn'];
		$this->svc_id	= $data['svc_id'];
		
		$arguments	= explode(' ', $message);
		
		$action		= $arguments[1];
		
		$data = array();
		if(!$this->users_model->contact_number_exists($this->userNumber))
		{
			$data['name'] = 'anon';
			$data['contact_number'] = $this->userNumber;
			$data['type'] = ROLE_CLIENT;
			$this->user = $this->users_model->create($data);
		}
		else
		{
			$users = $this->users_model->get_all(array('contact_number' => $this->userNumber));
			$this->user = $users['records'][0];
		}
		
		switch($action) {
			case SERVICE_KEYWORD : 
				$this->getServices($arguments[2]);
				break;
			case PROMO_KEYWORD :
				$this->getPromos($arguments[2]);
				break;
			case ON_KEYWORD :
				$this->getStores();
				break;
			default:
				$this->classifyCode($arguments[2], $arguments[3], (isset($arguments[4]) ? $arguments[4] : NULL));
		}
		
		$this->response(array('status' => "Ok"));
	}
	
	public function getServices($storeId)
	{
		$this->load->model('services_model');
		$data = $this->services_model->get_all(array('establishment_id' => $storeId), FALSE, FALSE, FALSE, 1, 0);
		$returnMessage = '';
		
		foreach($data['records'] as $datum) {
			$returnMessage .= $datum['service_name'] . ' = ' . $datum['code'].', ';
		}
		
		$this->reply($returnMessage);
	}
	
	public function getPromos($storeId)
	{
		$stores = $this->users_model->get_all(array('type' => 'establishment'), FALSE, FALSE, FALSE, 1, 0);
		$returnMessage = '';
		
		foreach($stores['records'] as $store) {
			$returnMessage .= $store['name'] . ' = ' . $store['id'].', ';
		}
		
		$this->reply($returnMessage);
		
	}
	
	public function getStores()
	{
		$stores = $this->users_model->get_all(array('type' => 'establishment'), FALSE, FALSE, FALSE, 1, 0);
		$returnMessage = '';
		
		foreach($stores['records'] as $store) {
			$returnMessage .= $store['name'] . ' = ' . $store['id'].', ';
		}
		
		$this->reply($returnMessage);
	}
	
	public function classifyCode($code, $status, $message = NULL)
	{
		$status = strtolower($status);
		if($status != 'on' && $status != 'off' && $status != 'info')
		{
			$this->reply('Invalid code.');
		}
		else{
			
			$this->load->model('services_model');
			$services = $this->services_model->get_all(array('code' => $code));
			$service = $services['records'][0];
			
			$this->load->model('requests_model');
			$data = array();
			$data['user_id'] = $this->user['id'];
			$data['establishment_id'] = $service['establishment_id'];
			$data['service_id'] = $service['id'];
			$this->requests_model->create($data);
			
			
			$this->reply('Your request is now being processed. You will be notified later.');
		}
	}
	
	public function reply($message) {
		$dlurl=urlencode("http://youphoriclabs.com/SMSApps/dailybal/checkbal.php");
		$url = "http://121.58.235.156/sms/sms_out.php?username=". SMS_USERNAME ."&password=". SMS_PASSWORD ."&to=".SMS_ACCESS_CODE."&msisdn={$this->userNumber}&text={$message}&rrn=". $this->rrn ."&binfo=0000&on=1&dlrurl={$dlurl}&service=SMSME&svc_id=" . $this->svc_id;
		die($url);
		
		// $ret = @file_get_contents($url);
		
		
		$ret = self::curl('GET', $url);
		die(var_dump($ret));
		
		return $ret;
	}
}