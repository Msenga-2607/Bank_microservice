package com.example.loanservice.loanservice.loan;

public class Loan {
    private Integer id;
    private Integer customer_id;
    private String loan_category;
    private Integer amount_requested;
    private Integer amount_given;
    private Integer interest_rate;
    private String status;
    private String date_given;
    private String returned_at;

    
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getCustomer_id() {
        return customer_id;
    }
    public void setCustomer_id(Integer customer_id) {
        this.customer_id = customer_id;
    }
    public String getLoan_category() {
        return loan_category;
    }
    public void setLoan_category(String loan_category) {
        this.loan_category = loan_category;
    }
    public Integer getAmount_requested() {
        return amount_requested;
    }
    public void setAmount_requested(Integer amount_requested) {
        this.amount_requested = amount_requested;
    }
    public Integer getAmount_given() {
        return amount_given;
    }
    public void setAmount_given(Integer amount_given) {
        this.amount_given = amount_given;
    }
    public Integer getInterest_rate() {
        return interest_rate;
    }
    public void setInterest_rate(Integer interest_rate) {
        this.interest_rate = interest_rate;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getDate_given() {
        return date_given;
    }
    public void setDate_given(String date_given) {
        this.date_given = date_given;
    }
    public String getReturned_at() {
        return returned_at;
    }
    public void setReturned_at(String returned_at) {
        this.returned_at = returned_at;
    }
}
