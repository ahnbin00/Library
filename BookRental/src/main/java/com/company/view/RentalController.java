package com.company.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.company.biz.book.BookVO;
import com.company.biz.book.impl.BookService;
import com.company.biz.rental.RentalVO;
import com.company.biz.rental.Impl.RentalService;

@Controller
public class RentalController {

	@Autowired
	private RentalService rentalService;
	@Autowired
	private BookService bookService;

	@RequestMapping("/insertRental.do")
	public String insertRental(RentalVO vo) {
		rentalService.insertRental(vo);
		return "forward:updateBookList.do";
	}

	@RequestMapping("/deleteRental.do")
	public String deleteRental(RentalVO rvo, BookVO bvo) {
		System.out.println("rentalService.deleteRental()");
		bookService.updateBookState(bvo);
		rentalService.deleteRental(rvo);
		return "redirect:getRentalList.do";
	}

	@RequestMapping("/getRentalList.do")
	public String getRentalList(RentalVO vo, Model model) {
		rentalService.updateRentalList(vo);
		model.addAttribute("rentalList", rentalService.getRentalList(vo));
		return "manageRentalList";
	}

	@RequestMapping("/extendRental.do")
	public String extendRental(RentalVO vo) {
		rentalService.extendRental(vo);
		return "forward:getRentalList.do";
	}

	@RequestMapping(value = "/memberRental.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String memberRental(RentalVO vo, Model model) {
		System.out.println("회원대출정보 화면으로 이동.");
		rentalService.updateRentalList(vo);
		rentalService.memberRental(vo);
		model.addAttribute("memberList", rentalService.memberRental(vo)); // id로 검색
		return "getRentalMember";
	}

}
