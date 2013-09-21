<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Services extends REST_Controller
{
	public $_model = 'services';

    public $methods = array(
        'create_post'    => array(
            'params'        => '!establishment_id, !service_name',
            'url_format'    => array('services/create'),
            'description'    => 'Create a service.',
            'scope'         => ROLE_ESTABLISHMENT
        )
    );

    function __construct()
    {
        parent::__construct();
    }
	
	public function create_post()
	{
		$required_fields	= array('establishment_id','service_name');
		$data				= $this->_require_fields($required_fields, $this->_post_args);
		$data				= $this->services_model->create($data);
		$this->response($data);
	}
    public function index_get(){
        $data = $this->services_model->get_all();
        return $data;
    }
}