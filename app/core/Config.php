<?php
/**
 * app info
 */
define('APP_NAME', 'BulSU Archive');
define('APP_DESC', 'Web based Archive of Thesis and Capstone of Bulacan State University Sarmiento Campus');

/**
 * CSRF TOKEN CONFIG
 */
define('CSRF_TOKEN_SECRET','<change me something random>');

/**
 * UPLOAD FILE CONFIG
 */
define('UPLOAD_DIR','/app/upload_files/'); // FILE DIRECTORY
define('MAXSIZE','10485760'); //10MB MAX SIZE

/**
 * database config
 */
if($_SERVER['SERVER_NAME']=='localhost'){

    //datbase config for local server
    define('HOSTNAME', 'localhost');
    define('DBNAME', 'bulsu_db');
    define('DBUSER', 'root');
    define('DBPASS', '1234');
    define('DBDRIVER', 'mysql');
    define('ROOT', 'http://localhost/bulsu v1/public');
}
else{

    //database config for live server
    define('HOSTNAME', '');
    define('DBNAME', '');
    define('DBUSER', '');
    define('DBPASS', '');
    define('DBDRIVER', '');
    define('ROOT', 'http://');

}