// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RecommendList.java

package com.example.jpetstore.domain;

import java.util.*;
import org.springframework.beans.support.PagedListHolder;

// Referenced classes of package com.example.jpetstore.domain:
//            Item

public class RecommendList
{

    public RecommendList()
    {
    }

    public Iterator getAllCartItems()
    {
        return recommendedItemList.getSource().iterator();
    }

    public PagedListHolder getCartItemList()
    {
        return recommendedItemList;
    }

    public int getNumberOfItems()
    {
        return recommendedItemList.getSource().size();
    }

    public void addItem(Item item1)
    {
    }

    public Item removeItemById(String itemId)
    {
        return null;
    }

    private final Map recommendedItemMap = Collections.synchronizedMap(new HashMap());
    private final PagedListHolder recommendedItemList = new PagedListHolder();
    private final int listSize = 10;
}
