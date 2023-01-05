package com.company.view;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.biz.book.BookVO;
import com.company.biz.book.impl.BookService;
import com.company.biz.wishBook.WishBookVO;
import com.company.biz.wishBook.impl.WishBookService;

@Controller
public class WishBookController {
	
	@Autowired
	private WishBookService wishbookService;
	@Autowired
	private BookService bookService;
	
	// 희망도서 신청 페이지로 이동
	@RequestMapping("/appForBooks.do")
	public String appForBook() {	
		return "insertWishbook";
	}
	
	// 희망도서 신청
	@RequestMapping(value="/insertWishBook.do",method = RequestMethod.POST)
	public void insertWishBook(HttpServletResponse response, WishBookVO WBvo, BookVO Bvo) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		wishbookService.deleteWishBookByDate(WBvo);
		int count = wishbookService.countWishBook(WBvo);
		System.out.println(count);
		if(count>=3) {
			out.println("<script>alert('신청가능한 횟수를 초과하였습니다.'); location.href='appForBooks.do';</script>");
		} else if(bookService.getBook(Bvo)==null){
			wishbookService.insertWishBook(WBvo);
			out.println("<script>alert('신청완료되었습니다.'); location.href='appForBooks.do';</script>");
		}else {
			out.println("<script>alert('이미 비치된 도서입니다.'); location.href='appForBooks.do';</script>");
		}
		out.flush();
	}
	
	// 이용자 페이지에서 신청현황 출력
	@RequestMapping("/getWishbookListByID.do")
	public String getWishbookListByID(WishBookVO vo, Model model) {
		wishbookService.deleteWishBookByDate(vo);
		model.addAttribute("wishbookList", wishbookService.getWishbookListByID(vo));
		return "getWishbookListByID";
	}
	
	// 관리자 페이지에서 신청현황 관리
	@RequestMapping("/getWishbookList.do")
	public String getWishbookList(WishBookVO vo, Model model) {
		wishbookService.deleteWishBookByDate(vo);
		model.addAttribute("wishbookList", wishbookService.getWishbookList(vo));
		return "manageWishbookList";
	}
	
	@RequestMapping("/deleteWishbookBySeq.do")
	public String deleteWishbookBySeq(WishBookVO vo, HttpSession session) {
		wishbookService.deleteWishbookBySeq(vo);
		return "redirect:getWishbookListByID.do?id="+session.getAttribute("id");
	}
	
	@RequestMapping("/updateWishbookToP.do")
	public String updateWishbookToP(WishBookVO vo) {
		wishbookService.updateWishbookToP(vo);
		return "redirect:getWishbookList.do";
	}
	
	@RequestMapping("/updateWishbookToX.do")
	public String updateWishbookToX(WishBookVO vo) {
		wishbookService.updateWishbookToX(vo);
		return "redirect:getWishbookList.do";
	}

	@RequestMapping("/updateWishbookToC.do")
	public String updateWishbookToC(WishBookVO vo) {
		wishbookService.updateWishbookToC(vo);
		return "redirect:getWishbookList.do";
	}
	
	@RequestMapping("/moveToInsertBookPage.do")
	public String moveToInsertBookPage(WishBookVO vo, Model model) {
		model.addAttribute("vo",wishbookService.getWishbookByISBN(vo));
		return "insertWishbookIntoBook";
	}
	
	@RequestMapping("/insertWishbookIntoBook.do")
	public void insertBook(HttpServletResponse response, WishBookVO WBvo, BookVO Bvo) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		wishbookService.updateWishbookToC(WBvo);
		bookService.insertBook(Bvo);
		out.println("<script>alert('도서등록이 완료되었습니다.');window.opener.location.href='getWishbookList.do';window.close();</script>");
		out.flush();
	}
}
