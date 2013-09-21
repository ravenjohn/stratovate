<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Services_model extends REST_Model
{

	function __construct()
	{
		parent::__construct();
		
		$this->table_name = TABLE_SERVICES;
		
		$this->columns = array(
			'id',
			'establishment_id',
			'service_name',
			'description',
			'date_created',
			'date_updated'
		);
		
		$this->selectable_columns = array(
			'id',
			'establishment_id',
			'service_name',
			'description',
			'date_created',
			'date_updated'
		);
	}
}
