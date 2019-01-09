package com.gaon.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gaon.mapper.SBoardMapper;
import com.gaon.vo.AccountVO;
import com.gaon.vo.SBoardVO;
import com.gaon.vo.SCommentVO;

@Repository("sboardDao")
public class SBoardDaoImpl implements SBoardDao{

	@Autowired
	@Qualifier("sboardMapper")
	private SBoardMapper sboardMapper;

	@Override
	public List<AccountVO> memberListDao(AccountVO vo) {
		List<AccountVO> memberlist = sboardMapper.memberList(vo);
		return memberlist;
	}

	@Override
	public void writeSBoard(int studentNo, int teacherNo) {
		
		HashMap<String,Object> params=new HashMap<>();
		params.put("studentNo",studentNo);
		params.put("teacherNo",teacherNo);
		
		
		sboardMapper.writeSBoard(params);
		
		
	}

	@Override
	public List<SBoardVO> sboardListDao(int memberNo) {
		List<SBoardVO> sboardlist = sboardMapper.sboardList(memberNo);
		return sboardlist;
	}

	@Override
	public List<SCommentVO> scommentsListDao(int sboardNo) {
		List<SCommentVO> scommentslist = sboardMapper.scommentsList(sboardNo);
		return scommentslist;
	}

	@Override
	public void writeCommentDao(SCommentVO vo) {
		sboardMapper.writeComment(vo);
	}

	@Override
	public List<SCommentVO> messageListDao(int memberNo) {
		List<SCommentVO> scommentslist = sboardMapper.messageList(memberNo);
		return scommentslist;
	}

	@Override
	public SBoardVO getSBoardDao(int sboardNo) {
		SBoardVO vo = sboardMapper.getSBoard(sboardNo);
		return vo;
	}

	@Override
	public int getSBoardNoDao(int studentNo, int teacherNo) {
		HashMap<String,Object> params = new HashMap<>();
		params.put("studentNo",studentNo);
		params.put("teacherNo",teacherNo);
		int sboardNo = sboardMapper.getSBoardNo(params);
		return sboardNo;
	}
	
}
