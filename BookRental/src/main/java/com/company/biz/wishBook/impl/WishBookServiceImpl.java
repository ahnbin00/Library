package com.company.biz.wishBook.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.biz.wishBook.WishBookVO;
@Service("wishbookService")
public class WishBookServiceImpl implements WishBookService {
	
	@Autowired
	WishBookMybatisDAO wishBookMybatisDAO;
	
	public void insertWishBook(WishBookVO vo) {
		wishBookMybatisDAO.insertWishBook(vo);
	}

	public int countWishBook(WishBookVO vo) {
		return wishBookMybatisDAO.countWishBook(vo);
	}

	public void deleteWishBookByDate(WishBookVO vo) {
		wishBookMybatisDAO.deleteWishBookByDate(vo);
	}
	
	public void deleteWishbookBySeq(WishBookVO vo) {
		wishBookMybatisDAO.deleteWishbookBySeq(vo);
	}

	public List<WishBookVO> getWishbookListByID(WishBookVO vo) {
		return wishBookMybatisDAO.getWishbookListByID(vo);
	}
	
	public List<WishBookVO> getWishbookList(WishBookVO vo) {
		return wishBookMybatisDAO.getWishbookList(vo);
	}
	
	public WishBookVO getWishbookByISBN(WishBookVO vo) {
		return wishBookMybatisDAO.getWishbookByISBN(vo);
	}

	public void updateWishbookToP(WishBookVO vo) {
		wishBookMybatisDAO.updateWishbookToP(vo);
	}

	public void updateWishbookToX(WishBookVO vo) {
		wishBookMybatisDAO.updateWishbookToX(vo);
	}

	public void updateWishbookToC(WishBookVO vo) {
		wishBookMybatisDAO.updateWishbookToC(vo);
	}
}
