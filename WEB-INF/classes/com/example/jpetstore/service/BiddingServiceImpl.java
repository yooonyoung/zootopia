// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BiddingServiceImpl.java

package com.example.jpetstore.service;

import com.example.jpetstore.dao.mybatis.MybatisBiddingDao;
import com.example.jpetstore.domain.Bidding;
import java.util.List;

// Referenced classes of package com.example.jpetstore.service:
//            BiddingService

public class BiddingServiceImpl
    implements BiddingService
{

    public BiddingServiceImpl()
    {
    }

    public void insertBidding(Bidding bidding)
    {
        dao.insertBidding(bidding);
    }

    public Bidding getBiddingByAuctionId(int auctionId)
    {
        return dao.getBiddingByAuctionId(auctionId);
    }

    public List getBiddingByUsername(String username)
    {
        return dao.getBiddingByUsername(username);
    }

    public List getWinningByUsername(String username)
    {
        return dao.getWinningByUsername(username);
    }

    MybatisBiddingDao dao;
}
