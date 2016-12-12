{literal}
<script>
    var _ra = _ra || {};
    _ra.sendCategoryInfo = {
        "id": {/literal}{$catid}{literal},
        "name" : {/literal}'{$catn}'{literal},
        "parent": false,
        "breadcrumb": []
    }
    if (_ra.ready !== undefined) {
        _ra.sendCategory(_ra.sendCategoryInfo);
    }
</script>
{/literal}