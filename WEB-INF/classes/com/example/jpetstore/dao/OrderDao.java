// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OrderDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Order;
import java.util.List;
import org.springframework.dao.DataAccessException;

public interface OrderDao
{

    public abstract List getOrdersByUsername(String s)
        throws DataAccessException;

    public abstract Order getOrder(int i)
        throws DataAccessException;

    public abstract void insertOrder(Order order)
        throws DataAccessException;
}
