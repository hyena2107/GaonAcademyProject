package com.gaon.dao;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.SBoardVO;
import com.gaon.vo.SCommentVO;

public interface SBoardDao {

	List<AccountVO> memberListDao(AccountVO vo);

	void writeSBoard(int studentNo, int teacherNo);

	List<SBoardVO> sboardListDao(int memberNo);

	List<SCommentVO> scommentsListDao(int sboardNo);

	void writeCommentDao(SCommentVO vo);

	List<SCommentVO> messageListDao(int memberNo);

	SBoardVO getSBoardDao(int sboardNo);

	int getSBoardNoDao(int studentNo, int teacherNo);

}
