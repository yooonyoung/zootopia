// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CartItem.java

package com.example.jpetstore.domain;

import java.io.Serializable;

// Referenced classes of package com.example.jpetstore.domain:
//            Item

public class CartItem
    implements Serializable
{

    public CartItem()
    {
    }

    public boolean isInStock()
    {
        return inStock;
    }

    public void setInStock(boolean inStock)
    {
        this.inStock = inStock;
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
        if(item != null)
            return item.getListPrice() * (double)quantity;
        else
            return 0.0D;
    }

    public void incrementQuantity()
    {
        quantity++;
    }

    private Item item;
    private int quantity;
    private boolean inStock;
}
