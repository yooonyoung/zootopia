// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ItemDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Item;
import com.example.jpetstore.domain.Order;
import java.util.List;
import java.util.Map;
import org.springframework.dao.DataAccessException;

public interface ItemDao
{

    public abstract void updateQuantity(Order order)
        throws DataAccessException;

    public abstract boolean isItemInStock(String s)
        throws DataAccessException;

    public abstract List getItemListByProduct(String s)
        throws DataAccessException;

    public abstract Item getItem(String s)
        throws DataAccessException;

    public abstract List getSearchItems(String s)
        throws DataAccessException;

    public abstract List getItemListByCategory(String s)
        throws DataAccessException;

    public abstract List getWeeklyBestItems()
        throws DataAccessException;

    public abstract void insertItem(Item item)
        throws DataAccessException;

    public abstract void updateItem(Item item)
        throws DataAccessException;

    public abstract void deleteItem(Item item)
        throws DataAccessException;

    public abstract void insertInventory(Item item)
        throws DataAccessException;

    public abstract void updateInventoryQuantity(Map map)
        throws DataAccessException;

    public abstract void deleteInventory(Item item)
        throws DataAccessException;
}
