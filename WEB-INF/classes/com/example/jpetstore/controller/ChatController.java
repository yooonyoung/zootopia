// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ChatController.java

package com.example.jpetstore.controller;

import com.example.jpetstore.domain.Account;
import java.io.PrintStream;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.web.util.WebUtils;

// Referenced classes of package com.example.jpetstore.controller:
//            UserSession

public class ChatController
{

    public ChatController()
    {
    }

    public String chat(Model model, HttpServletRequest request)
    {
        Account account = ((UserSession)WebUtils.getSessionAttribute(request, "userSession")).getAccount();
        System.out.println((new StringBuilder("userName : ")).append(account.getUsername()).toString());
        model.addAttribute("userId", account.getUsername());
        return "Chatting";
    }
}
