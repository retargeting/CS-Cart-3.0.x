<?php

if ( !defined('AREA') ) { die('Access denied'); }

if($mode == 'complete'){
    $orders_info = array();
    /* @var $view \SmartyEngine_Core */
    $order_info = $view->get_template_vars('order_info');
    $orders_info[0] = $order_info;

    $view->assign('orders_info', $orders_info);
}
if($mode == 'checkout' || $mode == 'cart'){
    $checkoutIds = array();

    foreach ($_SESSION['cart']['products'] as $product) {
        $checkoutIds[] = $product['product_id'];
    }
    $checkoutId = json_encode($checkoutIds);

    $view->assign('checkoutid', $checkoutId);
}

?>