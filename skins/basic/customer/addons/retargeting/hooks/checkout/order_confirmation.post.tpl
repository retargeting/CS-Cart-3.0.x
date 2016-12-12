<script>
    var _ra = _ra || {ldelim}{rdelim};

    {foreach from=$orders_info item="retargeting_order_info"}
    _ra.saveOrderInfo = {ldelim}
        "order_no"      : "{php}{$retargeting_order_info.order_id}{/php}",
        "lastname"      : "{php}{$retargeting_order_info.b_lastname}{/php}",
        "firstname"     : "{php}{$retargeting_order_info.b_firstname}{/php}",
        "email"         : "{php}{$retargeting_order_info.email}{/php}",
        "phone"         : "{php}{$retargeting_order_info.b_phone}{/php}",
        "state"         : "{php}{$retargeting_order_info.b_state}{/php}",
        "city"          : "{php}{$retargeting_order_info.b_city}{/php}",
        "address"       : "{php}{$retargeting_order_info.b_address}{/php}",
        "discount_code" : "",
        "discount"      : "{php}{$retargeting_order_info.discount}{/php}",
        "shipping"      : "{php}{$retargeting_order_info.shipping_cost}{/php}",
        "rebates"       : 0,
        "fees"          : 0,
        "total"         : "{php}{$retargeting_order_info.total}{/php}"
    {rdelim};


    _ra.saveOrderProducts = [
        {foreach from=$order_info.items item="product" key="key"}
        {ldelim}
            "id": "{php}{$product.product_id}{/php}",
            "quantity": "{php}{$product.amount}{/php}",
            "price": "{php}{$product.price}{/php}",
            "variation_code": false
        {rdelim},
        {/foreach}
        ]
    {/foreach}
    if( _ra.ready !== undefined ){ldelim}
        _ra.saveOrder(_ra.saveOrderInfo, _ra.saveOrderProducts);
    {rdelim}

</script>