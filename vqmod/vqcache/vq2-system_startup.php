<?php
// Error Reporting
error_reporting(E_ALL);

// Check Version
if (version_compare(phpversion(), '5.1.0', '<') == true) {
	exit('PHP5.1+ Required');
}

// Register Globals
if (ini_get('register_globals')) {
	ini_set('session.use_cookies', 'On');
	ini_set('session.use_trans_sid', 'Off');
		
	session_set_cookie_params(0, '/');
	session_start();
	
	$globals = array($_REQUEST, $_SESSION, $_SERVER, $_FILES);

	foreach ($globals as $global) {
		foreach(array_keys($global) as $key) {
			unset(${$key}); 
		}
	}
}


			
// Start of Cache Script (c) blackaqua 2012 - ocsupport@blackaqua.com

// Configuration Variables here
// No error checking yet, be sure to enter the correct settings

$baCacheOn	= TRUE;			// Turn the cache on (TRUE) or off (FALSE) Default: True!
$baCacheLog = FALSE;		// Log cache run time in HTML source code - Rough guide & depends on load at measurement time. Default: FALSE (disable). Leaving on will stop file uploads working (bug).
$baCacheGzip = 2;			// Compress content to reduce bandwidth (Requires zlib, default: 2). 2 = set via php ini, 1 = use inline compression. 2 is preferred, use 1 if you are in a restricted environment. Use FALSE to turn off
$baCacheShowAdmin = TRUE;	// Show the cache admin panel when browsing store front while logged in as admin user (default: TRUE). Use FALSE to turn off

$baCacheAlt = FALSE;		// Set the method of caching (default: FALSE)
							// TRUE: Probability, reload cache as probability
							// FALSE: Time, reload cache after a specified time has elapsed (recommended)
$baCacheProb = 5;			// Probability Setting to reload cache (default: 5). (eg 1 = 1 in 100; 10 = 1 in 10; 50 = 1 in 2 etc)
$baCacheTime = 10080;		// File Cache time in MINUTES (default: 10080 (7 days))

$baCacheExcl = 1;			// Set FALSE to cache everything, set to a value of 1 or 2 exclude your restrictions.
							// 1 = Find value and exclude all matches. enter everything after domain.com - eg http://www.store.com/index.php?route=information/contact would become index.php?route=information/contact
							// 2 = Use Regex to exclude more specific matches (use value 1 if you don't know what this is), at expense to page loading time. You need to escape your expressions eg with #expression#, no error checking is performed

//Enter your links to exclude here, with each enclosed in single quotes ('), seperated by a comma (,).
$baLinkExcl = array('index.php?route=information/contact/captcha','index.php?route=product/product/captcha','index.php?route=account/login_popup','index.php?route=account/register_popup','index.php?route=account/login','index.php?route=account/register','register','login','login#_=_');

$baUserExcl = FALSE;		// Skip caching files for certain users (set TRUE) - eg if you are being violated by search engine crawlers on little used pages.
// The below user agents will not generate a page cache. Consider the fact that these are actually useful in building your page cache though...
$baUserAgents = array('Baidu', 'Google', 'bingbot', 'msnbot', 'Yahoo', 'Yandex', 'ia_archiver');

//////////////////////////////////////
// Start of Script (No need to edit)
//////////////////////////////////////
if ($baUserExcl == true && $baCacheOn == true) {
	foreach ($baUserAgents as $value) {
		if (stripos($_SERVER['HTTP_USER_AGENT'], $value)) {
			$baCacheOn = false;
		}
	}
}

if ($baCacheExcl != false) {
	// if ($baCacheExcl == 1 && in_array($_SERVER['REQUEST_URI'],$baLinkExcl)) { doesn't work for partial strings pfffft
	if ($baCacheExcl == 1) {
		foreach ($baLinkExcl as $pattern) {
			if (stripos($_SERVER['REQUEST_URI'], $pattern)) {
				$baCacheOn = false;
			}
		}
	} elseif ($baCacheExcl == 2) {
		foreach ($baLinkExcl as $pattern) {
			if (preg_match($pattern, $_SERVER['REQUEST_URI'])) {
				$baCacheOn = false;
			}
		}
	}
}

define('baCacheShowAdmin', $baCacheShowAdmin);

