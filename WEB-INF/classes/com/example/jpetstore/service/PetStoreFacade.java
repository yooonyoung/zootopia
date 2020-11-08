// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PetStoreFacade.java

package com.example.jpetstore.service;

import com.example.jpetstore.domain.*;
import java.util.List;

public interface PetStoreFacade
{

    public abstract void insertItem(Item item);

    public abstract void updateItem(Item item);

    public abstract void deleteItem(Item item);

    public abstract Account getAccount(String s);

    public abstract Account getAccount(String s, String s1);

    public abstract void insertAccount(Account account);

    public abstract void updateAccount(Account account);

    public abstract List getUsernameList();

    public abstract List getCategoryList();

    public abstract Category getCategory(String s);

    public abstract List getProductListByCategory(String s);

    public abstract List searchProductList(String s);

    public abstract Product getProduct(String s);

    public abstract List getItemListByProduct(String s);

    public abstract Item getItem(String s);

    public abstract boolean isItemInStock(String s);

    public abstract List getSearchItems(String s);

    public abstract List getItemListByCategory(String s);

    public abstract void insertOrder(Order order);

    public abstract Order getOrder(int i);

    public abstract List getOrdersByUsername(String s);

    public abstract List getWeeklyBestItems();
}
