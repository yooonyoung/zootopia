// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WinningList.java

package com.example.jpetstore.domain;

import java.util.*;
import org.springframework.beans.support.PagedListHolder;

public class WinningList
{

    public WinningList()
    {
    }

    public Iterator getAllWinningBids()
    {
        return winningList.getSource().iterator();
    }

    public PagedListHolder getCartItemList()
    {
        return winningList;
    }

    public int getNumberOfWinnings()
    {
        return winningList.getSource().size();
    }

    private final Map itemMap = Collections.synchronizedMap(new HashMap());
    private final PagedListHolder winningList = new PagedListHolder();
}
