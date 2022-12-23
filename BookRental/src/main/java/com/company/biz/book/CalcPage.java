package com.company.biz.book;

import java.util.HashMap;
import java.util.Map;

public class CalcPage {
	private int countList=10;
	private int countPage=10;
	private int pageNum;
	private int totalCount;
	private int totalPages;
	
	public CalcPage(int totalCount,int pageNum) {
		this.totalCount = totalCount;
		this.pageNum=pageNum;
	}

	public Map<String, Integer> calc() {
		Map<String, Integer> map=new HashMap<String, Integer>();
		
		//페이지 갯수 구하기
		totalPages=totalCount/countList;
		
		//totalCount를 countList로 나눈 나머지 값이 존재한다는 것은 한 페이지가 더 있다는 의미이다.
		if(totalCount%countList>0){
			      totalPages++;
			   }
		 
		int nextFirstNumPage=-((pageNum%10)-11); //다음페이지 클릭 시 다음페이지의 첫번째
		int startPage = ((pageNum - 1) / countList) * countPage + 1;
		int endPage = startPage + countPage - 1;
		int startList = (pageNum - 1) * countPage + 1;
		if(endPage>totalPages){
		      endPage=totalPages;
		   }
		
		map.put("startList", startList);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("totalPages", totalPages);
		map.put("nextFirstNumPage", nextFirstNumPage);
		return map;
	}
}
