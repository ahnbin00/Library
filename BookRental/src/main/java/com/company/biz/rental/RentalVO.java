package com.company.biz.rental;

public class RentalVO {
	private String id;
	private String isbn;
	private String title;
	private String rentday;
	private String returnday;
	private int rentalseq;
	private String restday;
	private String searchCondition;
	private String searchKeyword;
	
	public String getRestday() {
		return restday;
	}
	public void setRestday(String restday) {
		this.restday = restday;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getRentday() {
		return rentday;
	}
	public void setRentday(String rentday) {
		this.rentday = rentday;
	}
	public String getReturnday() {
		return returnday;
	}
	public void setReturnday(String returnday) {
		this.returnday = returnday;
	}
	public int getRentalseq() {
		return rentalseq;
	}
	public void setRentalseq(int rentalseq) {
		this.rentalseq = rentalseq;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
}
