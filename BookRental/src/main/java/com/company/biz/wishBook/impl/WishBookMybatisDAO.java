package com.company.biz.wishBook.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.biz.wishBook.WishBookVO;

@Repository
public class WishBookMybatisDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertWishBook(WishBookVO vo) {
		System.out.println("=== mybatis로 insertWishBook() 기능처리");
		mybatis.insert("WishBookDAO.insertWishBook", vo);
	}
	
	public int countWishBook(WishBookVO vo) {
		System.out.println("=== mybatis로 countWishBook() 기능처리");
		return mybatis.selectOne("WishBookDAO.countWishBook", vo);
	}
	
	public void deleteWishBookByDate(WishBookVO vo) {
		System.out.println("=== mybatis로 deleteWishBookByDate() 기능처리");
		mybatis.delete("WishBookDAO.deleteWishBookByDate", vo);
	}
	
	public void deleteWishbookBySeq(WishBookVO vo) {
		System.out.println("=== mybatis로 deleteWishbookBySeq() 기능처리");
		mybatis.delete("WishBookDAO.deleteWishbookBySeq", vo);
	}
	
	public List<WishBookVO> getWishbookListByID(WishBookVO vo) {
		System.out.println("=== mybatis로 getWishbookListByID() 기능처리");
		return mybatis.selectList("WishBookDAO.getWishbookListByID", vo);
	}
	
	public List<WishBookVO> getWishbookList(WishBookVO vo) {
		System.out.println("=== mybatis로 getWishbookList() 기능처리");
		return mybatis.selectList("WishBookDAO.getWishbookList", vo);
	}
	
	public WishBookVO getWishbookByISBN(WishBookVO vo) {
		System.out.println("=== mybatis로 getWishbookByISBN() 기능처리");
		return mybatis.selectOne("WishBookDAO.getWishbookByISBN", vo);
	}

	public void updateWishbookToP(WishBookVO vo) {
		System.out.println("=== mybatis로 updateWishbookToP() 기능처리");
		mybatis.update("WishBookDAO.updateWishbookToP", vo);
	}
	
	public void updateWishbookToX(WishBookVO vo) {
		System.out.println("=== mybatis로 updateWishbookToX() 기능처리");
		mybatis.update("WishBookDAO.updateWishbookToX", vo);
	}
	
	public void updateWishbookToC(WishBookVO vo) {
		System.out.println("=== mybatis로 updateWishbookToC() 기능처리");
		mybatis.update("WishBookDAO.updateWishbookToC", vo);
	}
}
