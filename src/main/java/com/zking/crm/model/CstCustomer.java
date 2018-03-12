package com.zking.crm.model;

import java.io.Serializable;

public class CstCustomer implements Serializable{
    private String custNo;

    private String custName;

    private String custRegion;

    private Integer custManagerId;

    private String custManagerName;

    private Integer custLevel;

    private String custLevelLabel;

    private Integer custSatisfy;

    private Integer custCredit;

    private String custAddr;

    private String custZip;

    private String custTel;

    private String custFax;

    private String custWebsite;

    private String custLicenceNo;

    private String custChieftain;

    private Integer custBankroll;

    private Integer custTurnover;

    private String custBank;

    private String custBankAccount;

    private String custLocalTaxNo;

    private String custNationalTaxNo;

    private Integer custStatus;

    public CstCustomer(String custNo, String custName, String custRegion, Integer custManagerId, String custManagerName, Integer custLevel, String custLevelLabel, Integer custSatisfy, Integer custCredit, String custAddr, String custZip, String custTel, String custFax, String custWebsite, String custLicenceNo, String custChieftain, Integer custBankroll, Integer custTurnover, String custBank, String custBankAccount, String custLocalTaxNo, String custNationalTaxNo, Integer custStatus) {
        this.custNo = custNo;
        this.custName = custName;
        this.custRegion = custRegion;
        this.custManagerId = custManagerId;
        this.custManagerName = custManagerName;
        this.custLevel = custLevel;
        this.custLevelLabel = custLevelLabel;
        this.custSatisfy = custSatisfy;
        this.custCredit = custCredit;
        this.custAddr = custAddr;
        this.custZip = custZip;
        this.custTel = custTel;
        this.custFax = custFax;
        this.custWebsite = custWebsite;
        this.custLicenceNo = custLicenceNo;
        this.custChieftain = custChieftain;
        this.custBankroll = custBankroll;
        this.custTurnover = custTurnover;
        this.custBank = custBank;
        this.custBankAccount = custBankAccount;
        this.custLocalTaxNo = custLocalTaxNo;
        this.custNationalTaxNo = custNationalTaxNo;
        this.custStatus = custStatus;
    }

    public CstCustomer() {
        super();
    }

    public String getCustNo() {
        return custNo;
    }

    public void setCustNo(String custNo) {
        this.custNo = custNo;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getCustRegion() {
        return custRegion;
    }

    public void setCustRegion(String custRegion) {
        this.custRegion = custRegion;
    }

    public Integer getCustManagerId() {
        return custManagerId;
    }

    public void setCustManagerId(Integer custManagerId) {
        this.custManagerId = custManagerId;
    }

    public String getCustManagerName() {
        return custManagerName;
    }

    public void setCustManagerName(String custManagerName) {
        this.custManagerName = custManagerName;
    }

    public Integer getCustLevel() {
        return custLevel;
    }

    public void setCustLevel(Integer custLevel) {
        this.custLevel = custLevel;
    }

    public String getCustLevelLabel() {
        return custLevelLabel;
    }

    public void setCustLevelLabel(String custLevelLabel) {
        this.custLevelLabel = custLevelLabel;
    }

    public Integer getCustSatisfy() {
        return custSatisfy;
    }

    public void setCustSatisfy(Integer custSatisfy) {
        this.custSatisfy = custSatisfy;
    }

    public Integer getCustCredit() {
        return custCredit;
    }

    public void setCustCredit(Integer custCredit) {
        this.custCredit = custCredit;
    }

    public String getCustAddr() {
        return custAddr;
    }

    public void setCustAddr(String custAddr) {
        this.custAddr = custAddr;
    }

    public String getCustZip() {
        return custZip;
    }

    public void setCustZip(String custZip) {
        this.custZip = custZip;
    }

    public String getCustTel() {
        return custTel;
    }

    public void setCustTel(String custTel) {
        this.custTel = custTel;
    }

    public String getCustFax() {
        return custFax;
    }

    public void setCustFax(String custFax) {
        this.custFax = custFax;
    }

    public String getCustWebsite() {
        return custWebsite;
    }

    public void setCustWebsite(String custWebsite) {
        this.custWebsite = custWebsite;
    }

    public String getCustLicenceNo() {
        return custLicenceNo;
    }

    public void setCustLicenceNo(String custLicenceNo) {
        this.custLicenceNo = custLicenceNo;
    }

    public String getCustChieftain() {
        return custChieftain;
    }

    public void setCustChieftain(String custChieftain) {
        this.custChieftain = custChieftain;
    }

    public Integer getCustBankroll() {
        return custBankroll;
    }

    public void setCustBankroll(Integer custBankroll) {
        this.custBankroll = custBankroll;
    }

    public Integer getCustTurnover() {
        return custTurnover;
    }

    public void setCustTurnover(Integer custTurnover) {
        this.custTurnover = custTurnover;
    }

    public String getCustBank() {
        return custBank;
    }

    public void setCustBank(String custBank) {
        this.custBank = custBank;
    }

    public String getCustBankAccount() {
        return custBankAccount;
    }

    public void setCustBankAccount(String custBankAccount) {
        this.custBankAccount = custBankAccount;
    }

    public String getCustLocalTaxNo() {
        return custLocalTaxNo;
    }

    public void setCustLocalTaxNo(String custLocalTaxNo) {
        this.custLocalTaxNo = custLocalTaxNo;
    }

    public String getCustNationalTaxNo() {
        return custNationalTaxNo;
    }

    public void setCustNationalTaxNo(String custNationalTaxNo) {
        this.custNationalTaxNo = custNationalTaxNo;
    }

    public Integer getCustStatus() {
        return custStatus;
    }

    public void setCustStatus(Integer custStatus) {
        this.custStatus = custStatus;
    }
}