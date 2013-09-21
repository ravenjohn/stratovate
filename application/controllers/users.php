<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends REST_Controller
{
	public $_model = 'users';

    public $methods = array(
        'login_post'    => array(
            'params'        => '!name, !password',
            'url_format'    => array('users/login'),
            'description'    => 'Login.'
        ),
        'logout_get'    => array(
            'params'        => '!access_token',
            'url_format'    => array('users/logout'),
            'description'    => 'Logout.',
            'scope'         => ROLE_ADMIN
        )
    );

    function __construct()
    {
        parent::__construct();
    }
	
	public function login_post()
	{
		$required_fields	= array('name', 'password');
		$data				= $this->_require_fields($required_fields, $this->_post_args);
		
		self::_check_strlen($data['password'], 6, 'password');
		$data				= $this->users_model->login($data);

		$this->response($data);
	}
	
	public function logout_get(){
		$this->users_model->update($this->user['id'], array('access_token' => NULL));
		$this->response(array('message' => 'Logout successful'));
	}
}