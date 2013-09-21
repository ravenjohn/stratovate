<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Features extends REST_Controller
{
	public $_model = 'features';

    public $methods = array(
        'index_get'    => array(
            'params'        => '',
            'url_format'    => array('features'),
            'description'    => 'Lists features.',
            'scope'         => ROLE_ESTABLISHMENT
        )
    );

    function __construct()
    {
        parent::__construct();
    }
	
	public function index_get()
	{
		$data = $this->features_model->get_all(
					FALSE,
					$this->get('search_key'),
					$this->get('fields'),
					$this->get('page'),
					$this->get('limit'),
					$this->get('sort_field'),
					$this->get('sort_order'));
		$this->response($data);
	}
}