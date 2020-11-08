// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AuctionForm.java

package com.example.jpetstore.controller;

import com.example.jpetstore.domain.Auction;
import java.io.PrintStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class AuctionForm
{

    public AuctionForm()
    {
        isNew = false;
    }

    public Auction getAuction()
    {
        return auction;
    }

    public boolean isNew()
    {
        return isNew;
    }

    public void setNew(boolean isNew)
    {
        this.isNew = isNew;
    }

    public String getStartTime()
    {
        return startTime;
    }

    public void setStartTime(String startTime)
        throws ParseException
    {
        this.startTime = startTime;
        System.out.println((new StringBuilder("----------------\n")).append(startTime).toString());
        auction.setStartTime((new SimpleDateFormat("yyyy-MM-dd'T'HH:mm")).parse(startTime));
    }

    public String getDeadLine()
    {
        return deadLine;
    }

    public void setDeadLine(String deadLine)
        throws ParseException
    {
        this.deadLine = deadLine;
        auction.setDeadLine((new SimpleDateFormat("yyyy-MM-dd'T'HH:mm")).parse(deadLine));
    }

    private final Auction auction = new Auction();
    private String startTime;
    private String deadLine;
    private boolean isNew;
}
