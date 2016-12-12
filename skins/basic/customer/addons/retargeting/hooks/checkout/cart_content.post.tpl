{if $cart_products}
    <script>
        var _ra = _ra || {ldelim}{rdelim};
            _ra.checkoutIdsInfo = {$checkoutid};

        if (_ra.ready !== undefined) {ldelim}
                _ra.checkoutIds(_ra.checkoutIdsInfo);
            {rdelim}
    </script>
{/if}
{if $addons.retargeting.cart_url !== ""}
    <script>
        var _ra = _ra || {ldelim}{rdelim};
        _ra.setCartUrlInfo = {ldelim}
            "url": "{$addons.retargeting.cart_url}"
        {rdelim};

        if (_ra.ready !== undefined) {ldelim}
            _ra.setCartUrl(_ra.setCartUrlInfo.url);
        {rdelim}
    </script>
{else}
    <script type="text/javascript">
        console.info("Retargeting Tracker Error: Please set the Cart URL in Retargeting Tracker settings.");
    </script>
{/if}