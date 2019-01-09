package com.gaon.dao;

import java.util.List;

import com.gaon.vo.AccountVO;

public interface AccountDao {

	void memberRegisterDao(AccountVO vo);	

	void academyRegisterDao(AccountVO vo);

	AccountVO memberLoginDao(AccountVO vo);

	AccountVO academyLoginDao(AccountVO vo);

	void updateProfileDao(AccountVO vo);

	List<AccountVO> academyListDao();

	void academyAuthDao(int academyNo);

	List<AccountVO> memberListDao(int academyNo);

	void teacherAuthDao(int memberNo);

	List<AccountVO> getDeletedTeacherDao();

	List<AccountVO> getAcademyListDao();

	void deleteTeacherDao(int memberNo);

	AccountVO getTeacherDao(int memberNo);

	int getAcademyCountDao();


}
