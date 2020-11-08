// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AccountDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Account;
import java.util.List;
import org.springframework.dao.DataAccessException;

public interface AccountDao
{

    public abstract Account getAccount(String s)
        throws DataAccessException;

    public abstract Account getAccount(String s, String s1)
        throws DataAccessException;

    public abstract void insertAccount(Account account)
        throws DataAccessException;

    public abstract void updateAccount(Account account)
        throws DataAccessException;

    public abstract List getUsernameList()
        throws DataAccessException;
}
