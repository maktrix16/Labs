<?php
$key = 'cookie'; 					// Enter your access key here
$cachePath = 'system/cache/';			// Path to cache folder, relative to this file
$sqlCachePath = 'system/cache/';	// Path to SQL cache folder, relative to this file

if ($_GET['cache'] && $_GET['key'] == $key) {
	$time = $_GET['cache'] * 60;
		foreach (glob($cachePath."*.bac") as $files) {
			if (time() - $time > filemtime($files)) {
				unlink($files);
			}
	}
}

if ($_GET['sqlcache'] && $_GET['key'] == $key) {
	$time = $_GET['sqlcache'] * 60;
		foreach (glob($sqlCachePath."sqlcache.*") as $files) {
			if (time() - $time > filemtime($files)) {
				unlink($files);
			}
	}
}
?>