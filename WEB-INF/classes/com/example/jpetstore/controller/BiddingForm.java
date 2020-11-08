// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BiddingForm.java

package com.example.jpetstore.controller;

import com.example.jpetstore.domain.Bidding;

public class BiddingForm
{

    public BiddingForm()
    {
    }

    public int getBiddingPrice()
    {
        return biddingPrice;
    }

    public void setBiddingPrice(int biddingPrice)
    {
        this.biddingPrice = biddingPrice;
    }

    public Bidding getBidding()
    {
        return bidding;
    }

    private final Bidding bidding = new Bidding();
    private int biddingPrice;
}
