<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Clients_model extends REST_Model
{

	function __construct()
	{
		parent::__construct();
		
		$this->table_name = TABLE_CLIENTS;
		
		$this->columns = array(
			'id',
			'user_id',
			'service_id',
			'date_created',
			'date_updated'
		);
		
		$this->selectable_columns = array(
			'id',
			'user_id',
			'service_id',
			'date_created',
			'date_updated'
		);
	}
}
