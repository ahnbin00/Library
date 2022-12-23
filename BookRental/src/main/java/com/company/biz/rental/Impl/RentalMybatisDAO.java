package com.company.biz.rental.Impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.biz.rental.RentalVO;


@Repository
public class RentalMybatisDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 등록
	public void insertRental(RentalVO vo) {
		System.out.println("=== mybatis로 insertRental() 기능 처리");
		mybatis.insert("RentalDAO.insertRental", vo);
	}
	
	// 삭제
	public void deleteRental(RentalVO vo) {
		System.out.println("=== mybatis로 deleteRental() 기능 처리");
		mybatis.delete("RentalDAO.deleteRental", vo);
	}
	
	// 목록 조회
	public List<RentalVO> getRentalList(RentalVO vo){
		System.out.println("=== mybatis로 getRentalList() 기능 처리");
		return mybatis.selectList("RentalDAO.getRentalList", vo);
	}

	public void updateRentalList(RentalVO vo) {
		System.out.println("=== mybatis로 updateRentalList() 기능 처리");
		mybatis.update("RentalDAO.updateRentalList", vo);
	}
	
	public void extendRental(RentalVO vo) {
		System.out.println("=== mybatis로 extendRental() 기능 처리");
		mybatis.update("RentalDAO.extendRental", vo);
	}
	
	// 목록 조회
		public List<RentalVO> memberRental(RentalVO vo){
			System.out.println("=== mybatis로 memberRental() 기능 처리");
			return mybatis.selectList("RentalDAO.memberRental", vo);
		}
}
