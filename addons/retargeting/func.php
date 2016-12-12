<?php

if ( !defined('AREA') ) { die('Access denied'); }

function fn_retargeting_get_tracking_code($company_id = null) {
    if (PRODUCT_TYPE != 'ULTIMATE') {
        $company_id = null;
    }

    return CSettings::instance()->get_value('retargeting_domain_api', 'retargeting_tracker', $company_id);
}

?>