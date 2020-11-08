// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LineItem.java

package com.example.jpetstore.domain;

import java.io.Serializable;

// Referenced classes of package com.example.jpetstore.domain:
//            CartItem, Item

public class LineItem
    implements Serializable
{

    public LineItem()
    {
    }

    public LineItem(int lineNumber, CartItem cartItem)
    {
        this.lineNumber = lineNumber;
        quantity = cartItem.getQuantity();
        itemId = cartItem.getItem().getItemId();
        unitPrice = cartItem.getItem().getListPrice();
        item = cartItem.getItem();
    }

    public int getOrderId()
    {
        return orderId;
    }

    public void setOrderId(int orderId)
    {
        this.orderId = orderId;
    }

    public int getLineNumber()
    {
        return lineNumber;
    }

    public void setLineNumber(int lineNumber)
    {
        this.lineNumber = lineNumber;
    }

    public String getItemId()
    {
        return itemId;
    }

    public void setItemId(String itemId)
    {
        this.itemId = itemId;
    }

    public double getUnitPrice()
    {
        return unitPrice;
    }

    public void setUnitPrice(double unitprice)
    {
        unitPrice = unitprice;
    }

    public Item getItem()
    {
        return item;
    }

    public void setItem(Item item)
    {
        this.item = item;
    }

    public int getQuantity()
    {
        return quantity;
    }

    public void setQuantity(int quantity)
    {
        this.quantity = quantity;
    }

    public double getTotalPrice()
    {
        return unitPrice * (double)quantity;
    }

    private int orderId;
    private int lineNumber;
    private int quantity;
    private String itemId;
    private double unitPrice;
    private Item item;
}
