<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

define('PASSWORD_SALT',			'*1FECC20BBC9047AD3ACCDA1B3AB6BEE50511EDD3');
define('ROLE_ADMIN',			'admin');
define('ROLE_ESTABLISHMENT',	'establishment');
define('ROLE_CLIENT',			'client');

/*
|--------------------------------------------------------------------------
| Query Constants
|--------------------------------------------------------------------------
|
| 
|
*/

define('DEFAULT_QUERY_LIMIT', 10);

define('SERVICE_KEYWORD', 'SERVICE');
define('ON_KEYWORD', 'ON');
define('PROMO_KEYWORD', 'PROMO');
define('SMS_USERNAME', 'ravenjohn');
define('SMS_PASSWORD', 'stratovate');

define('SMS_ACCESS_CODE', '68002');


/*
|--------------------------------------------------------------------------
| Database Tables
|--------------------------------------------------------------------------
|
| To ease table renaming
|
*/

define('TABLE_LOGS',	'logs');
define('TABLE_USERS',	'users');
define('TABLE_CLIENTS',	'clients');
define('TABLE_FEATURE_REQUESTS',	'feature_requests');
define('TABLE_FEATURES',	'features');
define('TABLE_REQUESTS',	'requests');
define('TABLE_SERVICES',	'services');

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0777);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/

define('FOPEN_READ',							'rb');
define('FOPEN_READ_WRITE',						'r+b');
define('FOPEN_WRITE_CREATE_DESTRUCTIVE',		'wb'); // truncates existing file data, use with care
define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE',	'w+b'); // truncates existing file data, use with care
define('FOPEN_WRITE_CREATE',					'ab');
define('FOPEN_READ_WRITE_CREATE',				'a+b');
define('FOPEN_WRITE_CREATE_STRICT',				'xb');
define('FOPEN_READ_WRITE_CREATE_STRICT',		'x+b');


/* End of file constants.php */
/* Location: ./application/config/constants.php */