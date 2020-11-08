// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OrderServiceImpl.java

package com.example.jpetstore.service;

import com.example.jpetstore.dao.OrderDao;
import com.example.jpetstore.domain.Order;
import java.util.List;

// Referenced classes of package com.example.jpetstore.service:
//            OrderService

public class OrderServiceImpl
    implements OrderService
{

    public OrderServiceImpl()
    {
    }

    public Order getOrder(int orderId)
    {
        return orderDao.getOrder(orderId);
    }

    public List getOrdersByUsername(String username)
    {
        return orderDao.getOrdersByUsername(username);
    }

    private OrderDao orderDao;
}
