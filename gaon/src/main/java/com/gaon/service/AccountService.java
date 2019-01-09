package com.gaon.service;

import java.util.List;

import com.gaon.vo.AccountVO;

public interface AccountService {

	void memberRegisterService(AccountVO vo);

	void academyRegisterService(AccountVO vo);

	AccountVO memberLoginService(AccountVO vo);

	AccountVO academyLoginService(AccountVO vo);

	void updateProfileService(AccountVO vo);

	List<AccountVO> academyListService();

	void academyAuthService(int academyNo);

	List<AccountVO> memberListService(int academyNo);

	void teacherAuthService(int memberNo);

	List<AccountVO> getDeletedTeacher();

	List<AccountVO> getAcademyList();

	void deleteTeacherService(int memberNo);

	AccountVO getTeacherService(int memberNo);

	int getAcademyCountService();

}
