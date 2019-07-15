<?php

require('Model/Products.php');

use Model\Products\Products;

function listVegetables()
{
    $products = new Products();
    $query = $products->getVegetables();

    require('View/indexView.php');
}

