package com.eauction.POJO;


import java.sql.Date;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Samkit
 */
public class DetailPOJO {
    int Bid;
    String Product_Name;
    String itemCondition;
    Date Open_date;
     Date Close_date;

    public DetailPOJO(int Bid) {
        this.Bid = Bid;
    }


    public DetailPOJO(int Bid, String Product_Name, String itemCondition) {
        this.Bid = Bid;
        this.Product_Name = Product_Name;
        this.itemCondition = itemCondition;
    }

   public DetailPOJO() {
       
    }

    public int getBid() {
        return Bid;
    }

    public void setBid(int Bid) {
        this.Bid = Bid;
    }

    public Date getClose_date() {
        return Close_date;
    }

    public void setClose_date(Date Close_date) {
        this.Close_date = Close_date;
    }

    public Date getOpen_date() {
        return Open_date;
    }

    public void setOpen_date(Date Open_date) {
        this.Open_date = Open_date;
    }

    public String getProduct_Name() {
        return Product_Name;
    }

    public void setProduct_Name(String Product_Name) {
        this.Product_Name = Product_Name;
    }

    public String getItemCondition() {
        return itemCondition;
    }

    public void setItemCondition(String itemCondition) {
        this.itemCondition = itemCondition;
    }





}
