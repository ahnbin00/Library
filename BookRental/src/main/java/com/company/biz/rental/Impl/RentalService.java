package com.company.biz.rental.Impl;

import java.util.List;

import com.company.biz.rental.RentalVO;

public interface RentalService {

	// 등록
	void insertRental(RentalVO vo);

	// 삭제
	void deleteRental(RentalVO vo);

	// 목록 조회
	List<RentalVO> getRentalList(RentalVO vo);
	
	// d-day 업데이트
	void updateRentalList(RentalVO vo);
	
	// 기한 연장
	void extendRental(RentalVO vo);
	
	// 회원대출정보
	List<RentalVO> memberRental(RentalVO vo);

}