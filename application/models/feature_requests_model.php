<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Feature_Requests_model extends REST_Model
{

	function __construct()
	{
		parent::__construct();
		
		$this->table_name = TABLE_FEATURE_REQUESTS;
		
		$this->columns = array(
			'id',
			'establishment_id',
			'feature',
			'date_created',
			'date_updated'
		);
		
		$this->selectable_columns = array(
			'id',
			'establishment_id',
			'feature',
			'date_created',
			'date_updated'
		);
	}
}
