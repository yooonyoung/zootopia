// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BiddingService.java

package com.example.jpetstore.service;

import com.example.jpetstore.domain.Bidding;
import java.util.List;

public interface BiddingService
{

    public abstract void insertBidding(Bidding bidding);

    public abstract Bidding getBiddingByAuctionId(int i);

    public abstract List getBiddingByUsername(String s);

    public abstract List getWinningByUsername(String s);
}
