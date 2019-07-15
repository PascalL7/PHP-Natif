<?php

namespace Model\Manager;
use \PDO;

/**
 * Class Manager
 */
class Manager
{
    private $db = 'mysql';
    private $host = 'localhost';
    private $dbName = 'db_crud_mvc_natif';
    private $port = '8889';
    private $charset = 'utf8';
    private $userName = 'root';
    private $password = 'root';

    /**
     * @return PDO
     */
    protected function dbConnect()
    {
        $dbConnect = new PDO($this->db . ':host=' . $this->host . ';dbname=' . $this->dbName . ';port=' . $this->port . ';charset=' . $this->charset ,  $this->userName , $this->password);

        return $dbConnect;
    }
}
