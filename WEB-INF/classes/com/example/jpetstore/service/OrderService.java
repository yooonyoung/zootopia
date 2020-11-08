// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OrderService.java

package com.example.jpetstore.service;

import com.example.jpetstore.domain.Order;
import java.util.List;

public interface OrderService
{

    public abstract Order getOrder(int i);

    public abstract List getOrdersByUsername(String s);
}
