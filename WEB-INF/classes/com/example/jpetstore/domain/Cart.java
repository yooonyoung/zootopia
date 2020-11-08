// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Cart.java

package com.example.jpetstore.domain;

import java.io.Serializable;
import java.util.*;
import org.springframework.beans.support.PagedListHolder;

// Referenced classes of package com.example.jpetstore.domain:
//            Item, CartItem

public class Cart
    implements Serializable
{

    public Cart()
    {
        itemList.setPageSize(4);
    }

    public Iterator getAllCartItems()
    {
        return itemList.getSource().iterator();
    }

    public PagedListHolder getCartItemList()
    {
        return itemList;
    }

    public int getNumberOfItems()
    {
        return itemList.getSource().size();
    }

    public boolean containsItemId(String itemId)
    {
        return itemMap.containsKey(itemId);
    }

    public void addItem(Item item, boolean isInStock)
    {
        CartItem cartItem = (CartItem)itemMap.get(item.getItemId());
        if(cartItem == null)
        {
            cartItem = new CartItem();
            cartItem.setItem(item);
            cartItem.setQuantity(0);
            cartItem.setInStock(isInStock);
            itemMap.put(item.getItemId(), cartItem);
            itemList.getSource().add(cartItem);
        }
        cartItem.incrementQuantity();
    }

    public Item removeItemById(String itemId)
    {
        CartItem cartItem = (CartItem)itemMap.remove(itemId);
        if(cartItem == null)
        {
            return null;
        } else
        {
            itemList.getSource().remove(cartItem);
            return cartItem.getItem();
        }
    }

    public void incrementQuantityByItemId(String itemId)
    {
        CartItem cartItem = (CartItem)itemMap.get(itemId);
        cartItem.incrementQuantity();
    }

    public void setQuantityByItemId(String itemId, int quantity)
    {
        CartItem cartItem = (CartItem)itemMap.get(itemId);
        cartItem.setQuantity(quantity);
    }

    public double getSubTotal()
    {
        double subTotal = 0.0D;
        for(Iterator items = getAllCartItems(); items.hasNext();)
        {
            CartItem cartItem = (CartItem)items.next();
            Item item = cartItem.getItem();
            double listPrice = item.getListPrice();
            int quantity = cartItem.getQuantity();
            subTotal += listPrice * (double)quantity;
        }

        return subTotal;
    }

    private final Map itemMap = Collections.synchronizedMap(new HashMap());
    private final PagedListHolder itemList = new PagedListHolder();
}
