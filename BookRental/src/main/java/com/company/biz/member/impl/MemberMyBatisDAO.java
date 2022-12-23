package com.company.biz.member.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.biz.member.MemberVO;

@Repository
public class MemberMyBatisDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public void insertMember(MemberVO vo) {
		mybatis.insert("MemberDAO.insertMember", vo);
	}
	
	public void updateMember(MemberVO vo) {
		mybatis.update("MemberDAO.updateMember", vo);
	}
	
	public MemberVO getMember(MemberVO vo) {
		System.out.println("mybatis getMember실행");
		return mybatis.selectOne("MemberDAO.getMember", vo);
	}
	
//	public MemberVO getMember(MemberVO vo) {
//		System.out.println("mybatis getMember실행");
//		return mybatis.selectOne("MemberDAO.getMember", vo);
//	}
	
	public List<MemberVO> getMemberList(MemberVO vo) {
		System.out.println("mybatis getMemberList실행");
		return mybatis.selectList("MemberDAO.getMemberList", vo);
	}
	
	public MemberVO getMemberInfo(MemberVO vo) {
		System.out.println("mybatis getMemberInfo실행");
		return mybatis.selectOne("MemberDAO.getMemberInfo", vo);
	}
	
	// 회원 탈퇴
	public void deleteMember(MemberVO vo) {
		System.out.println("mybatis deleteMember실행");
		mybatis.update("MemberDAO.deleteMember", vo);
	}
}
