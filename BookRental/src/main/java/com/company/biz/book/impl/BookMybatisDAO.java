package com.company.biz.book.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.biz.book.BookVO;


@Repository
public class BookMybatisDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 책 등록
	public void insertBook(BookVO vo) {
		System.out.println("=== mybatis로 insertBook() 기능 처리");
		mybatis.insert("BookDAO.insertBook", vo);
	}
	
	// 책 수정
	public void updateBook(BookVO vo) {
		System.out.println("=== mybatis로 updateBook() 기능 처리");
		mybatis.update("BookDAO.updateBook", vo);
	}
	
	// 책 삭제
	public void deleteBook(BookVO vo) {
		System.out.println("=== mybatis로 deleteBook() 기능 처리");
		mybatis.delete("BookDAO.deleteBook", vo);
	}
	
	// 책 목록 조회
	public List<BookVO> getBookList(BookVO vo){
		System.out.println("=== mybatis로 getBookList() 기능 처리");
		return mybatis.selectList("BookDAO.getBookList", vo);
	}
	
	public List<BookVO> getBookListManage(BookVO vo){
		System.out.println("=== mybatis로 getBookListManage() 기능 처리");
		return mybatis.selectList("BookDAO.getBookList", vo);
	}
	
	// 책 상세 조회
	public BookVO getBook(BookVO vo) {
		System.out.println("=== mybatis로 getBook() 기능 처리");
		return mybatis.selectOne("BookDAO.getBook", vo);
	}
	
	public void updateBookList(BookVO vo) {
		System.out.println("=== mybatis로 updateBookList() 기능 처리");
		mybatis.update("BookDAO.updateBookList",vo);
	}
	
	public void updateBookState(BookVO vo) {
		System.out.println("=== mybatis로 updateBookState() 기능 처리");
		mybatis.update("BookDAO.updateBookState",vo);
	}
	
	// 페이징 처리
	public int selectBoardCount(BookVO vo) {
		System.out.println("====> Mybatis로 selectBoardCount() 기능 처리");
		return mybatis.selectOne("BookDAO.selectBoardCount",vo);
	}
	
	public List<BookVO> newBookList(BookVO vo){
		System.out.println("=== mybatis로 newBookList() 기능 처리");
		return mybatis.selectList("BookDAO.newBookList",vo);
	}
}
