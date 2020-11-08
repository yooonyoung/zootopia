// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AuctionController.java

package com.example.jpetstore.controller;

import com.example.jpetstore.domain.Account;
import com.example.jpetstore.domain.Auction;
import com.example.jpetstore.service.AuctionService;
import com.example.jpetstore.validator.NewAuctionValidator;
import java.io.PrintStream;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

// Referenced classes of package com.example.jpetstore.controller:
//            AuctionForm, UserSession

public class AuctionController
{

    public AuctionController()
    {
    }

    public String showForm(AuctionForm auctionForm)
    {
        return "AuctionItemForm";
    }

    public AuctionForm createAuctionForm()
    {
        return new AuctionForm();
    }

    public String onSubmit(HttpServletRequest request, HttpSession session, AuctionForm auctionForm, BindingResult result)
        throws Exception
    {
        (new NewAuctionValidator()).validate(auctionForm, result);
        if(result.hasErrors())
        {
            System.out.println(result.getAllErrors());
            return "AuctionItemForm";
        } else
        {
            Account account = ((UserSession)WebUtils.getSessionAttribute(request, "userSession")).getAccount();
            Auction auction = auctionForm.getAuction();
            auction.setSuppId(account.getUsername());
            System.out.println(auction.toString());
            service.insertAuction(auction);
            auction.setCurrentPrice(0);
            service.testScheduler(auction.getDeadLine(), auction.getAuctionId());
            return (new StringBuilder("redirect:/shop/auction/")).append(auction.getAuctionId()).append("/item.do").toString();
        }
    }

    public ModelAndView viewItemDetail(HttpServletRequest request, int auctionId)
        throws Exception
    {
        UserSession userSession = (UserSession)WebUtils.getSessionAttribute(request, "userSession");
        System.out.println((new StringBuilder("*******auctionId : ")).append(auctionId).toString());
        Auction auction = service.getAuctionByAuctionId(auctionId);
        System.out.println(auction.toString());
        ModelAndView mav = new ModelAndView("AuctionItem", "auctionItem", auction);
        if(userSession != null)
        {
            Account account = userSession.getAccount();
            String userId = account.getUsername();
            if(userId != null && userId.equals(auction.getSuppId()))
                mav.addObject("delete", "Y");
        }
        return mav;
    }

    public String viewAuctionList(HttpServletRequest request, ModelMap model)
        throws Exception
    {
        java.util.List auctionList = service.getAllAuctionList();
        model.put("auctionList", auctionList);
        model.put("now", new Date());
        return "AuctionList";
    }

    public String deleteAuction(HttpServletRequest request, int auctionId)
        throws Exception
    {
        service.deleteAuctionByAuctionId(auctionId);
        return "redirect:/shop/auction/list.do";
    }

    public ModelAndView handleRequest(HttpServletRequest request, HttpSession session)
    {
        Account account = ((UserSession)WebUtils.getSessionAttribute(request, "userSession")).getAccount();
        return new ModelAndView("MySales", "myAuctionList", service.getAuctionBySuppId(account.getUsername()));
    }

    private String formViewName;
    private AuctionService service;
    private final Log logger = LogFactory.getLog(getClass());
}
