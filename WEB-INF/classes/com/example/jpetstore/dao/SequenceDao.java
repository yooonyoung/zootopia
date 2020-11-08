// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SequenceDao.java

package com.example.jpetstore.dao;

import org.springframework.dao.DataAccessException;

public interface SequenceDao
{

    public abstract int getNextId(String s)
        throws DataAccessException;
}
