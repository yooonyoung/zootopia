// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AuctionDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.WinningBid;
import java.util.List;
import java.util.Map;
import org.springframework.dao.DataAccessException;

public interface AuctionDao
{

    public abstract List getAllAuctionList()
        throws DataAccessException;

    public abstract void insertAuction(Auction auction)
        throws DataAccessException;

    public abstract Auction getAuctionByAuctionId(int i)
        throws DataAccessException;

    public abstract WinningBid getWinningBidbyAuctionId(int i)
        throws DataAccessException;

    public abstract void insertWinningBid(WinningBid winningbid)
        throws DataAccessException;

    public abstract void setAuctionStatus(Map map)
        throws DataAccessException;

    public abstract void deleteAuctionByAuctionId(int i)
        throws DataAccessException;

    public abstract List getAuctionBySuppId(String s)
        throws DataAccessException;
}
