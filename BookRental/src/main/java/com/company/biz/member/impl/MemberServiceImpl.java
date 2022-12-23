package com.company.biz.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.biz.member.MemberService;
import com.company.biz.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberMyBatisDAO memberMyBatisDAO;
	
	public void insertMember(MemberVO vo) {
		memberMyBatisDAO.insertMember(vo);
	}

	public MemberVO getMember(MemberVO vo) {
		return memberMyBatisDAO.getMember(vo);
	}

	public void updateMember(MemberVO vo) {
		memberMyBatisDAO.updateMember(vo);
	}

//	@Override
//	public MemberVO getMember(MemberVO vo) {
//		return memberMyBatisDAO.getMember(vo);
//	}
	
	public List<MemberVO> getMemberList(MemberVO vo) {
		return memberMyBatisDAO.getMemberList(vo);
	}

	public MemberVO getMemberInfo(MemberVO vo) {
		return memberMyBatisDAO.getMemberInfo(vo);
	}

	public void deleteMember(MemberVO vo) {
		memberMyBatisDAO.deleteMember(vo);
	}


}
