{if $addons.retargeting.retargeting_domain_api != ""}

    <script type="text/javascript">
        {literal}
        (function(){
            ra_key = {/literal}"{$addons.retargeting.retargeting_domain_api}"{literal};
            ra_params = {
                add_to_cart_button_id: ".ty-btn__add-to-cart",
                price_label_id: ".new-price",
            };
            var ra = document.createElement("script"); ra.type ="text/javascript"; ra.async = true; ra.src = ("https:" ==
                document.location.protocol ? "https://" : "http://") + "tracking.retargeting.biz/v3/rajs/" + ra_key + ".js";
            var s = document.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ra,s);})();
        {/literal}
    </script>

{else}

    <script type="text/javascript">
        console.info("Retargeting Tracker Error: Please set the Domain API Key from your Retargeting Account.");
    </script>

{/if}