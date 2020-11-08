// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AuctionService.java

package com.example.jpetstore.service;

import com.example.jpetstore.domain.Auction;
import java.util.Date;
import java.util.List;

public interface AuctionService
{

    public abstract void insertAuction(Auction auction);

    public abstract Auction getAuctionByAuctionId(int i);

    public abstract List getAllAuctionList();

    public abstract void deleteAuctionByAuctionId(int i);

    public abstract void testScheduler(Date date, int i);

    public abstract List getAuctionBySuppId(String s);
}
