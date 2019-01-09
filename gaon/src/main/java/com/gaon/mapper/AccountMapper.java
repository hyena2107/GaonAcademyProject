package com.gaon.mapper;

import java.util.List;

import com.gaon.vo.AccountVO;

public interface AccountMapper {

	void memberRegister(AccountVO vo);

	void academyRegister(AccountVO vo);

	AccountVO memberLogin(AccountVO vo);

	AccountVO academyLogin(AccountVO vo);

	void updateProfile(AccountVO vo);

	List<AccountVO> academyList();

	void academyAuth(int academyNo);

	List<AccountVO> memberList(int academyNo);

	void teacherAuth(int memberNo);

	List<AccountVO> getDeletedTeacherList();

	List<AccountVO> getAcademyList();

	void deleteTeacher(int memberNo);

	AccountVO getTeacher(int memberNo);

	int getAcademyCount();

}
