// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SupplierDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Account;
import org.springframework.dao.DataAccessException;

public interface SupplierDao
{

    public abstract void registerSupplier(Account account)
        throws DataAccessException;
}
