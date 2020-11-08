// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SupplierServiceImpl.java

package com.example.jpetstore.service;

import com.example.jpetstore.dao.mybatis.MybatisSupplierDao;
import com.example.jpetstore.domain.Account;

// Referenced classes of package com.example.jpetstore.service:
//            SupplierService

public class SupplierServiceImpl
    implements SupplierService
{

    public SupplierServiceImpl()
    {
    }

    public void registerSupplier(Account supplier)
    {
        dao.registerSupplier(supplier);
    }

    MybatisSupplierDao dao;
}
