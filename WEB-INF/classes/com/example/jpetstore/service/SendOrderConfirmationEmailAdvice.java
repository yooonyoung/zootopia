// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SendOrderConfirmationEmailAdvice.java

package com.example.jpetstore.service;

import com.example.jpetstore.domain.Account;
import com.example.jpetstore.domain.Order;
import java.lang.reflect.Method;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.aop.AfterReturningAdvice;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.mail.*;

// Referenced classes of package com.example.jpetstore.service:
//            PetStoreFacade

public class SendOrderConfirmationEmailAdvice
    implements AfterReturningAdvice, InitializingBean
{

    public SendOrderConfirmationEmailAdvice()
    {
        mailFrom = "jpetstore@springframework.org";
        subject = "Thank you for your order!";
    }

    public void setMailSender(MailSender mailSender)
    {
        this.mailSender = mailSender;
    }

    public void setMailFrom(String mailFrom)
    {
        this.mailFrom = mailFrom;
    }

    public void setSubject(String subject)
    {
        this.subject = subject;
    }

    public void afterPropertiesSet()
        throws Exception
    {
        if(mailSender == null)
            throw new IllegalStateException("mailSender is required");
        else
            return;
    }

    public void afterReturning(Object returnValue, Method m, Object args[], Object target)
        throws Throwable
    {
        Order order = (Order)args[0];
        Account account = ((PetStoreFacade)target).getAccount(order.getUsername());
        if(account.getEmail() == null || account.getEmail().length() == 0)
            return;
        StringBuffer text = new StringBuffer();
        text.append("Dear ").append(account.getFirstName()).append(' ').append(account.getLastName());
        text.append(", thank your for your order from JPetStore. Please note that your order number is ");
        text.append(order.getOrderId());
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setTo(account.getEmail());
        mailMessage.setFrom(mailFrom);
        mailMessage.setSubject(subject);
        mailMessage.setText(text.toString());
        try
        {
            mailSender.send(mailMessage);
        }
        catch(MailException ex)
        {
            logger.warn("An exception occured when trying to send email", ex);
        }
    }

    private static final String DEFAULT_MAIL_FROM = "jpetstore@springframework.org";
    private static final String DEFAULT_SUBJECT = "Thank you for your order!";
    private final Log logger = LogFactory.getLog(getClass());
    private MailSender mailSender;
    private String mailFrom;
    private String subject;
}
