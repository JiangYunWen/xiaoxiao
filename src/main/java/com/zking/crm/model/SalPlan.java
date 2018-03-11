package com.zking.crm.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

public class SalPlan implements Serializable{
    private Integer plaId;

    private Integer plaChcId;

    @JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
    private Date plaDate;

    private String plaTodo;

    private String plaResult;

    public SalPlan(Integer plaId, Integer plaChcId, Date plaDate, String plaTodo, String plaResult) {
        this.plaId = plaId;
        this.plaChcId = plaChcId;
        this.plaDate = plaDate;
        this.plaTodo = plaTodo;
        this.plaResult = plaResult;
    }

    public SalPlan() {
        super();
    }

    public Integer getPlaId() {
        return plaId;
    }

    public void setPlaId(Integer plaId) {
        this.plaId = plaId;
    }

    public Integer getPlaChcId() {
        return plaChcId;
    }

    public void setPlaChcId(Integer plaChcId) {
        this.plaChcId = plaChcId;
    }

    public Date getPlaDate() {
        return plaDate;
    }

    public void setPlaDate(Date plaDate) {
        this.plaDate = plaDate;
    }

    public String getPlaTodo() {
        return plaTodo;
    }

    public void setPlaTodo(String plaTodo) {
        this.plaTodo = plaTodo;
    }

    public String getPlaResult() {
        return plaResult;
    }

    public void setPlaResult(String plaResult) {
        this.plaResult = plaResult;
    }

    @Override
    public String toString() {
        return "SalPlan{" +
                "plaId=" + plaId +
                ", plaChcId=" + plaChcId +
                ", plaDate=" + plaDate +
                ", plaTodo='" + plaTodo + '\'' +
                ", plaResult='" + plaResult + '\'' +
                '}';
    }
}