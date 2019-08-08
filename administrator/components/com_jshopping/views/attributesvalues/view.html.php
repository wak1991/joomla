<?php
/**
* @version      4.16.3 28.07.2017
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die();

class JshoppingViewAttributesvalues extends JViewLegacy
{
    function displayList($tpl=null){        
        JToolBarHelper::title( _JSHOP_LIST_ATTRIBUT_VALUES, 'generic.png' );
        JToolBarHelper::custom( "back", 'arrow-left', 'arrow-left', _JSHOP_RETURN_TO_ATTRIBUTES, false);
        JToolBarHelper::addNew();        
        JToolBarHelper::deleteList(_JSHOP_DELETE_ITEM_CAN_BE_USED);
        parent::display($tpl);
	}
    
    function displayEdit($tpl=null){
        JToolBarHelper::title( $temp = ($this->attributValue->value_id) ? (_JSHOP_EDIT_ATTRIBUT_VALUE.' / '.$this->attributValue->{JSFactory::getLang()->get('name')}) : (_JSHOP_NEW_ATTRIBUT_VALUE), 'generic.png' ); 
        JToolBarHelper::save();
        JToolBarHelper::spacer();
        JToolBarHelper::apply();
        JToolBarHelper::spacer();
        JToolBarHelper::cancel();
        parent::display($tpl);
    }
}