package com.company.biz.book.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.biz.book.BookVO;


@Service("bookService")
public class BookServiceImpl implements BookService{
	
	@Autowired
	private BookMybatisDAO bookMybatisDAO;
	
	public void insertBook(BookVO vo) {
		bookMybatisDAO.insertBook(vo);
	}

	public void updateBook(BookVO vo) {
		bookMybatisDAO.updateBook(vo);
	}

	public void deleteBook(BookVO vo) {
		bookMybatisDAO.deleteBook(vo);
	}

	public BookVO getBook(BookVO vo) {
		return bookMybatisDAO.getBook(vo);
	}

	public List<BookVO> getBookList(BookVO vo) {
		return bookMybatisDAO.getBookList(vo);
	}
	
	public List<BookVO> getBookListManage(BookVO vo) {
		return bookMybatisDAO.getBookListManage(vo);
	}

	public void updateBookList(BookVO vo) {
		bookMybatisDAO.updateBookList(vo);
	}

	public void updateBookState(BookVO vo) {
		bookMybatisDAO.updateBookState(vo);
	}
	
	public int selectBoardCount(BookVO vo) {
		return bookMybatisDAO.selectBoardCount(vo);
	}
	
	public List<BookVO> newBookList(BookVO vo) {
		return bookMybatisDAO.newBookList(vo);
	}

}
