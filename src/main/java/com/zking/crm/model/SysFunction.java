package com.zking.crm.model;

import java.io.Serializable;

public class SysFunction implements Serializable{
    private Integer functionId;

    private String functionName;

    private String path;

    private String parameter;

    private String method;

    private String functionDesc;

    public SysFunction(Integer functionId, String functionName, String path, String parameter, String method, String functionDesc) {
        this.functionId = functionId;
        this.functionName = functionName;
        this.path = path;
        this.parameter = parameter;
        this.method = method;
        this.functionDesc = functionDesc;
    }

    public SysFunction() {
        super();
    }

    public Integer getFunctionId() {
        return functionId;
    }

    public void setFunctionId(Integer functionId) {
        this.functionId = functionId;
    }

    public String getFunctionName() {
        return functionName;
    }

    public void setFunctionName(String functionName) {
        this.functionName = functionName;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getParameter() {
        return parameter;
    }

    public void setParameter(String parameter) {
        this.parameter = parameter;
    }

    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    public String getFunctionDesc() {
        return functionDesc;
    }

    public void setFunctionDesc(String functionDesc) {
        this.functionDesc = functionDesc;
    }

    @Override
    public String toString() {
        return "SysFunction{" +
                "functionId=" + functionId +
                ", functionName='" + functionName + '\'' +
                ", path='" + path + '\'' +
                ", parameter='" + parameter + '\'' +
                ", method='" + method + '\'' +
                ", functionDesc='" + functionDesc + '\'' +
                '}';
    }
}