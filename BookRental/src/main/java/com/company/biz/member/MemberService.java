package com.company.biz.member;

import java.util.List;

public interface MemberService {
	
	MemberVO getMemberToLogin(MemberVO vo);

	void insertMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	void deleteMember(MemberVO vo);
	
	MemberVO getMemberInfo(MemberVO vo);	
	
	List<MemberVO> getMemberList(MemberVO vo);

}