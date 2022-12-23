package com.company.biz.book.impl;

import java.util.List;

import com.company.biz.book.BookVO;

public interface BookService {

	// 책 등록
	void insertBook(BookVO vo);

	// 책 수정
	void updateBook(BookVO vo);

	// 책 삭제
	void deleteBook(BookVO vo);

	// 책 목록 조회
	List<BookVO> getBookList(BookVO vo);
	
	List<BookVO> getBookListManage(BookVO vo);

	// 책 상세 조회
	BookVO getBook(BookVO vo);

	void updateBookList(BookVO vo);
	
	// rental 삭제했을 때, state 값을 'Y'로 바꾸는 메소드
	void updateBookState(BookVO vo);
	
	// 페이징 처리
	int selectBoardCount(BookVO vo);
	
	List<BookVO> newBookList(BookVO vo);
}