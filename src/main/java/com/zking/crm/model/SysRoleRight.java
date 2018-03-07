package com.zking.crm.model;

public class SysRoleRight {
    private Integer rfId;

    private Integer rfRoleId;

    private String rfRightCode;

    public SysRoleRight(Integer rfId, Integer rfRoleId, String rfRightCode) {
        this.rfId = rfId;
        this.rfRoleId = rfRoleId;
        this.rfRightCode = rfRightCode;
    }

    public SysRoleRight() {
        super();
    }

    public Integer getRfId() {
        return rfId;
    }

    public void setRfId(Integer rfId) {
        this.rfId = rfId;
    }

    public Integer getRfRoleId() {
        return rfRoleId;
    }

    public void setRfRoleId(Integer rfRoleId) {
        this.rfRoleId = rfRoleId;
    }

    public String getRfRightCode() {
        return rfRightCode;
    }

    public void setRfRightCode(String rfRightCode) {
        this.rfRightCode = rfRightCode;
    }
}