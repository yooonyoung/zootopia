// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OrderController.java

package com.example.jpetstore.controller;

import com.example.jpetstore.domain.*;
import com.example.jpetstore.service.OrderValidator;
import com.example.jpetstore.service.PetStoreFacade;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

// Referenced classes of package com.example.jpetstore.controller:
//            OrderForm, UserSession

public class OrderController
{

    public OrderController()
    {
    }

    public OrderForm createOrderForm()
    {
        return new OrderForm();
    }

    public List referenceData()
    {
        ArrayList creditCardTypes = new ArrayList();
        creditCardTypes.add("Visa");
        creditCardTypes.add("MasterCard");
        creditCardTypes.add("American Express");
        return creditCardTypes;
    }

    public String initNewOrder(HttpServletRequest request, Cart cart, OrderForm orderForm)
        throws ModelAndViewDefiningException
    {
        UserSession userSession = (UserSession)request.getSession().getAttribute("userSession");
        if(cart != null)
        {
            Account account = petStore.getAccount(userSession.getAccount().getUsername());
            orderForm.getOrder().initOrder(account, cart);
            return "NewOrderForm";
        } else
        {
            ModelAndView modelAndView = new ModelAndView("Error");
            modelAndView.addObject("message", "An order could not be created because a cart could not be found.");
            throw new ModelAndViewDefiningException(modelAndView);
        }
    }

    public String bindAndValidateOrder(HttpServletRequest request, OrderForm orderForm, BindingResult result)
    {
        if(!orderForm.didShippingAddressProvided())
        {
            orderValidator.validateCreditCard(orderForm.getOrder(), result);
            orderValidator.validateBillingAddress(orderForm.getOrder(), result);
            if(result.hasErrors())
                return "NewOrderForm";
            if(orderForm.isShippingAddressRequired())
            {
                orderForm.setShippingAddressProvided(true);
                return "ShippingForm";
            } else
            {
                return "ConfirmOrder";
            }
        }
        orderValidator.validateShippingAddress(orderForm.getOrder(), result);
        if(result.hasErrors())
            return "ShippingForm";
        else
            return "ConfirmOrder";
    }

    protected ModelAndView confirmOrder(OrderForm orderForm, SessionStatus status)
    {
        petStore.insertOrder(orderForm.getOrder());
        ModelAndView mav = new ModelAndView("ViewOrder");
        mav.addObject("order", orderForm.getOrder());
        mav.addObject("message", "Thank you, your order has been submitted.");
        status.setComplete();
        return mav;
    }

    private PetStoreFacade petStore;
    private OrderValidator orderValidator;
}
