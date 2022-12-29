package com.company.biz.qna.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.biz.qna.QnaVO;
import com.company.biz.qna.ReplyVO;

@Service("qnaService")
public class QnaServiceImpl implements QnaService{

	@Autowired
	QnaMybatisDAO qnaMybatisDAO;

	public void insertQna(QnaVO vo) {
		qnaMybatisDAO.insertQna(vo);
	}

	public void updateQna(QnaVO vo) {
		qnaMybatisDAO.updateQna(vo);
	}
	
	public void updateCnt(QnaVO vo) {
		qnaMybatisDAO.updateCnt(vo);
	}
	
	public void updateState(QnaVO vo) {
		qnaMybatisDAO.updateState(vo);
	}

	public void deleteQna(QnaVO vo) {
		qnaMybatisDAO.deleteQna(vo);
	}

	public List<QnaVO> getQnaList(QnaVO vo) {
		return qnaMybatisDAO.getQnaList(vo);
	}

	public QnaVO getQna(QnaVO vo) {
		return qnaMybatisDAO.getQna(vo);
	}

	public List<QnaVO> getQnaListManage(QnaVO vo) {
		return qnaMybatisDAO.getQnaListManage(vo);
	}

	public QnaVO getQnaManage(QnaVO vo) {
		return qnaMybatisDAO.getQnaManage(vo);
	}
	
	public void insertReply(ReplyVO rvo) {
		qnaMybatisDAO.insertReply(rvo);
	}

	public void updateReply(ReplyVO rvo) {
		qnaMybatisDAO.updateReply(rvo);
	}
	
	public void deleteReply(ReplyVO rvo) {
		qnaMybatisDAO.deleteReply(rvo);
	}
	
	public ReplyVO getReply(ReplyVO rvo) {
		return qnaMybatisDAO.getReply(rvo);
	}
	
}
