<?php

if ( !defined('AREA') ) { die('Access denied'); }

if($mode == 'view' && !empty($_REQUEST['product_id'])){
    $product_id = $_REQUEST['product_id'];
    if (!empty($product_id)) {
        $catId = db_get_field('SELECT category_id FROM ?:products_categories WHERE product_id = ?i LIMIT 1', $product_id);
        if($catId){
            $view->assign('catid',$catId);
        }else {
            $catId = 0;
            $view->assign('catid',$catId);
        }
        list($products) = fn_get_products(array('pid'=>$product_id));
        (!empty($products[0]['price'])) ? $view->assign('ra_oldPrice', $products[0]['price']) : "";
    }
}

?>