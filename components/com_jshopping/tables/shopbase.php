<?php
/**
* @version      4.18.0 20.08.2018
* @author       MAXXmarketing GmbH
* @package      Jshopping
* @copyright    Copyright (C) 2010 webdesigner-profi.de. All rights reserved.
* @license      GNU/GPL
*/
defined('_JEXEC') or die();

abstract class jshopShopBase extends JTable{
    
    public function move($delta, $where = '', $field = 'ordering'){
		if (empty($delta)){
			return true;
		}
		$query = $this->_db->getQuery(true);

		$query->select(implode(',', $this->_tbl_keys) . ', '.$field)
			->from($this->_tbl);

		if ($delta < 0){
			$query->where($field.' < ' . (int) $this->$field)
				->order($field.' DESC');
		}elseif ($delta > 0){
			$query->where($field.' > ' . (int) $this->$field)
				->order($field.' ASC');
		}

		if ($where){
			$query->where($where);
		}
		$this->_db->setQuery($query, 0, 1);
		$row = $this->_db->loadObject();

		if (!empty($row)){
			$query->clear()
				->update($this->_tbl)
				->set($field.' = ' . (int) $row->$field);
			$this->appendPrimaryKeys($query);
			$this->_db->setQuery($query);
			$this->_db->execute();

			$query->clear()
				->update($this->_tbl)
				->set($field.' = ' . (int) $this->$field);
			$this->appendPrimaryKeys($query, $row);
			$this->_db->setQuery($query);
			$this->_db->execute();

			$this->$field = $row->$field;
		}else{
			$query->clear()
				->update($this->_tbl)
				->set($field.' = ' . (int) $this->$field);
			$this->appendPrimaryKeys($query);
			$this->_db->setQuery($query);
			$this->_db->execute();
		}
		return true;
	}
    
	public function reorder($where = '', $fieldordering = 'ordering'){
		$k = $this->_tbl_key;
		$query = $this->_db->getQuery(true)
			->select(implode(',', $this->_tbl_keys) . ', '.$fieldordering)
			->from($this->_tbl)
			->where($fieldordering.' >= 0')
			->order($fieldordering);
		if ($where){
			$query->where($where);
		}

		$this->_db->setQuery($query);
		$rows = $this->_db->loadObjectList();

		foreach ($rows as $i => $row){
			if ($row->$fieldordering >= 0){
				if ($row->$fieldordering != $i + 1){
					$query->clear()
						->update($this->_tbl)
						->set($fieldordering.' = ' . ($i + 1));
					$this->appendPrimaryKeys($query, $row);
					$this->_db->setQuery($query);
					$this->_db->execute();
				}
			}
		}
		return true;
	}
}