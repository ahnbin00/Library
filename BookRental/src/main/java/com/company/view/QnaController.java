package com.company.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.biz.book.BookVO;
import com.company.biz.member.MemberVO;
import com.company.biz.qna.QnaVO;
import com.company.biz.qna.ReplyVO;
import com.company.biz.qna.impl.QnaService;

@Controller
public class QnaController {

	@Autowired
	private QnaService qnaService;
	
	@RequestMapping("/insertQna.do")
	public String insertQna(QnaVO vo) {
		System.out.println("qnaService.insertQna()");
		qnaService.insertQna(vo);
		return "redirect:getQnaList.do";
	}
	
	@RequestMapping("/updateQna.do")
	public String updateQna(QnaVO vo) {
		System.out.println("qnaService.updateQna()");
		qnaService.updateQna(vo);
		return "redirect:getQna.do";
	}
	
	@RequestMapping("/updateCnt.do")
	public String updateCnt(QnaVO vo,Model model) {
		System.out.println("qnaService.updateCnt()");
		model.addAttribute("qna", qnaService.getQna(vo));
		qnaService.updateCnt(vo);
		return "forward:getQna.do";
	}
	
	@RequestMapping("/deleteQna.do")
	public String deleteQna(QnaVO vo) {
		System.out.println("qnaService.updateQna()");
		qnaService.deleteQna(vo);
		return "redirect:getQnaList.do";
	}
	
	@RequestMapping("/getQna.do")
	public String getQna(QnaVO vo,Model model) {
		System.out.println("qnaService.getQna()");
		model.addAttribute("qna", qnaService.getQna(vo));
		return "getQna";
	}
	
	@RequestMapping(value="/getQnaList.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String getQnaList(QnaVO vo,Model model) {
		System.out.println("qnaService.getQnaList()");
		model.addAttribute("qnaList", qnaService.getQnaList(vo));
		model.addAttribute("vo", vo);
		return "getQnaList";
	}
	
	@RequestMapping("/getQnaManage.do")
	public String getQnaManage(QnaVO vo,Model model) {
		System.out.println("qnaService.getQnaManage()");
		model.addAttribute("qna", qnaService.getQna(vo));
		return "forward:getReply.do";
	}
	
	@RequestMapping(value="/getQnaListManage.do",method= {RequestMethod.GET, RequestMethod.POST})
	public String getQnaListManage(QnaVO vo,Model model) {
		System.out.println("qnaService.getQnaListManage()");
		model.addAttribute("qnaList", qnaService.getQnaList(vo));
		model.addAttribute("vo", vo);
		return "manageQnaList";
	}
	
	@RequestMapping("/insertQnaPage.do")
	public String goToBoardPage(MemberVO vo) {
		return "insertQna";
	}
	
	@RequestMapping("/insertReply.do")
	public String insertReply(ReplyVO rvo) {
		System.out.println("qnaService.insertReply()");
		qnaService.insertReply(rvo);
		return "redirect:getQnaManage.do";
	}
	
	@RequestMapping("/updateReply.do")
	public String updateReply(ReplyVO rvo) {
		System.out.println("qnaService.updateReply()");
		qnaService.updateReply(rvo);
		return "redirect:getQnaManage.do";
	}
	
	@RequestMapping("/deleteReply.do")
	public String deleteReply(ReplyVO rvo) {
		System.out.println("qnaService.deleteReply()");
		qnaService.deleteReply(rvo);
		return "redirect:getQnaManage.do";
	}
	
	@RequestMapping("/getReply.do")
	public String getReply(ReplyVO rvo,Model model) {
		System.out.println("qnaService.getReply()");
		model.addAttribute("reply", qnaService.getReply(rvo));
		return "manageQna";
	}
	
}
