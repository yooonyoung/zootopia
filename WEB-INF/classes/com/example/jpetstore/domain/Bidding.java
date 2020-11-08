// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Bidding.java

package com.example.jpetstore.domain;

import java.util.Date;

public class Bidding
{

    public Bidding()
    {
    }

    public String getStatus()
    {
        return status;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    public int getBiddingId()
    {
        return biddingId;
    }

    public void setBiddingId(int biddingId)
    {
        this.biddingId = biddingId;
    }

    public int getAuctionId()
    {
        return auctionId;
    }

    public void setAuctionId(int auctionId)
    {
        this.auctionId = auctionId;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUsername(String username)
    {
        this.username = username;
    }

    public int getBiddingPrice()
    {
        return biddingPrice;
    }

    public void setBiddingPrice(int biddingPrice)
    {
        this.biddingPrice = biddingPrice;
    }

    public String getBiddingDescription()
    {
        return biddingDescription;
    }

    public void setBiddingDescription(String biddingDescription)
    {
        this.biddingDescription = biddingDescription;
    }

    public String getItem()
    {
        return Item;
    }

    public void setItem(String item)
    {
        Item = item;
    }

    public Date getDeadLine()
    {
        return deadLine;
    }

    public void setDeadLine(Date deadLine)
    {
        this.deadLine = deadLine;
    }

    private int biddingId;
    private int auctionId;
    private String username;
    private int biddingPrice;
    private String biddingDescription;
    private String Item;
    private Date deadLine;
    private String status;
}
