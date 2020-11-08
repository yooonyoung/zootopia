// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   NewAuctionValidator.java

package com.example.jpetstore.validator;

import com.example.jpetstore.controller.AuctionForm;
import com.example.jpetstore.domain.Auction;
import org.springframework.validation.*;

public class NewAuctionValidator
    implements Validator
{

    public NewAuctionValidator()
    {
    }

    public boolean supports(Class clazz)
    {
        return com/example/jpetstore/controller/AuctionForm.isAssignableFrom(clazz);
    }

    public void validate(Object target, Errors errors)
    {
        AuctionForm auctionForm = (AuctionForm)target;
        if(auctionForm.getAuction().getItem() == "")
            errors.rejectValue("auction.item", "required");
        if(auctionForm.getAuction().getPrice() == 0)
            errors.rejectValue("auction.price", "required");
        if(auctionForm.getAuction().getDescription() == "")
            errors.rejectValue("auction.description", "required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "auction.price", "wrong");
    }
}
