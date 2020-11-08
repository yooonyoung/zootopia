// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AuctionServiceImpl.java

package com.example.jpetstore.service;

import com.example.jpetstore.dao.EventDao;
import com.example.jpetstore.dao.mybatis.MybatisAuctionDao;
import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.domain.WinningBid;
import java.io.PrintStream;
import java.util.*;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;

// Referenced classes of package com.example.jpetstore.service:
//            AuctionService

public class AuctionServiceImpl
    implements AuctionService
{

    public AuctionServiceImpl()
    {
    }

    public void insertAuction(Auction auction)
    {
        dao.insertAuction(auction);
    }

    public Auction getAuctionByAuctionId(int auctionId)
    {
        return dao.getAuctionByAuctionId(auctionId);
    }

    public List getAllAuctionList()
    {
        return dao.getAllAuctionList();
    }

    public void deleteAuctionByAuctionId(int auctionId)
    {
        dao.deleteAuctionByAuctionId(auctionId);
    }

    public void testScheduler(Date closingTime, final int auctionId)
    {
        Runnable updateTableRunner = new Runnable() {

            public void run()
            {
                WinningBid winningBid = dao.getWinningBidbyAuctionId(auctionId);
                Map param = new HashMap();
                param.put("auctionId", Integer.valueOf(auctionId));
                if(winningBid == null)
                {
                    param.put("status", Integer.valueOf(-1));
                    dao.setAuctionStatus(param);
                    System.out.println("terminate Auction : ");
                } else
                {
                    System.out.println((new StringBuilder("terminate Auction : ")).append(winningBid.toString()).toString());
                    dao.insertWinningBid(winningBid);
                    param.put("status", Integer.valueOf(0));
                    dao.setAuctionStatus(param);
                }
            }

            final AuctionServiceImpl this$0;
            private final int val$auctionId;

            
            {
                this$0 = AuctionServiceImpl.this;
                auctionId = i;
                super();
            }
        }
;
        HashMap hashMap = new HashMap();
        hashMap.put("curTime", new Date());
        hashMap.put("closingTime", closingTime);
        eventDao.insertNewEvent(hashMap);
        scheduler.schedule(updateTableRunner, closingTime);
        System.out.println((new StringBuilder("updateTableRunner has been scheduled to execute at ")).append(closingTime).toString());
    }

    public List getAuctionBySuppId(String suppId)
    {
        return dao.getAuctionBySuppId(suppId);
    }

    MybatisAuctionDao dao;
    private EventDao eventDao;
    private ThreadPoolTaskScheduler scheduler;
}
