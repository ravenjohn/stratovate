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
		$data = $this->clients_model->create($this->_args);
		$this->response($data);
	}
}