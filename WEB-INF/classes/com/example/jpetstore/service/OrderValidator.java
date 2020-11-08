// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OrderValidator.java

package com.example.jpetstore.service;

import com.example.jpetstore.domain.Order;
import org.springframework.validation.*;

public class OrderValidator
    implements Validator
{

    public OrderValidator()
    {
    }

    public boolean supports(Class clazz)
    {
        return com/example/jpetstore/domain/Order.isAssignableFrom(clazz);
    }

    public void validate(Object obj, Errors errors)
    {
        validateCreditCard((Order)obj, errors);
        validateBillingAddress((Order)obj, errors);
        validateShippingAddress((Order)obj, errors);
    }

    public void validateCreditCard(Order order, Errors errors)
    {
        errors.setNestedPath("order");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "creditCard", "CCN_REQUIRED", "FAKE (!) credit card number required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "expiryDate", "EXPIRY_DATE_REQUIRED", "Expiry date is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "cardType", "CARD_TYPE_REQUIRED", "Card type is required.");
        errors.setNestedPath("");
    }

    public void validateBillingAddress(Order order, Errors errors)
    {
        errors.setNestedPath("order");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "billToFirstName", "FIRST_NAME_REQUIRED", "Billing Info: first name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "billToLastName", "LAST_NAME_REQUIRED", "Billing Info: last name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "billAddress1", "ADDRESS_REQUIRED", "Billing Info: address is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "billCity", "CITY_REQUIRED", "Billing Info: city is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "billState", "STATE_REQUIRED", "Billing Info: state is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "billZip", "ZIP_REQUIRED", "Billing Info: zip/postal code is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "billCountry", "COUNTRY_REQUIRED", "Billing Info: country is required.");
        errors.setNestedPath("");
    }

    public void validateShippingAddress(Order order, Errors errors)
    {
        errors.setNestedPath("order");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipToFirstName", "FIRST_NAME_REQUIRED", "Shipping Info: first name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipToLastName", "LAST_NAME_REQUIRED", "Shipping Info: last name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipAddress1", "ADDRESS_REQUIRED", "Shipping Info: address is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipCity", "CITY_REQUIRED", "Shipping Info: city is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipState", "STATE_REQUIRED", "Shipping Info: state is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipZip", "ZIP_REQUIRED", "Shipping Info: zip/postal code is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "shipCountry", "COUNTRY_REQUIRED", "Shipping Info: country is required.");
        errors.setNestedPath("");
    }
}
