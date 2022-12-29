package com.company.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WishBookController {
	
	// 희망도서 신청 페이지로 이동
	@RequestMapping("/appForBooks.do")
	public String appForBook() {	
		return "appForBooks";
	}
}
