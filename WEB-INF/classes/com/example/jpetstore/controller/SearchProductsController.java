// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SearchProductsController.java

package com.example.jpetstore.controller;

import com.example.jpetstore.service.PetStoreFacade;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;

public class SearchProductsController
{

    public SearchProductsController()
    {
    }

    public void setPetStore(PetStoreFacade petStore)
    {
        this.petStore = petStore;
    }

    public ModelAndView handleRequest(HttpServletRequest request, String keyword, String page)
        throws Exception
    {
        PagedListHolder productList;
        if(keyword != null)
            if(!StringUtils.hasLength(keyword))
            {
                return new ModelAndView("Error", "message", "Please enter a keyword to search for, then press the search button.");
            } else
            {
                productList = new PagedListHolder(petStore.searchProductList(keyword.toLowerCase()));
                productList.setPageSize(4);
                request.getSession().setAttribute("SearchProductsController_productList", productList);
                return new ModelAndView("SearchProducts", "productList", productList);
            }
        productList = (PagedListHolder)request.getSession().getAttribute("SearchProductsController_productList");
        if(productList == null)
            return new ModelAndView("Error", "message", "Your session has timed out. Please start over again.");
        if("next".equals(page))
            productList.nextPage();
        else
        if("previous".equals(page))
            productList.previousPage();
        return new ModelAndView("SearchProducts", "productList", productList);
    }

    private PetStoreFacade petStore;
}
