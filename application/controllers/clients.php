<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Clients extends REST_Controller
{
	public $_model = 'clients';

    public $methods = array(
        'index_get'    => array(
            'params'        => '!name, !password',
            'url_format'    => array('users/login'),
            'description'    => 'Login.',
            'scope'         => ROLE_ESTABLISHMENT
        )
    );

    function __construct()
    {
        parent::__construct();
    }
	
	public function index_get($id = NULL)
	{
		if($id == NULL)
		{
			throw new Exception('Establishment ID is missing.');
		}
		
		$data = $this->clients_model->get_clients($id);
		$this->response($data);
	}
}