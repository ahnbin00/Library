package com.company.biz.qna.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.company.biz.qna.QnaVO;
import com.company.biz.qna.ReplyVO;

@Repository
public class QnaMybatisDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertQna(QnaVO vo) {
		System.out.println("=== mybatis로 insertQna() 기능 처리");
		mybatis.insert("QnaDAO.insertQna", vo);
	}
	
	public void updateQna(QnaVO vo) {
		System.out.println("=== mybatis로 updateQna() 기능 처리");
		mybatis.update("QnaDAO.updateQna", vo);
	}
	
	public void updateCnt(QnaVO vo) {
		System.out.println("=== mybatis로 updateCnt() 기능 처리");
		mybatis.update("QnaDAO.updateCnt", vo);
	}
	
	public void updateState(QnaVO vo) {
		System.out.println("=== mybatis로 updateState() 기능 처리");
		mybatis.update("QnaDAO.updateState", vo);
	}
	
	public void deleteQna(QnaVO vo) {
		System.out.println("=== mybatis로 deleteQna() 기능 처리");
		mybatis.delete("QnaDAO.deleteQna", vo);
	}
	
	public List<QnaVO> getQnaList(QnaVO vo){
		System.out.println("=== mybatis로 getQnaList() 기능 처리");
		return mybatis.selectList("QnaDAO.getQnaList", vo);
	}
	
	public QnaVO getQna(QnaVO vo) {
		System.out.println("=== mybatis로 getQna() 기능 처리");
		return mybatis.selectOne("QnaDAO.getQna", vo);
	}
	
	public List<QnaVO> getQnaListManage(QnaVO vo){
		System.out.println("=== mybatis로 getQnaListManage() 기능 처리");
		return mybatis.selectList("QnaDAO.getQnaList", vo);
	}
	
	public QnaVO getQnaManage(QnaVO vo) {
		System.out.println("=== mybatis로 getQnaManage() 기능 처리");
		return mybatis.selectOne("QnaDAO.getQna", vo);
	}
	
	public void insertReply(ReplyVO rvo) {
		System.out.println("=== mybatis로 insertReply() 기능 처리");
		mybatis.insert("QnaDAO.insertReply",rvo);
	}
	
	public void updateReply(ReplyVO rvo) {
		System.out.println("=== mybatis로 updateReply() 기능 처리");
		mybatis.update("QnaDAO.updateReply", rvo);
	}
	
	public void deleteReply(ReplyVO rvo) {
		System.out.println("=== mybatis로 deleteReply() 기능 처리");
		mybatis.delete("QnaDAO.deleteReply", rvo);
	}
	
	public ReplyVO getReply(ReplyVO rvo) {
		System.out.println("=== mybatis로 getReply() 기능 처리");
		return mybatis.selectOne("QnaDAO.getReply", rvo);
	}
	
}
