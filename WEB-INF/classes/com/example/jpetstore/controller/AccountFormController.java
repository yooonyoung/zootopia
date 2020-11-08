// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AccountFormController.java

package com.example.jpetstore.controller;

import com.example.jpetstore.domain.Account;
import com.example.jpetstore.service.AccountFormValidator;
import com.example.jpetstore.service.PetStoreFacade;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.validation.BindingResult;
import org.springframework.web.util.WebUtils;

// Referenced classes of package com.example.jpetstore.controller:
//            UserSession, AccountForm

public class AccountFormController
{

    public AccountFormController()
    {
    }

    public void setPetStore(PetStoreFacade petStore)
    {
        this.petStore = petStore;
    }

    public void setValidator(AccountFormValidator validator)
    {
        this.validator = validator;
    }

    public AccountForm formBackingObject(HttpServletRequest request)
        throws Exception
    {
        UserSession userSession = (UserSession)WebUtils.getSessionAttribute(request, "userSession");
        if(userSession != null)
            return new AccountForm(petStore.getAccount(userSession.getAccount().getUsername()));
        else
            return new AccountForm();
    }

    public String[] getLanguages()
    {
        return LANGUAGES;
    }

    public List getCategoryList()
    {
        return petStore.getCategoryList();
    }

    public String showForm()
    {
        return formViewName;
    }

    public String onSubmit(HttpServletRequest request, HttpSession session, AccountForm accountForm, BindingResult result)
        throws Exception
    {
        if(request.getParameter("account.listOption") == null)
            accountForm.getAccount().setListOption(false);
        if(request.getParameter("account.bannerOption") == null)
            accountForm.getAccount().setBannerOption(false);
        validator.validate(accountForm, result);
        if(result.hasErrors())
            return formViewName;
        try
        {
            if(accountForm.isNewAccount())
                petStore.insertAccount(accountForm.getAccount());
            else
                petStore.updateAccount(accountForm.getAccount());
        }
        catch(DataIntegrityViolationException ex)
        {
            result.rejectValue("account.username", "USER_ID_ALREADY_EXISTS", "User ID already exists: choose a different ID.");
            return formViewName;
        }
        UserSession userSession = new UserSession(petStore.getAccount(accountForm.getAccount().getUsername()));
        PagedListHolder myList = new PagedListHolder(petStore.getProductListByCategory(accountForm.getAccount().getFavouriteCategoryId()));
        myList.setPageSize(4);
        userSession.setMyList(myList);
        session.setAttribute("userSession", userSession);
        return successViewName;
    }

    private String formViewName;
    private String successViewName;
    private static final String LANGUAGES[] = {
        "english", "japanese"
    };
    private PetStoreFacade petStore;
    private AccountFormValidator validator;

}
