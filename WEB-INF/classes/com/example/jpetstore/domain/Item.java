// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Item.java

package com.example.jpetstore.domain;

import java.io.Serializable;

// Referenced classes of package com.example.jpetstore.domain:
//            Product

public class Item
    implements Serializable
{

    public Item()
    {
    }

    public String getItemId()
    {
        return itemId;
    }

    public void setItemId(String itemId)
    {
        this.itemId = itemId.trim();
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public int getQuantity()
    {
        return quantity;
    }

    public void setQuantity(int quantity)
    {
        this.quantity = quantity;
    }

    public Product getProduct()
    {
        return product;
    }

    public void setProduct(Product product)
    {
        this.product = product;
    }

    public String getProductId()
    {
        return productId;
    }

    public void setProductId(String productId)
    {
        this.productId = productId;
    }

    public String getSupplierId()
    {
        return supplierId;
    }

    public void setSupplierId(String supplierId)
    {
        this.supplierId = supplierId;
    }

    public double getListPrice()
    {
        return listPrice;
    }

    public void setListPrice(double listPrice)
    {
        this.listPrice = listPrice;
    }

    public double getUnitCost()
    {
        return unitCost;
    }

    public void setUnitCost(double unitCost)
    {
        this.unitCost = unitCost;
    }

    public String getStatus()
    {
        return status;
    }

    public void setStatus(String status)
    {
        this.status = status;
    }

    public String getAttribute1()
    {
        return attribute1;
    }

    public void setAttribute1(String attribute1)
    {
        this.attribute1 = attribute1;
    }

    public String getAttribute2()
    {
        return attribute2;
    }

    public void setAttribute2(String attribute2)
    {
        this.attribute2 = attribute2;
    }

    public String getAttribute3()
    {
        return attribute3;
    }

    public void setAttribute3(String attribute3)
    {
        this.attribute3 = attribute3;
    }

    public String getAttribute4()
    {
        return attribute4;
    }

    public void setAttribute4(String attribute4)
    {
        this.attribute4 = attribute4;
    }

    public String getAttribute5()
    {
        return attribute5;
    }

    public void setAttribute5(String attribute5)
    {
        this.attribute5 = attribute5;
    }

    public String toString()
    {
        return (new StringBuilder("(")).append(getItemId().trim()).append("-").append(getProductId().trim()).append(")").toString();
    }

    private String itemId;
    private String name;
    private String productId;
    private double listPrice;
    private double unitCost;
    private String supplierId;
    private String status;
    private String attribute1;
    private String attribute2;
    private String attribute3;
    private String attribute4;
    private String attribute5;
    private Product product;
    private int quantity;
}
