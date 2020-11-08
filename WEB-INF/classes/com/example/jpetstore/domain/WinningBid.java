// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WinningBid.java

package com.example.jpetstore.domain;


public class WinningBid
{

    public WinningBid()
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

    public String getItem()
    {
        return item;
    }

    public void setItem(String item)
    {
        this.item = item;
    }

    public int getWinningId()
    {
        return winningId;
    }

    public void setWinningId(int winningId)
    {
        this.winningId = winningId;
    }

    public int getAuctionId()
    {
        return auctionId;
    }

    public void setAuctionId(int auctionId)
    {
        this.auctionId = auctionId;
    }

    public int getBiddingId()
    {
        return biddingId;
    }

    public void setBiddingId(int biddingId)
    {
        this.biddingId = biddingId;
    }

    public int getOrderId()
    {
        return orderId;
    }

    public void setOrderId(int orderId)
    {
        this.orderId = orderId;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setUserId(String userId)
    {
        this.userId = userId;
    }

    public String getSuppId()
    {
        return suppId;
    }

    public void setSuppId(String suppId)
    {
        this.suppId = suppId;
    }

    public String toString()
    {
        return (new StringBuilder("WinningBid [winningId=")).append(winningId).append(", auctionId=").append(auctionId).append(", biddingId=").append(biddingId).append(", orderId=").append(orderId).append(", userId=").append(userId).append(", suppId=").append(suppId).append("]").toString();
    }

    private int winningId;
    private int auctionId;
    private int biddingId;
    private int orderId;
    private String userId;
    private String suppId;
    private String item;
    private int biddingPrice;
}
