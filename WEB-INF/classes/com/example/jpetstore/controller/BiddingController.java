// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BiddingController.java

package com.example.jpetstore.controller;

import com.example.jpetstore.domain.*;
import com.example.jpetstore.service.AuctionService;
import com.example.jpetstore.service.BiddingService;
import java.io.PrintStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

// Referenced classes of package com.example.jpetstore.controller:
//            BiddingForm, UserSession

public class BiddingController
{

    public BiddingController()
    {
    }

    public String showForm(Model model)
    {
        return "BiddingForm";
    }

    public BiddingForm createBiddingForm()
    {
        return new BiddingForm();
    }

    public ModelAndView viewItemDetail(HttpServletRequest request, int auctionId)
        throws Exception
    {
        System.out.println((new StringBuilder("~!~!~~~~~~~select bidding auctionId : ")).append(auctionId).toString());
        Auction auction = auctionService.getAuctionByAuctionId(auctionId);
        System.out.println(auction.toString());
        return new ModelAndView("/popup/BiddingForm", "auctionItem", auction);
    }

    public ModelAndView onSubmit(HttpServletRequest request, HttpSession session, BiddingForm biddingForm, int auctionId, BindingResult result)
        throws Exception
    {
        System.out.println((new StringBuilder("~~~~~~~~insert Bidding auctionId : ")).append(auctionId).toString());
        Account account = ((UserSession)WebUtils.getSessionAttribute(request, "userSession")).getAccount();
        Bidding bidding = biddingForm.getBidding();
        bidding.setUsername(account.getUsername());
        bidding.setAuctionId(auctionId);
        service.insertBidding(bidding);
        Auction auction = auctionService.getAuctionByAuctionId(auctionId);
        return new ModelAndView("/popup/SuccessBidding", "auctionItem", auction);
    }

    public String handleRequest(HttpServletRequest request, HttpSession session, ModelMap model)
    {
        Account account = ((UserSession)WebUtils.getSessionAttribute(request, "userSession")).getAccount();
        model.put("myBiddingList", service.getBiddingByUsername(account.getUsername()));
        model.put("myWinningList", service.getWinningByUsername(account.getUsername()));
        return "MyBidding";
    }

    private String formViewName;
    private BiddingService service;
    private AuctionService auctionService;
}
