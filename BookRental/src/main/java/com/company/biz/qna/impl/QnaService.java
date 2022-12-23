package com.company.biz.qna.impl;

import java.util.List;

import com.company.biz.qna.QnaVO;
import com.company.biz.qna.ReplyVO;

public interface QnaService {

	void insertQna(QnaVO vo);
	
	void updateQna(QnaVO vo);
	
	void updateCnt(QnaVO vo);
	
	void deleteQna(QnaVO vo);
	
	List<QnaVO> getQnaList(QnaVO vo);
	
	QnaVO getQna(QnaVO vo);
	
	List<QnaVO> getQnaListManage(QnaVO vo);
	
	QnaVO getQnaManage(QnaVO vo);
	
	void insertReply(ReplyVO rvo);
	
	void updateReply(ReplyVO rvo);
	
	void deleteReply(ReplyVO rvo);
	
	ReplyVO getReply(ReplyVO rvo);
}
