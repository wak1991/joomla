<?php
/**
* @version      4.18.0 16.02.2018
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/

defined('_JEXEC') or die();

class JshoppingControllerOrders extends JControllerLegacy{

    function __construct( $config = array() ){
        parent::__construct( $config );
        $this->registerTask('add', 'edit');
        $this->registerTask('apply', 'save');
        checkAccessController("orders");
        addSubmenu("orders");
        JPluginHelper::importPlugin('jshoppingorder');
    }

    function display($cachable = false, $urlparams = false){
        $jshopConfig = JSFactory::getConfig();
        $mainframe = JFactory::getApplication();        
        $context = "jshopping.list.admin.orders";
        $limit = $mainframe->getUserStateFromRequest( $context.'limit', 'limit', $mainframe->getCfg('list_limit'), 'int' );
        $limitstart = $mainframe->getUserStateFromRequest( $context.'limitstart', 'limitstart', 0, 'int' );
        $id_vendor_cuser = getIdVendorForCUser();
        $client_id = $this->input->getInt('client_id',0);
        
        $status_id = $mainframe->getUserStateFromRequest( $context.'status_id', 'status_id', 0 );
        $year = $mainframe->getUserStateFromRequest( $context.'year', 'year', 0 );
        $month = $mainframe->getUserStateFromRequest( $context.'month', 'month', 0 );
        $day = $mainframe->getUserStateFromRequest( $context.'day', 'day', 0 );
        $notfinished = $mainframe->getUserStateFromRequest( $context.'notfinished', 'notfinished', $jshopConfig->order_notfinished_default);
        $text_search = $mainframe->getUserStateFromRequest( $context.'text_search', 'text_search', '' );
        $filter_order = $mainframe->getUserStateFromRequest($context.'filter_order', 'filter_order', "order_number", 'cmd');
        $filter_order_Dir = $mainframe->getUserStateFromRequest($context.'filter_order_Dir', 'filter_order_Dir', "desc", 'cmd');
        
        $filter = array("status_id"=>$status_id, 'user_id'=>$client_id, "year"=>$year, "month"=>$month, "day"=>$day, "text_search"=>$text_search, 'notfinished'=>$notfinished);
        
        if ($id_vendor_cuser){            
            $filter["vendor_id"] = $id_vendor_cuser;
        }
        
        $orders = JSFactory::getModel("orders");
        
        $total = $orders->getCountAllOrders($filter);        
        jimport('joomla.html.pagination');
        $pageNav = new JPagination($total, $limitstart, $limit);
        
        $_list_order_status = $orders->getAllOrderStatus();
        $list_order_status = array();
        foreach($_list_order_status as $v){
            $list_order_status[$v->status_id] = $v->name;
        }
        $rows = $orders->getAllOrders($pageNav->limitstart, $pageNav->limit, $filter, $filter_order, $filter_order_Dir);
        
        $lists['status_orders'] = JshopHelpersSelectOptions::getOrderStatus();       
        $lists['changestatus'] = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getOrderStatus(1) ,'status_id','class="chosen-select" style="width: 170px;" ','status_id','name', $status_id);
        $lists['notfinished'] = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getNotFinshed(), 'notfinished','class="chosen-select" style="width: 100px;" ','id','name', $notfinished);
        $lists['year'] = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getOrdersYears(), 'year', 'class="chosen-select" style="width: 80px;" ', 'id', 'name', $year);
        $lists['month'] = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getMonths(), 'month', 'class="chosen-select" style="width: 80px;" ', 'id', 'name', $month);
        $lists['day'] = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getDays(), 'day', 'class="chosen-select" style="width: 80px;" ', 'id', 'name', $day);
		
		$payments = JSFactory::getModel("payments");
        $payments_list = $payments->getListNamePaymens(0);
        
        $shippings = JSFactory::getModel("shippings");
        $shippings_list = $shippings->getListNameShippings(0);
        
        $show_vendor = $jshopConfig->admin_show_vendors;
        if ($id_vendor_cuser) $show_vendor = 0;
        $display_info_only_my_order = 0;
        if ($jshopConfig->admin_show_vendors && $id_vendor_cuser){
            $display_info_only_my_order = 1; 
        }
        
        $total = 0;
        foreach($rows as $k=>$row){
            if ($row->vendor_id>0){
                $vendor_name = $row->v_fname." ".$row->v_name;
            }else{
                $vendor_name = "-";
            }
            $rows[$k]->vendor_name = $vendor_name;
            
            $display_info_order = 1;
            if ($display_info_only_my_order && $id_vendor_cuser!=$row->vendor_id) $display_info_order = 0;
            $rows[$k]->display_info_order = $display_info_order;
            
            $blocked = 0;
            if (orderBlocked($row) || !$display_info_order) $blocked = 1;
            $rows[$k]->blocked = $blocked;
			
			$rows[$k]->payment_name = $payments_list[$row->payment_method_id];
            $rows[$k]->shipping_name = $shippings_list[$row->shipping_method_id];
			if ($row->currency_exchange==0){
				$row->currency_exchange = 1;
			}
            $total += $row->order_total / $row->currency_exchange;
        }

        $dispatcher = JDispatcher::getInstance();
        $dispatcher->trigger('onBeforeDisplayListOrderAdmin', array(&$rows));
		
		$view=$this->getView("orders", 'html');
        $view->setLayout("list");
        $view->assign('rows', $rows); 
        $view->assign('lists', $lists); 
        $view->assign('pageNav', $pageNav); 
        $view->assign('text_search', $text_search); 
        $view->assign('filter', $filter);        
        $view->assign('show_vendor', $show_vendor);
        $view->assign('filter_order', $filter_order);
        $view->assign('filter_order_Dir', $filter_order_Dir);
        $view->assign('list_order_status', $list_order_status);
        $view->assign('client_id', $client_id);
        $view->assign('total', $total);
        $view->sidebar = JHtmlSidebar::render();
        $view->_tmp_order_list_html_end = '';
        $dispatcher->trigger('onBeforeShowOrderListView', array(&$view));
		$view->displayList(); 
    }
    
    function show(){
        $order_id = $this->input->getInt("order_id");
        $jshopConfig = JSFactory::getConfig();
		
        $orders = JSFactory::getModel("orders");
        $order = JSFactory::getTable('order', 'jshop');
        $order->load($order_id);
        
		$order->prepareOrderPrint('order_show');
        
        $id_vendor_cuser = getIdVendorForCUser();
        
		$order->loadItemsNewDigitalProducts();
        $order_items = $order->getAllItems();
		
        if ($jshopConfig->admin_show_vendors){
            $tmp_order_vendors = $order->getVendors();
            $order_vendors = array();
            foreach($tmp_order_vendors as $v){
                $order_vendors[$v->id] = $v;
            }
        }

        $lists['status'] = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getOrderStatus(),'order_status','class = "inputbox" size = "1" id = "order_status"','status_id','name', $order->order_status);
        
        $tmp_fields = $jshopConfig->getListFieldsRegister();
        $config_fields = $tmp_fields["address"];
        $count_filed_delivery = $jshopConfig->getEnableDeliveryFiledRegistration('address');
        
        $display_info_only_product = 0;
        if ($jshopConfig->admin_show_vendors && $id_vendor_cuser){
            if ($order->vendor_id!=$id_vendor_cuser) $display_info_only_product = 1; 
        }
        
        $display_block_change_order_status = $order->order_created;        
        if ($jshopConfig->admin_show_vendors && $id_vendor_cuser){
            if ($order->vendor_id!=$id_vendor_cuser) $display_block_change_order_status = 0;
            foreach($order_items as $k=>$v){
                if ($v->vendor_id!=$id_vendor_cuser){
                    unset($order_items[$k]);
                }
            }
        }
        		
		$stat_download = $order->getFilesStatDownloads(1);
        
        $dispatcher = JDispatcher::getInstance();
        $dispatcher->trigger('onBeforeDisplayOrderAdmin', array(&$order, &$order_items));
        
        $print = $this->input->getInt("print");
        
        $view = $this->getView("orders", 'html');
        $view->setLayout("show");
        $view->assign('config', $jshopConfig); 
        $view->assign('order', $order); 
        $view->assign('order_history', $order->history);
        $view->assign('order_items', $order_items); 
        $view->assign('lists', $lists); 
        $view->assign('print', $print);
        $view->assign('config_fields', $config_fields);
        $view->assign('count_filed_delivery', $count_filed_delivery);
        $view->assign('display_info_only_product', $display_info_only_product);
        $view->assign('current_vendor_id', $id_vendor_cuser);
        $view->assign('display_block_change_order_status', $display_block_change_order_status);
        $view->_tmp_ext_discount = '';
        $view->_tmp_ext_shipping_package = '';
		$view->assign('stat_download', $stat_download);
        if ($jshopConfig->admin_show_vendors){ 
            $view->assign('order_vendors', $order_vendors);
        }
        $dispatcher->trigger('onBeforeShowOrder', array(&$view));
        $view->displayShow();
    }

    function printOrder(){
        $this->input->set("print", 1);
        $this->show();
    }
    
    function update_one_status(){
        $input = $this->input;
        $this->_updateStatus($input->getVar('order_id'),$input->getVar('order_status'),$input->getVar('status_id'),$input->getVar('notify',0),$input->getVar('comments',''),$input->getVar('include',''),1);
    }
    
    function update_status(){
        $input = $this->input;
        $this->_updateStatus($input->getVar('order_id'),$input->getVar('order_status'),$input->getVar('status_id'),$input->getVar('notify',0),$input->getVar('comments',''),$input->getVar('include',''),0);        
    }    
    
    function _updateStatus($order_id, $status, $status_id, $notify, $comments, $include, $view_order){
        $client_id = $this->input->getInt('client_id', 0);
		$sendmessage = $notify;
		
		$model = JSFactory::getModel('orderChangeStatus', 'jshop');
		$model->setData($order_id, $status, $sendmessage, $status_id, $notify, $comments, $include, $view_order);
		$model->setAppAdmin(1);
		$model->store();
		
		JSFactory::loadAdminLanguageFile();
        
        if ($view_order){
            $this->setRedirect("index.php?option=com_jshopping&controller=orders&task=show&order_id=".$order_id, _JSHOP_ORDER_STATUS_CHANGED);
        }else{
            $this->setRedirect("index.php?option=com_jshopping&controller=orders&client_id=".$client_id, _JSHOP_ORDER_STATUS_CHANGED);
		}
    }
    
    function finish(){
		$dispatcher = JDispatcher::getInstance();
		$jshopConfig = JSFactory::getConfig();
		
        $order_id = $this->input->getInt("order_id");
        $order = JSFactory::getTable('order', 'jshop');
        $order->load($order_id);
        $order->order_created = 1;
        $dispatcher->trigger('onBeforeAdminFinishOrder', array(&$order));
        $order->store();
		$order->updateProductsInStock(1);
        
        JSFactory::loadLanguageFile($order->getLang());
        $checkout = JSFactory::getModel('checkout', 'jshop');
        if ($jshopConfig->send_order_email){
            $checkout->sendOrderEmail($order_id, 1);
        }
        
        JSFactory::loadAdminLanguageFile();
        $this->setRedirect("index.php?option=com_jshopping&controller=orders", _JSHOP_ORDER_FINISHED);
    }

    function remove(){
		JSession::checkToken() or die('Invalid Token');
        $client_id = $this->input->getInt('client_id', 0);
        $cid = (array)$this->input->getVar("cid");
        JSFactory::getModel("orders")->deleteList($cid);
        $this->setRedirect("index.php?option=com_jshopping&controller=orders&client_id=".$client_id);
    }
    
    function edit(){
        $mainframe = JFactory::getApplication();
        $order_id = $this->input->getVar("order_id");
        $client_id = $this->input->getInt('client_id',0);
        $jshopConfig = JSFactory::getConfig();
        $orders = JSFactory::getModel("orders");
        $order = JSFactory::getTable('order', 'jshop');
        $order->load($order_id);        
        
        $id_vendor_cuser = getIdVendorForCUser();
        if ($jshopConfig->admin_show_vendors && $id_vendor_cuser){
            if ($order->vendor_id!=$id_vendor_cuser) {
                $mainframe->redirect('index.php', JText::_('ALERTNOTAUTH'));
                return 0;
            }
        }

        $order_items = $order->getAllItems();
        
        $select_language = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getLanguages(), 'lang', 'class = "inputbox" style="float:none"','language', 'name', $order->lang);
        
		$select_countries = JshopHelpersSelects::getCountry($order->country);
		$select_d_countries = JshopHelpersSelects::getCountry($order->d_country, 'class = "inputbox endes"', 'd_country');
		$select_titles = JshopHelpersSelects::getTitle($order->title);
		$select_d_titles = JshopHelpersSelects::getTitle($order->d_title, 'class = "inputbox endes"', 'd_title');
		$select_client_types = JshopHelpersSelects::getClientType($order->client_type);

        $order->prepareBirthdayFormat();
        
        $tmp_fields = $jshopConfig->getListFieldsRegister();
        $config_fields = $tmp_fields["address"];
        $count_filed_delivery = $jshopConfig->getEnableDeliveryFiledRegistration('address');
        
		$order->client_type_name = $order->getClientTypeName();
        $order->payment_name = $order->getPaymentName();
        $order->order_tax_list = $order->getTaxExt();
        $order->coupon_code = $order->getCouponCode();
        if (!$order->order_id){
            $order->display_price = $jshopConfig->display_price_front;
        }

        
        $_currency = JSFactory::getModel("currencies");
        $currency_list = $_currency->getAllCurrencies();
        $order_currency = 0;
        foreach($currency_list as $k=>$v){
            if ($v->currency_code_iso==$order->currency_code_iso) $order_currency = $v->currency_id;
        }
        $select_currency = JHTML::_('select.genericlist', $currency_list, 'currency_id','class = "inputbox"','currency_id','currency_code', $order_currency);
        $display_price_select = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getPriceType(), 'display_price', 'onchange="updateOrderTotalValue();"', 'id', 'name', $order->display_price);
        $shippings_select = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getShippings(), 'shipping_method_id', 'onchange="order_shipping_calculate()"', 'shipping_id', 'name', $order->shipping_method_id);
        $payments_select = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getPayments(), 'payment_method_id', 'onchange="order_payment_calculate()"', 'payment_id', 'name', $order->payment_method_id);
        $delivery_time_select = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getDeliveryTimes('- - -'), 'order_delivery_times_id', '', 'id', 'name', $order->delivery_times_id);
        $users_list_select = JHTML::_('select.genericlist', JshopHelpersSelectOptions::getUsers(0, 1), 'user_id', 'onchange="updateBillingShippingForUser(this.value);"', 'user_id', 'name', $order->user_id);
        
        filterHTMLSafe($order);
        foreach($order_items as $k=>$v){
            JFilterOutput::objectHTMLSafe($order_items[$k]);
        }

		JHTML::_('behavior.calendar');
		
        $view = $this->getView("orders", 'html');
        $view->setLayout("edit");
        $view->assign('config', $jshopConfig); 
        $view->assign('order', $order);  
        $view->assign('order_items', $order_items); 
        $view->assign('config_fields', $config_fields);
        $view->assign('etemplatevar', '');
        $view->assign('count_filed_delivery', $count_filed_delivery);
        $view->assign('order_id',$order_id);
        $view->assign('select_countries', $select_countries);
        $view->assign('select_d_countries', $select_d_countries);
		$view->assign('select_titles', $select_titles);
        $view->assign('select_d_titles', $select_d_titles);
        $view->assign('select_client_types', $select_client_types);
        $view->assign('select_currency', $select_currency);
        $view->assign('display_price_select', $display_price_select);
        $view->assign('shippings_select', $shippings_select);
        $view->assign('payments_select', $payments_select);
        $view->assign('select_language', $select_language);
        $view->assign('delivery_time_select', $delivery_time_select);
        $view->assign('users_list_select', $users_list_select);
        $view->assign('client_id', $client_id);
        $dispatcher = JDispatcher::getInstance();
        $dispatcher->trigger('onBeforeEditOrders', array(&$view));
        $view->displayEdit();
    }

    function save(){
		JSession::checkToken() or die('Invalid Token');
        $client_id = $this->input->getInt('client_id', 0);
        $model = JSFactory::getModel("orders");
        $post = $model->getPrepareDataSave($this->input);
        $order = $model->save($post);        
        if ($this->getTask()=='apply'){
            $this->setRedirect("index.php?option=com_jshopping&controller=orders&task=edit&order_id=".$order->order_id.'&client_id='.$client_id);
        }else{
            $this->setRedirect("index.php?option=com_jshopping&controller=orders&client_id=".$client_id);
        }        
    }
    
	function stat_file_download_clear(){        
        $order_id = $this->input->getInt("order_id");
        $order = JSFactory::getTable('order', 'jshop');
        $order->load($order_id);
        $order->file_stat_downloads = '';
        $order->store();
        $this->setRedirect("index.php?option=com_jshopping&controller=orders&task=show&order_id=".$order_id);
    }
    
    function send(){
        $order_id = $this->input->getInt("order_id");
        $back = $this->input->getVar("back");
        $order = JSFactory::getTable('order', 'jshop');
        $order->load($order_id);
        JSFactory::loadLanguageFile($order->getLang());
        JSFactory::getLang($order->getLang());
        $checkout = JSFactory::getModel('checkout', 'jshop');
        $checkout->sendOrderEmail($order_id, 1);
        JSFactory::loadAdminLanguageFile();
        if ($back=='orders'){
            $backurl = 'index.php?option=com_jshopping&controller=orders';
        }else{
            $backurl = "index.php?option=com_jshopping&controller=orders&task=show&order_id=".$order_id;
        }
        $this->setRedirect($backurl, _JSHOP_MAIL_HAS_BEEN_SENT);
    }
    
    function transactions(){
        $order_id = $this->input->getInt("order_id");
        $jshopConfig = JSFactory::getConfig();
        
        $orders = JSFactory::getModel("orders");
        $order = JSFactory::getTable('order', 'jshop');
        $order->load($order_id);
        $rows = $order->getListTransactions();
        
        $_list_order_status = $orders->getAllOrderStatus();
        $list_order_status = array();
        foreach($_list_order_status as $v){
            $list_order_status[$v->status_id] = $v->name;
        }
        
        $view = $this->getView("orders", 'html');
        $view->setLayout("transactions");
        $view->assign('config', $jshopConfig); 
        $view->assign('order', $order);
        $view->assign('rows', $rows);
        $view->assign('list_order_status', $list_order_status);
        
        $dispatcher = JDispatcher::getInstance();
        $dispatcher->trigger('onBeforeShowOrderTransactions', array(&$view));
        $view->displayTrx();   
    }
    
    function cancel(){
        $client_id = $this->input->getInt('client_id',0);
        $this->setRedirect("index.php?option=com_jshopping&controller=orders&client_id=".$client_id);
    }
    
    function loadtaxorder(){
        $post = $this->input->post->getArray();
        $data_order = (array)$post['data_order'];
        $products = (array)$data_order['product'];

        $orders = JSFactory::getModel("orders");
        $taxes_array = $orders->loadtaxorder($data_order, $products);
        print json_encode($taxes_array);
        die;
    }
    
    function loadshippingprice(){
        $post = $this->input->post->getArray();
        $data_order = (array)$post['data_order'];
        $products = (array)$data_order['product'];

        $orders = JSFactory::getModel("orders");
        $prices = $orders->loadshippingprice($data_order, $products);
        print json_encode($prices);
        die;
    }
    
    function loadpaymentprice(){
        $post = $this->input->post->getArray();
        $data_order = (array)$post['data_order'];
        $products = (array)$data_order['product'];

        $orders = JSFactory::getModel("orders");
        $price = $orders->loadpaymentprice($data_order, $products);
        $prices = array('price'=>$price);
        print json_encode($prices);
        die;
    }

    function loaddiscountprice(){
        $post = $this->input->post->getArray();
        $data_order = (array)$post['data_order'];
        $products = (array)$data_order['product'];

        $orders = JSFactory::getModel("orders");
        $price = $orders->loaddiscountprice($data_order, $products);
        $prices = array('price'=>$price);
        print json_encode($prices);
        die;
    }
    
}