if ($baCacheOn == true) {
	// Measure script start time - being honest here as we're including cache calculations in total page time
	$baBenchStart = microtime(true);
	
	//Convert to seconds
	$baCacheTime *= 60;

	$baURL = md5(str_ireplace('www.', '', $_SERVER['HTTP_HOST']).$_SERVER['REQUEST_URI']);
	define('baURL', $baURL);
	
	if ($baCacheGzip == '2') { ini_set("zlib.output_compression", "On"); } elseif ($baCacheGzip == '1') { ob_start("ob_gzhandler"); } 

	if (!session_id()) {
		ini_set('session.use_cookies', 'On');
		ini_set('session.use_trans_sid', 'Off');
		
		session_set_cookie_params(0, '/');
		session_start();
	}
	if (!empty($_SESSION['customer_id']) ||
		!empty($_SESSION['user_id']) ||
		!empty($_SESSION['cart']) ||
		!empty($_SESSION['wish_list']) ||
		!empty($_SESSION['compare']) ||
		!empty($_SESSION['success']) ||
		!empty($_SESSION['affiliate_id']) ||
		!empty($_POST)) {
	// Later
	} else {
			
		if (!isset($_SESSION['language']) && !isset($_SESSION['currency'])) {
			if (isset($_COOKIE['language']) && isset($_COOKIE['currency'])) {
				$baFileSearch = DIR_CACHE.md5($_COOKIE['language'].$_COOKIE['currency']).'-'.baURL.'*';
			} else {
				$baFileSearch = DIR_CACHE.md5('nothing').'-'.baURL.'*';
			}
		} else {
			$baFileSearch = DIR_CACHE.@md5($_SESSION['language'].$_SESSION['currency']).'-'.baURL.'*';
		}
		$baSearchResult = glob($baFileSearch);

		if ($baSearchResult) {
			$baFile = $baSearchResult[0];
			
			if ($baCacheAlt == true) {
				$baCacheRand = mt_rand(1,100);
				if ($baCacheRand <= $baCacheProb) {
					if (!headers_sent()) { header('Content-Type: text/html; charset=utf-8'); }
					readfile($baFile);
					$baBenchFinish = microtime(true);
					$baBenchTime = round($baBenchFinish - $baBenchStart, 6);
					if($baCacheLog == true) { echo "\n<!-- Cached execution time: $baBenchTime seconds (Probability)-->"; }
					if ($baCacheGzip == '1') { ob_end_flush(); }
					exit;
				}  else {
					$baFile = str_replace('*', '', $baFileSearch);
					ob_start();
					$baCaching = true;
				}
			} else {
				if (time() - $baCacheTime < filemtime($baFile)) {
					if (!headers_sent()) { header('Content-Type: text/html; charset=utf-8'); }
					readfile($baFile);
					$baBenchFinish = microtime(true);
					$baBenchTime = round($baBenchFinish - $baBenchStart, 6);
					if($baCacheLog == true) { echo "\n<!-- Cached execution time: $baBenchTime seconds -->"; }
					if ($baCacheGzip == '1') { ob_end_flush(); }
					exit;
				} else {
					$baFile = str_replace('*', '', $baFileSearch);
					ob_start();
					$baCaching = true;
				}
			}
		} else {
			$baFile = str_replace('*', '', $baFileSearch);
			ob_start();
			$baCaching = true;
		}
	}
}

// Magic Quotes Fix
if (ini_get('magic_quotes_gpc')) {
	function clean($data) {
   		if (is_array($data)) {
  			foreach ($data as $key => $value) {
    			$data[clean($key)] = clean($value);
  			}
		} else {
  			$data = stripslashes($data);
		}
	
		return $data;
	}			
	
	$_GET = clean($_GET);
	$_POST = clean($_POST);
	$_REQUEST = clean($_REQUEST);
	$_COOKIE = clean($_COOKIE);
}

if (!ini_get('date.timezone')) {
	date_default_timezone_set('UTC');
}

// Windows IIS Compatibility  
if (!isset($_SERVER['DOCUMENT_ROOT'])) { 
	if (isset($_SERVER['SCRIPT_FILENAME'])) {
		$_SERVER['DOCUMENT_ROOT'] = str_replace('\\', '/', substr($_SERVER['SCRIPT_FILENAME'], 0, 0 - strlen($_SERVER['PHP_SELF'])));
	}
}

if (!isset($_SERVER['DOCUMENT_ROOT'])) {
	if (isset($_SERVER['PATH_TRANSLATED'])) {
		$_SERVER['DOCUMENT_ROOT'] = str_replace('\\', '/', substr(str_replace('\\\\', '\\', $_SERVER['PATH_TRANSLATED']), 0, 0 - strlen($_SERVER['PHP_SELF'])));
	}
}

if (!isset($_SERVER['REQUEST_URI'])) { 
	$_SERVER['REQUEST_URI'] = substr($_SERVER['PHP_SELF'], 1); 
	
	if (isset($_SERVER['QUERY_STRING'])) { 
		$_SERVER['REQUEST_URI'] .= '?' . $_SERVER['QUERY_STRING']; 
	} 
}

if (!isset($_SERVER['HTTP_HOST'])) {
	$_SERVER['HTTP_HOST'] = getenv('HTTP_HOST');
}

// Helper
require_once(VQMod::modCheck(DIR_SYSTEM . 'helper/json.php')); 
require_once(VQMod::modCheck(DIR_SYSTEM . 'helper/utf8.php')); 

// Engine
require_once(VQMod::modCheck(DIR_SYSTEM . 'engine/action.php')); 
require_once(VQMod::modCheck(DIR_SYSTEM . 'engine/controller.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'engine/front.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'engine/loader.php')); 
require_once(VQMod::modCheck(DIR_SYSTEM . 'engine/model.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'engine/registry.php'));

// Common
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/cache.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/url.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/config.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/db.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/document.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/encryption.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/image.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/language.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/log.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/mail.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/pagination.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/request.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/response.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/session.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/template.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/openbay.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/play.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/ebay.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/amazon.php'));
require_once(VQMod::modCheck(DIR_SYSTEM . 'library/amazonus.php'));
?>