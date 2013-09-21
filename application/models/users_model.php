<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users_model extends REST_Model
{

	protected static $allowed_types = array('admin', 'establishment', 'client');

	function __construct()
	{
		parent::__construct();
		
		$this->table_name = TABLE_USERS;
		
		$this->columns = array(
			'id',
			'access_token',
			'name',
			'password',
			'type',
			'contact_number',
			'data',
			'date_created',
			'date_updated'
		);
		
		$this->selectable_columns = array(
			'id',
			'access_token',
			'name',
			'type',
			'contact_number',
			'data',
			'date_created',
			'date_updated'
		);
		
		$this->searchable_columns = array(
			'name',
			'contact_number'
		);
	}

	
	public function get_user_by_access_token($access_token)
	{
		$query = $this->db->select()->from($this->table_name)->where(array('access_token' => $access_token))->get();
		return ($query->num_rows() >= 1) ?  $query->row_array() : FALSE;
	}
	
	public function login($data)
	{
		$this->db->select($this->selectable_columns);
		// die(md5(sha1($data['password'])));
		$query	= $this->db->get_where($this->table_name, array('name' => $data['name'], 'password' => md5(sha1($data['password']))));
		$data	= $query->row_array();
		
		if(empty($data))
		{
			throw new Exception('Name and Password did not match.');
		}

		$access_token = md5(time().uniqid());

		$this->update($data['id'], array('access_token' => $access_token));
		
		$data['access_token'] = $access_token;
		return $data;
	}
	
	public function contact_number_exists($contact_number)
	{
		return $this->exists_by_fields(array('contact_number' => $contact_number));
	}
}