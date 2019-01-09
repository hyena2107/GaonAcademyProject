package com.gaon.service;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.SBoardVO;
import com.gaon.vo.SCommentVO;

public interface SBoardService {

	List<AccountVO> memberListService(AccountVO vo);

	void writeSBoard(int studentNo, int teacherNo);

	List<SBoardVO> sboardListService(int memberNo);

	List<SCommentVO> scommentsListService(int sboardNo);

	void writeCommentService(SCommentVO vo);

	List<SCommentVO> messageListService(int memberNo);

	SBoardVO getSBoardService(int sboardNo);

	int getSBoardNoService(int studentNo, int teacherNo);


}
