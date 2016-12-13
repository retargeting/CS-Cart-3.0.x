<script>
    var product_stock = {if ((($product_amount > 0 && $product_amount >= $product.min_qty) || $product.tracking == "D") &&
    $settings.General.inventory_tracking == "Y" && $settings.General.allow_negative_amount != "Y")

    || ($settings.General.inventory_tracking == "Y" && $settings.General.allow_negative_amount == "Y")
            }
        1
    {elseif $details_page && ($product_amount <= 0 || $product_amount < $product.min_qty) && $settings.General.inventory_tracking == "Y" && $settings.General.allow_negative_amount != "Y"}
    0
    {/if};

    var _ra = _ra || {ldelim}{rdelim};
    _ra.sendProductInfo = {ldelim}
        "id": "{php}{$product.product_id}{/php}",
        "name": "{php}{$product.product}{/php}",
        "url": "{$config.current_location}/{$config.current_url|fn_url}",
        "img": "{$config.current_location}{$product.main_pair.detailed.image_path}",
        {if $ra_oldPrice == $product.price or not is_numeric($ra_oldPrice)}
        "price": "{php}{if $product.list_price > $product.price}{$product.list_price}{else}{$product.price}{/if}{/php}",
        "promo": "{php}{if $product.list_price > $product.price}{$product.price}{else}0{/if}{/php}",
        {else}
        "price": "{php}{$ra_oldPrice}{/php}",
        "promo": "{php}{$product.price}{/php}",
        {/if}
        "brand": false,

        "category": [{ldelim}
            "id": "{php}{$catid}{/php}",
            "name": "{php}{$product.main_category|fn_get_category_name}{/php}",
            "parent": false,
            "breadcrumb": []
            {rdelim}],
        "inventory": {ldelim}
            "variations": false,
            "stock": "product_stock"
            {rdelim}
        {rdelim};
    if (_ra.ready !== undefined) {ldelim}
        _ra.sendProduct(_ra.sendProductInfo);
        {rdelim}

    jQuery(document).ready(function() {ldelim}
        $('.cm-image-wrap').click(function() {ldelim}
            _ra.clickImage('{$product.product_id}');
        {rdelim});
    {rdelim});


    jQuery(document).ready(function() {ldelim}
        jQuery('[id^="button_cart"]').click(function() {ldelim}
            _ra.addToCart('{$product.product_id}', 1, false, function() {ldelim}
                console.log('cart')
            {rdelim});
        {rdelim});
    {rdelim});

        if(typeof FB !== "undefined"){ldelim}
            FB.Event.subscribe('edge.create', function(){ldelim}
                _ra.likeFacebook('{$product.product_id}');
            {rdelim})
        }
</script>
