package com.gaon.dao;

import java.util.List;

import com.gaon.mapper.AccountMapper;
import com.gaon.vo.AccountVO;

public class AccountDaoImpl implements AccountDao{
	private AccountMapper accountMapper;

	public void setAccountMapper(AccountMapper accountMapper) {
		this.accountMapper = accountMapper;
	}

	@Override
	public void memberRegisterDao(AccountVO vo) {
		accountMapper.memberRegister(vo);
		
	}

	@Override
	public void academyRegisterDao(AccountVO vo) {
		accountMapper.academyRegister(vo);
		
	}

	
	@Override
	public AccountVO memberLoginDao(AccountVO vo) {
		AccountVO member = accountMapper.memberLogin(vo);
		return member;
	}

	@Override
	public AccountVO academyLoginDao(AccountVO vo) {
		AccountVO member = accountMapper.academyLogin(vo);
		return member;
	}

	@Override
	public void updateProfileDao(AccountVO vo) {
		accountMapper.updateProfile(vo);
	}

	@Override
	public List<AccountVO> academyListDao() {
		List<AccountVO> list = accountMapper.academyList();
		return list;
	}

	@Override
	public void academyAuthDao(int academyNo) {
		accountMapper.academyAuth(academyNo);	
	}

	@Override
	public List<AccountVO> memberListDao(int academyNo) {
		List<AccountVO> list = accountMapper.memberList(academyNo);
		return list;
		}

	@Override
	public void teacherAuthDao(int memberNo) {
		accountMapper.teacherAuth(memberNo);	
		
	}

	@Override
	public List<AccountVO> getDeletedTeacherDao() {
		List<AccountVO> list = accountMapper.getDeletedTeacherList();
		return list;
	}

	@Override
	public List<AccountVO> getAcademyListDao() {
		List<AccountVO> list = accountMapper.getAcademyList();
		return list;
	}

	@Override
	public void deleteTeacherDao(int memberNo) {
		accountMapper.deleteTeacher(memberNo);	
		
	}

	@Override
	public AccountVO getTeacherDao(int memberNo) {
		AccountVO detail = accountMapper.getTeacher(memberNo);
		return detail;
	}

	@Override
	public int getAcademyCountDao() {
		int a = accountMapper.getAcademyCount();
		return a;
	}
	

}
