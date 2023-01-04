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

import com.company.biz.wishBook.WishBookVO;
import com.company.biz.wishBook.impl.WishBookService;

@Controller
public class WishBookController {
	
	@Autowired
	private WishBookService wishbookService;
	
	// 희망도서 신청 페이지로 이동
	@RequestMapping("/appForBooks.do")
	public String appForBook() {	
		return "insertWishbook";
	}
	
	// 희망도서 신청
	@RequestMapping(value="/insertWishBook.do",method = RequestMethod.POST)
	public void insertWishBook(HttpServletResponse response, WishBookVO vo) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		wishbookService.deleteWishBookByDate(vo);
		int count = wishbookService.countWishBook(vo);
		System.out.println(count);
		if(count>=3) {
			out.println("<script>alert('신청가능한 횟수를 초과하였습니다.'); location.href='appForBooks.do';</script>");
		} else {
			wishbookService.insertWishBook(vo);
			out.println("<script>alert('신청완료되었습니다.'); location.href='appForBooks.do';</script>");
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
}
