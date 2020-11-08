// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PetStoreImpl.java

package com.example.jpetstore.service;

import com.example.jpetstore.dao.*;
import com.example.jpetstore.domain.*;
import java.util.*;

// Referenced classes of package com.example.jpetstore.service:
//            PetStoreFacade

public class PetStoreImpl
    implements PetStoreFacade
{

    public PetStoreImpl()
    {
    }

    public Account getAccount(String username)
    {
        return accountDao.getAccount(username);
    }

    public Account getAccount(String username, String password)
    {
        return accountDao.getAccount(username, password);
    }

    public void insertAccount(Account account)
    {
        accountDao.insertAccount(account);
    }

    public void updateAccount(Account account)
    {
        accountDao.updateAccount(account);
    }

    public List getUsernameList()
    {
        return accountDao.getUsernameList();
    }

    public List getCategoryList()
    {
        return categoryDao.getCategoryList();
    }

    public Category getCategory(String categoryId)
    {
        return categoryDao.getCategory(categoryId);
    }

    public List getProductListByCategory(String categoryId)
    {
        return productDao.getProductListByCategory(categoryId);
    }

    public List searchProductList(String keywords)
    {
        return productDao.searchProductList(keywords);
    }

    public Product getProduct(String productId)
    {
        return productDao.getProduct(productId);
    }

    public List getItemListByProduct(String productId)
    {
        return itemDao.getItemListByProduct(productId);
    }

    public Item getItem(String itemId)
    {
        return itemDao.getItem(itemId);
    }

    public boolean isItemInStock(String itemId)
    {
        return itemDao.isItemInStock(itemId);
    }

    public void insertOrder(Order order)
    {
        itemDao.updateQuantity(order);
        orderDao.insertOrder(order);
    }

    public Order getOrder(int orderId)
    {
        return orderDao.getOrder(orderId);
    }

    public List getOrdersByUsername(String username)
    {
        return orderDao.getOrdersByUsername(username);
    }

    public List getSearchItems(String keyword)
    {
        return itemDao.getSearchItems(keyword);
    }

    public List getItemListByCategory(String CategoryId)
    {
        return itemDao.getItemListByCategory(CategoryId);
    }

    public List getWeeklyBestItems()
    {
        return itemDao.getWeeklyBestItems();
    }

    public void insertItem(Item item)
    {
        itemDao.insertItem(item);
        itemDao.insertInventory(item);
    }

    public void updateItem(Item item)
    {
        itemDao.updateItem(item);
        Map param = new HashMap();
        param.put("itemId", item.getItemId());
        param.put("quantity", Integer.valueOf(item.getQuantity()));
        itemDao.updateInventoryQuantity(param);
    }

    public void deleteItem(Item item)
    {
        itemDao.deleteItem(item);
        itemDao.deleteInventory(item);
    }

    private AccountDao accountDao;
    private CategoryDao categoryDao;
    private ProductDao productDao;
    private ItemDao itemDao;
    private OrderDao orderDao;
}
