package com.gaon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gaon.dao.SBoardDao;
import com.gaon.vo.AccountVO;
import com.gaon.vo.SBoardVO;
import com.gaon.vo.SCommentVO;

@Repository("sboardService")
public class SBoardServiceImpl implements SBoardService{
	
	@Autowired
	@Qualifier("sboardDao")
	private SBoardDao sboardDao;

	@Override
	public List<AccountVO> memberListService(AccountVO vo) {
		List<AccountVO> memberlist = sboardDao.memberListDao(vo);
		return memberlist;
	}

	@Override
	public void writeSBoard(int studentNo, int teacherNo) {
		sboardDao.writeSBoard(studentNo, teacherNo);		
	}

	@Override
	public List<SBoardVO> sboardListService(int memberNo) {
		List<SBoardVO> sboardlist = sboardDao.sboardListDao(memberNo);
		return sboardlist;
	}

	@Override
	public List<SCommentVO> scommentsListService(int sboardNo) {
		List<SCommentVO> scommentslist = sboardDao.scommentsListDao(sboardNo);
		return scommentslist;
	}

	@Override
	public void writeCommentService(SCommentVO vo) {
		sboardDao.writeCommentDao(vo);
	}

	@Override
	public List<SCommentVO> messageListService(int memberNo) {
		List<SCommentVO> scommentslist = sboardDao.messageListDao(memberNo);
		return scommentslist;
	}

	@Override
	public SBoardVO getSBoardService(int sboardNo) {
		SBoardVO vo = sboardDao.getSBoardDao(sboardNo);
		return vo;
	}

	@Override
	public int getSBoardNoService(int studentNo, int teacherNo) {
		int sboardNo = sboardDao.getSBoardNoDao(studentNo,teacherNo);
		return sboardNo;
	}


}
