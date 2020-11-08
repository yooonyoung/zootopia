// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProductDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Product;
import java.util.List;
import org.springframework.dao.DataAccessException;

public interface ProductDao
{

    public abstract List getProductListByCategory(String s)
        throws DataAccessException;

    public abstract List searchProductList(String s)
        throws DataAccessException;

    public abstract Product getProduct(String s)
        throws DataAccessException;
}
