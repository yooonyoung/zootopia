// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CategoryDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Category;
import java.util.List;
import org.springframework.dao.DataAccessException;

public interface CategoryDao
{

    public abstract List getCategoryList()
        throws DataAccessException;

    public abstract Category getCategory(String s)
        throws DataAccessException;
}
