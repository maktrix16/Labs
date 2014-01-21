<?php
class DB {
	private $driver;
	
	public function __construct($driver, $hostname, $username, $password, $database) {
		if (file_exists(DIR_DATABASE . $driver . '.php')) {
			require_once(VQMod::modCheck(DIR_DATABASE . $driver . '.php'));
		} else {
			exit('Error: Could not load database file ' . $driver . '!');
		}
				
		$this->driver = new $driver($hostname, $username, $password, $database);
	}
		
  	public function query($sql) {

			
			
		$sqlCacheTime = 10; 	//Cache time in minutes			
		// Consider access to your cache files - if someone guessed the name (unlikely) personal information could be exposed - consider setting file permissions/htaccess to block public access	

		
		
		// Start of script, no need to edit
		$sqlCacheTime *= 60;
		if (strtolower(substr($sql, 0, 6)) == 'select') {
			if (session_id() && !isset($_SESSION['baSQLCache'])) {
				if ((stripos($sql, 'product') !== false && stripos($sql, 'quantity') !== false) || (stripos($sql, 'customer_id') !== false)) {
					return $this->driver->query($sql);
				} else {
					$file = DIR_CACHE.'sqlcache.'.md5($sql);
					if (file_exists($file)) {
						if (time() - $sqlCacheTime > filemtime($file)) {
							unlink($file);
							$queryresult = $this->driver->query($sql);
							$baFW = fopen($file, 'w');
							fwrite($baFW, serialize($queryresult));
							fclose($baFW);
							return $queryresult;
						} else {
							$queryresult = file_get_contents($file);
							$queryresult = unserialize($queryresult);
							return $queryresult;
						}
					} else {
						$queryresult = $this->driver->query($sql);
						$baFW = fopen($file, 'w');
						fwrite($baFW, serialize($queryresult));
						fclose($baFW);
						return $queryresult;
					}
				}
			}
		}
		return $this->driver->query($sql);
  	}
	
	public function escape($value) {
		return $this->driver->escape($value);
	}
	
  	public function countAffected() {
		return $this->driver->countAffected();
  	}

  	public function getLastId() {
		return $this->driver->getLastId();
  	}	
}
?>