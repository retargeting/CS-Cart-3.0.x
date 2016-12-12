{if $retargeting_set_email}
    <script>
        var _ra = _ra || {ldelim}{rdelim};
        if (_ra.ready !== undefined) {ldelim}
            _ra.setEmail({ldelim}
                "email": "{$retargeting_set_email}"
            {rdelim});
        {rdelim}
    </script>
{/if}



<script>
    var helpPages = "{$addons.retargeting.help_pages}";
    helpPages.split(",");
    var currentPage = window.location.pathname;
    for(var i = 0; i<helpPages.length; i++){ldelim}
        if(currentPage.indexOf(helpPages[i]) !== -1){ldelim}

            var _ra = _ra || {ldelim}{rdelim};

            _ra.visitHelpPageInfo = {ldelim}
                "visit" : true
            {rdelim}

            if (_ra.ready !== undefined) {ldelim}
                _ra.visitHelpPage();
            {rdelim}
            break;
        {rdelim}
    {rdelim}
</script>