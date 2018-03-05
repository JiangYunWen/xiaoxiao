package com.zking.oa.model;

public class Book {
    private Integer bookId;

    private String bookName;

    private Float bookPrice;

    private String bookBrief;

    public Book(Integer bookId, String bookName, Float bookPrice, String bookBrief) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookPrice = bookPrice;
        this.bookBrief = bookBrief;
    }

    public Book() {
        super();
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public Float getBookPrice() {
        return bookPrice;
    }

    public void setBookPrice(Float bookPrice) {
        this.bookPrice = bookPrice;
    }

    public String getBookBrief() {
        return bookBrief;
    }

    public void setBookBrief(String bookBrief) {
        this.bookBrief = bookBrief;
    }
}