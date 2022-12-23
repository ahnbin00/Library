package com.company.biz.rental.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.biz.rental.RentalVO;


@Service("rentalService")
public class RentalServiceImpl implements RentalService{
	
	@Autowired
	private RentalMybatisDAO bookMybatisDAO;

	public void insertRental(RentalVO vo) {
		bookMybatisDAO.insertRental(vo);
	}

	public void deleteRental(RentalVO vo) {
		bookMybatisDAO.deleteRental(vo);
	}

	public List<RentalVO> getRentalList(RentalVO vo) {
		return bookMybatisDAO.getRentalList(vo);
	}

	public void updateRentalList(RentalVO vo) {
		bookMybatisDAO.updateRentalList(vo);
	}

	public void extendRental(RentalVO vo) {
		bookMybatisDAO.extendRental(vo);
	}

	@Override
	public List<RentalVO> memberRental(RentalVO vo) {
		return bookMybatisDAO.memberRental(vo);
	}

	
	
	
}
