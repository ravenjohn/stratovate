<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Requests extends REST_Controller
{
	public $_model = 'requests';

    public $methods = array(
        'update_put'    => array(
            'params'        => '',
            'url_format'    => array('features'),
            'description'    => 'Lists features.'
        )
    );

    function __construct()
    {
        parent::__construct();
    }
	
	public function update_put($id = NULL)
	{
		$data = $this->requests_model->update(
				$id,
				$this->put(),
				$this->_fields
			);
			
		$this->response($data);
	}
	public function index_get(){
        $data = $this->request_model->get_all();
        return $data;
    }
}