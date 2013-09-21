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
	
	public function get_clients($id)
	{
		$c			= $this->query("select * from services where establishment_id = {$id}");
		$clients	= array();
		foreach($c as $d){
			$clients[] = $this->query("select * from users where id in (select user_id from clients where service_id = {$d['id']})");
		}
		return $clients;
	}
}
