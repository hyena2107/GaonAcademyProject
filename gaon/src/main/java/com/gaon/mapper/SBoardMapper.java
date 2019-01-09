package com.gaon.mapper;

import java.util.HashMap;
import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.SBoardVO;
import com.gaon.vo.SCommentVO;

public interface SBoardMapper {

	List<AccountVO> memberList(AccountVO vo);

	void writeSBoard(HashMap<String,Object> params);

	List<SBoardVO> sboardList(int memberNo);

	List<SCommentVO> scommentsList(int sboardNo);

	void writeComment(SCommentVO vo);

	List<SCommentVO> messageList(int memberNo);

	SBoardVO getSBoard(int sboardNo);

	int getSBoardNo(HashMap<String, Object> params);

}
