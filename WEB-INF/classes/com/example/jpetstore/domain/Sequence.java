// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Sequence.java

package com.example.jpetstore.domain;

import java.io.Serializable;

public class Sequence
    implements Serializable
{

    public Sequence()
    {
    }

    public Sequence(String name, int nextId)
    {
        this.name = name;
        this.nextId = nextId;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public int getNextId()
    {
        return nextId;
    }

    public void setNextId(int nextId)
    {
        this.nextId = nextId;
    }

    private String name;
    private int nextId;
}
