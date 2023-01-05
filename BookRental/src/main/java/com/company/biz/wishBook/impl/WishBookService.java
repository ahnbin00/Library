package com.company.biz.wishBook.impl;

import java.util.List;

import com.company.biz.wishBook.WishBookVO;

public interface WishBookService {
	
	void insertWishBook(WishBookVO vo);
	
	int countWishBook(WishBookVO vo);
	
	// 30일 초과할 시 자동 삭제
	void deleteWishBookByDate(WishBookVO vo);
	
	// 이용자 - 신청취소
	void deleteWishbookBySeq(WishBookVO vo);
	
	// 이용자 - 신청현황 확인
	List<WishBookVO> getWishbookListByID(WishBookVO vo);
	
	// 관리자 - 신청현황 관리
	List<WishBookVO> getWishbookList(WishBookVO vo);
	
	WishBookVO getWishbookByISBN(WishBookVO vo);
	
	void updateWishbookToP(WishBookVO vo);
	
	void updateWishbookToX(WishBookVO vo);
	
	void updateWishbookToC(WishBookVO vo);
}
