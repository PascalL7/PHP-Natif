<?php

namespace Model\Products;

use Model\Manager\Manager;
use \Exception;

require('Model/Manager.php');

/**
 * Class Products
 */
class Products extends Manager
{

    private $dbConnect;

    /**
     * @return false|PDOStatement
     * @throws Exception
     */
    function getVegetables()
    {
        try {
            $this->dbConnect = new Manager();
            $dbConnect = $this->dbConnect->dbConnect();

        } catch (Exception $e) {
            throw new Exception($e->getMessage());
        }

        $query = $dbConnect->query('SELECT name, description FROM products ORDER BY name DESC LIMIT 0, 5');

        return $query;
    }
}
