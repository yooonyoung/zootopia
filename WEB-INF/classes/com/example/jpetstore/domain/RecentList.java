// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RecentList.java

package com.example.jpetstore.domain;

import java.util.*;
import org.springframework.beans.support.PagedListHolder;

// Referenced classes of package com.example.jpetstore.domain:
//            Item

public class RecentList
{

    public RecentList()
    {
    }

    public Iterator getAllCartItems()
    {
        return recentItemList.getSource().iterator();
    }

    public PagedListHolder getCartItemList()
    {
        return recentItemList;
    }

    public int getNumberOfItems()
    {
        return recentItemList.getSource().size();
    }

    public void addItem(Item item1)
    {
    }

    public Item removeItemById(String itemId)
    {
        return null;
    }

    private final Map recentItemMap = Collections.synchronizedMap(new HashMap());
    private final PagedListHolder recentItemList = new PagedListHolder();
    private final int listSize = 3;
}
