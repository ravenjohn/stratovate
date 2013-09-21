<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Callback extends REST_Controller
{
	public $_model = 'clients';

    public $methods = array();

    function __construct()
    {
        parent::__construct();
    }
	
	public function index_get($id = NULL)
	{
		$data = $this->_get_args;
		
		$this->userNumber = $data['msisdn'];
		$message	= $data['text'];
		$this->rrn		= $data['rrn'];
		
		$arguments	= explode(' ', $arguments);
		
		$action		= $arguments[1];
		
		switch($action) 
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
				$this->classifyCode($arguments[2], $arguments[3], (isset($arguments[4]) ? $arguments[4] : NULL); 
		
		$this->response('{"status" : "Ok"}');
	}
	
	public function getServices($storeId)
	{
		$this->load->model('services');
		$data = $this->services_model->get_all(array('establishment_id' => $storeId), FALSE, FALSE, FALSE, 1, 0);
		$returnMessage = '';
		
		foreach($data as $datum) {
			$returnMessage .= $datum['service_name'] . ' = ' . $datum['code'].', ';
		}
		
		$this->reply($returnMessage);
	}
	
	public function getPromos($storeId)
	{
		$this->load->model('users');
		$stores = $this->users_model->get_all(array('type' => 'establishment'), FALSE, FALSE, FALSE, 1, 0);
		$returnMessage = '';
		
		foreach($stores as $store) {
			$returnMessage .= $store['name'] . ' = ' . $store['id'].', ';
		}
		
		$this->reply($returnMessage);
		
	}
	
	public function getStores()
	{
		$this->load->model('users');
		$stores = $this->users_model->get_all(array('type' => 'establishment'), FALSE, FALSE, FALSE, 1, 0);
		$returnMessage = '';
		
		foreach($stores as $store) {
			$returnMessage .= $store['name'] . ' = ' . $store['id'].', ';
		}
		
		$this->reply($message);
	}
	
	public function classifyCode($code, $status, $message = NULL)
	{
		$status = strtolower($status);
		if($status != 'on' && $status != 'off' && $status != 'info')
		{
			$this->reply('Invalid code.');
		}
		else{
			
			
			$this->load->model('requests');
			$data = array();
			$data[]
			$this->requests_model->create($data);
		}
	}
	
	public function reply($message) {
		$dlurl=urlencode("http://youphoriclabs.com/SMSApps/dailybal/checkbal.php");
		$url = "http://121.58.235.156/sms/sms_out.php?username={ SMS_USERNAME }&password={ SMS_USERNAME }&to={SMS_ACCESS_CODE}&msisdn={$this->userNumber}&text={$message}&rrn={ $this->rrn }&binfo=3294&on=1&dlrurl={$dlurl}";
		
		return self::curl($url);
	}
}