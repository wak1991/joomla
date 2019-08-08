<?php 
/**
* @version      4.15.0 03.11.2016
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die();

$rows=$this->rows;
$pageNav=$this->pageNav;
$i=0;
?>
<div id="j-sidebar-container" class="span2">
    <?php echo $this->sidebar; ?>
</div>
<div id="j-main-container" class="span10">
<?php displaySubmenuOptions();?>
<form action="index.php?option=com_jshopping&controller=coupons" method="post" name="adminForm" id="adminForm">
<?php print $this->tmp_html_start?>
<div id="filter-bar" class="btn-toolbar">

    <?php print $this->tmp_html_filter?>

    <div class="filter-search btn-group pull-left">
        <input type="text" id="text_search" name="text_search" placeholder="<?php print _JSHOP_SEARCH?>" value="<?php echo htmlspecialchars($this->text_search);?>" />
    </div>

    <div class="btn-group pull-left hidden-phone">
        <button class="btn hasTooltip" type="submit" title="<?php print _JSHOP_SEARCH?>">
            <i class="icon-search"></i>
        </button>
        <button class="btn hasTooltip" onclick="document.id('text_search').value='';this.form.submit();" type="button" title="<?php print _JSHOP_CLEAR?>">
            <i class="icon-remove"></i>
        </button>
    </div>

</div>
<?php
if (isset($this->ext_coupon_html_befor_list)){
    print $this->ext_coupon_html_befor_list;
}
?>

<table class="table table-striped">
<thead>
  <tr>
    <th class="title" width ="10">
      #
    </th>
    <th width="20">
      <input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
    </th>
    <th align = "left">
        <?php echo JHTML::_('grid.sort', _JSHOP_CODE, 'C.coupon_code', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
    <th width = "200" align = "left">
        <?php echo JHTML::_('grid.sort', _JSHOP_VALUE, 'C.coupon_value', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
    <th width = "80">
        <?php echo JHTML::_('grid.sort', _JSHOP_START_DATE_COUPON, 'C.coupon_start_date', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
    <th width = "80">
        <?php echo JHTML::_('grid.sort', _JSHOP_EXPIRE_DATE_COUPON, 'C.coupon_expire_date', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
    <th width = "80" class="center">
        <?php echo JHTML::_('grid.sort', _JSHOP_FINISHED_AFTER_USED, 'C.finished_after_used', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
    <th width = "80" class="center">
        <?php echo JHTML::_('grid.sort', _JSHOP_FOR_USER, 'C.for_user_id', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
    <th width = "80" class="center">
        <?php echo JHTML::_('grid.sort', _JSHOP_COUPON_USED, 'C.used', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
	<?php echo $this->tmp_extra_column_headers?>
    <th width = "50" class="center">
        <?php echo _JSHOP_PUBLISH;?>
    </th>
    <th width = "50" class="center">
        <?php echo _JSHOP_EDIT;?>
    </th>
    <th width = "40" class="center">
        <?php echo JHTML::_('grid.sort', _JSHOP_ID, 'C.coupon_id', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
  </tr>
</thead>  
<?php
foreach($rows as $row){
    $finished=0; $date=date('Y-m-d');
    if ($row->used) $finished=1;
    if ($row->coupon_expire_date < $date && $row->coupon_expire_date!='0000-00-00' ) $finished=1;
?>
  <tr class="row<?php echo $i % 2;?>" <?php if ($finished) print "style='font-style:italic; color: #999;'"?>>
   <td>
     <?php echo $pageNav->getRowOffset($i);?>
   </td>
   <td>
    <?php echo JHtml::_('grid.id', $i, $row->coupon_id);?>
   </td>
   <td>
     <a href="index.php?option=com_jshopping&controller=coupons&task=edit&coupon_id=<?php echo $row->coupon_id; ?>"><?php echo $row->coupon_code;?></a>
   </td>
   <td>
     <?php echo $row->coupon_value; ?>
     <?php if ($row->coupon_type==0) print "%"; else print $this->currency;?>
   </td>
   <td>
    <?php if ($row->coupon_start_date!='0000-00-00') print formatdate($row->coupon_start_date);?>
   </td>
   <td>
    <?php if ($row->coupon_expire_date!='0000-00-00')  print formatdate($row->coupon_expire_date);?>
   </td>
   <td class="center">
    <?php if ($row->finished_after_used) print _JSHOP_YES; else print _JSHOP_NO?>
   </td>
   <td class="center">
    <?php if ($row->for_user_id) print $row->f_name." ".$row->l_name; else print _JSHOP_ALL;?>
   </td>
   <td class="center">
    <?php if ($row->used) print _JSHOP_YES; else print _JSHOP_NO?>
   </td>
   <?php echo $row->tmp_extra_column_cells?>
   <td class="center">     
     <?php echo JHtml::_('jgrid.published', $row->coupon_publish, $i);?>
   </td>
   <td class="center">
        <a class="btn btn-micro" href='index.php?option=com_jshopping&controller=coupons&task=edit&coupon_id=<?php print $row->coupon_id?>'>
            <i class="icon-edit"></i>
        </a>
   </td>
   <td class="center">
     <?php echo $row->coupon_id ?>
   </td>
  </tr>
<?php
$i++;
}
?>
<tfoot>
<tr>	
    <td colspan="<?php echo 12+(int)$this->deltaColspan?>">
		<div class = "jshop_list_footer"><?php echo $pageNav->getListFooter(); ?></div>
        <div class = "jshop_limit_box"><?php echo $pageNav->getLimitBox(); ?></div>
	</td>
</tr>
</tfoot>
</table>

<input type="hidden" name="filter_order" value="<?php echo $this->filter_order?>" />
<input type="hidden" name="filter_order_Dir" value="<?php echo $this->filter_order_Dir?>" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="hidemainmenu" value="0" />
<input type="hidden" name="boxchecked" value="0" />
<?php print $this->tmp_html_end?>
</form>
</div>