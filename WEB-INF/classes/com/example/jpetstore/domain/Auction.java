// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Auction.java

package com.example.jpetstore.domain;

import java.util.Date;

public class Auction
{

    public Auction()
    {
    }

    public void setMaxPrice(int maxPrice)
    {
        this.maxPrice = maxPrice;
    }

    public int getMaxPrice()
    {
        return maxPrice;
    }

    public int getStatus()
    {
        return status;
    }

    public void setStatus(int status)
    {
        this.status = status;
    }

    public String getSuppId()
    {
        return suppId;
    }

    public void setSuppId(String suppId)
    {
        this.suppId = suppId;
    }

    public int getAuctionId()
    {
        return auctionId;
    }

    public void setAuctionId(int auctionId)
    {
        this.auctionId = auctionId;
    }

    public String getItem()
    {
        return item;
    }

    public void setItem(String item)
    {
        this.item = item;
    }

    public String getThumbnail()
    {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail)
    {
        this.thumbnail = thumbnail;
    }

    public String getDescription()
    {
        return description;
    }

    public void setDescription(String description)
    {
        this.description = description;
    }

    public int getPrice()
    {
        return price;
    }

    public void setPrice(int price)
    {
        this.price = price;
    }

    public Date getStartTime()
    {
        return startTime;
    }

    public void setStartTime(Date startTime)
    {
        this.startTime = startTime;
    }

    public Date getDeadLine()
    {
        return deadLine;
    }

    public void setDeadLine(Date deadLine)
    {
        this.deadLine = deadLine;
    }

    public String getImage()
    {
        return image;
    }

    public void setImage(String image)
    {
        this.image = image;
    }

    public int getCurrentPrice()
    {
        return currentPrice;
    }

    public void setCurrentPrice(int currentPrice)
    {
        this.currentPrice = currentPrice;
    }

    public String toString()
    {
        return (new StringBuilder("Auction [suppId=")).append(suppId).append(", auctionId=").append(auctionId).append(", item=").append(item).append(", description=").append(description).append(", price=").append(price).append(", startTime=").append(startTime).append(", deadLine=").append(deadLine).append(", image=").append(image).append(", currentPrice=").append(currentPrice).append("]").toString();
    }

    private String suppId;
    private int auctionId;
    private String item;
    private String description;
    private int price;
    private Date startTime;
    private Date deadLine;
    private String image;
    private int currentPrice;
    private int status;
    private int maxPrice;
    private String thumbnail;
}
