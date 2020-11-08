// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BiddingDao.java

package com.example.jpetstore.dao;

import com.example.jpetstore.domain.Bidding;
import java.util.List;
import org.springframework.dao.DataAccessException;

public interface BiddingDao
{

    public abstract void insertBidding(Bidding bidding)
        throws DataAccessException;

    public abstract Bidding getBiddingByAuctionId(int i)
        throws DataAccessException;

    public abstract List getBiddingByUsername(String s)
        throws DataAccessException;

    public abstract List getWinningByUsername(String s)
        throws DataAccessException;
}
