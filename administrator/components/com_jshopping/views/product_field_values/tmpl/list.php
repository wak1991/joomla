<?php
/**
* @version      4.10.0 13.08.2013
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die('Restricted access');

$rows=$this->rows; $count=count ($rows); $i=0;
$saveOrder = $this->filter_order_Dir=="asc" && $this->filter_order=="ordering";
?>
<div id="j-sidebar-container" class="span2">
    <?php echo $this->sidebar; ?>
</div>
<div id="j-main-container" class="span10">
<?php displaySubmenuOptions("productfields");;?>
<form action="index.php?option=com_jshopping&controller=productfieldvalues&field_id=<?php print $this->field_id?>" method="post" name="adminForm" id="adminForm">

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

<table class="table table-striped">
<thead>
  <tr>
    <th class="title" width="10">
      #
    </th>
    <th width="20">
	  <input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
    </th>
    <th align="left">
      <?php echo JHTML::_('grid.sort', _JSHOP_TITLE, 'name', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
    <th colspan="3" width="40">
      <?php echo JHTML::_('grid.sort', _JSHOP_ORDERING, 'ordering', $this->filter_order_Dir, $this->filter_order); ?>
      <?php if ($saveOrder){?>
      <?php echo JHtml::_('grid.order',  $rows, 'filesave.png', 'saveorder');?>
      <?php }?>
    </th>
    <th width="50" class="center">
        <?php echo _JSHOP_EDIT;?>
    </th>
    <th width="40" class="center">
        <?php echo JHTML::_('grid.sort', _JSHOP_ID, 'id', $this->filter_order_Dir, $this->filter_order); ?>
    </th>
  </tr>
</thead>
<?php foreach ($rows as $row){?>
  <tr class="row<?php echo $i % 2;?>">
   <td>
     <?php echo $i + 1;?>
   </td>
   <td>
     <?php echo JHtml::_('grid.id', $i, $row->id);?>
   </td>
   <td>
     <a href="index.php?option=com_jshopping&controller=productfieldvalues&task=edit&field_id=<?php print $this->field_id?>&id=<?php echo $row->id; ?>"><?php echo $row->name;?></a>
   </td>
   <td align="right" width="20">
    <?php
        if ($i!=0 && $saveOrder) echo '<a class="btn btn-micro" href="index.php?option=com_jshopping&controller=productfieldvalues&task=order&id='.$row->id.'&move=-1&field_id='.$this->field_id.'"><i class="icon-uparrow"></i></a>';
    ?>
   </td>
   <td align="left" width="20">
    <?php
        if ($i!=$count-1 && $saveOrder) echo '<a class="btn btn-micro" href="index.php?option=com_jshopping&controller=productfieldvalues&task=order&id='.$row->id.'&move=1&field_id='.$this->field_id.'"><i class="icon-downarrow"></i></a>';
    ?>
   </td>
   <td align="center" width="10">
    <input type="text" name="order[]" id="ord<?php echo $row->id;?>"  size="5" value="<?php echo $row->ordering; ?>" <?php if (!$saveOrder) echo 'disabled'?> class="inputordering" style="text-align: center" />
   </td>
   <td class="center">
        <a class="btn btn-micro" href='index.php?option=com_jshopping&controller=productfieldvalues&task=edit&field_id=<?php print $this->field_id?>&id=<?php print $row->id;?>'>
            <i class="icon-edit"></i>
        </a>
   </td>
   <td class="center">
    <?php print $row->id;?>
   </td>
  </tr>
<?php
$i++;
}
?>
</table>

<input type="hidden" name="filter_order" value="<?php echo $this->filter_order?>" />
<input type="hidden" name="filter_order_Dir" value="<?php echo $this->filter_order_Dir?>" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="hidemainmenu" value="0" />
<input type="hidden" name="boxchecked" value="0" />
<?php print $this->tmp_html_end?>
</form>
</div>