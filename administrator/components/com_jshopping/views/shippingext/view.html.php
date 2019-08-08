<?php
/**
* @version      4.16.3 28.07.2017
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die();

class JshoppingViewShippingext extends JViewLegacy{
    
    function displayList($tpl=null){        
        JToolBarHelper::title( _JSHOP_SHIPPING_EXT_PRICE_CALC, 'generic.png' );        
        JToolBarHelper::custom( "back", 'folder', 'folder', _JSHOP_LIST_SHIPPINGS, false);        
        parent::display($tpl);
    }
    
    function displayEdit($tpl=null){        
        JToolBarHelper::title( _JSHOP_SHIPPING_EXT_PRICE_CALC, 'generic.png' );        
        JToolBarHelper::save();
        JToolBarHelper::spacer();
        JToolBarHelper::cancel();        
        parent::display($tpl);
    }
}