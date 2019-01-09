package com.gaon.service;

import java.util.List;

import com.gaon.common.Util;
import com.gaon.dao.AccountDao;
import com.gaon.vo.AccountVO;

public class AccountServiceImpl implements AccountService{
	
	private AccountDao accountDao;

	public void setAccountDao(AccountDao accountDao) {
		this.accountDao = accountDao;
	}

	@Override
	public void memberRegisterService(AccountVO vo) {
		String password = Util.getHashedString(vo.getPassword(),"SHA-256");
		vo.setPassword(password); 
		accountDao.memberRegisterDao(vo);
		
	}

	@Override
	public void academyRegisterService(AccountVO vo) {
		String password = Util.getHashedString(vo.getPassword(),"SHA-256");
		vo.setPassword(password); 
		accountDao.academyRegisterDao(vo);
		
	}


	@Override
	public AccountVO memberLoginService(AccountVO vo) {
		String password = Util.getHashedString(vo.getPassword(),"SHA-256");
		vo.setPassword(password); 
		AccountVO member = accountDao.memberLoginDao(vo);
		return member;
	}

	@Override
	public AccountVO academyLoginService(AccountVO vo) {
		String password = Util.getHashedString(vo.getPassword(),"SHA-256");
		vo.setPassword(password); 
		AccountVO academy = accountDao.academyLoginDao(vo);
		return academy;
	}

	@Override
	public void updateProfileService(AccountVO vo) {
		accountDao.updateProfileDao(vo);
		
	}

	@Override
	public List<AccountVO> academyListService() {
		List<AccountVO> list = accountDao.academyListDao();
		return list;
	}

	@Override
	public void academyAuthService(int academyNo) {
		accountDao.academyAuthDao(academyNo);		
	}

	@Override
	public List<AccountVO> memberListService(int academyNo) {
		List<AccountVO> list = accountDao.memberListDao(academyNo);
		return list;
	}

	@Override
	public void teacherAuthService(int memberNo) {
		accountDao.teacherAuthDao(memberNo);		
		
	}

	@Override
	public List<AccountVO> getDeletedTeacher() {
		List<AccountVO> list = accountDao.getDeletedTeacherDao();
		return list;
	}

	@Override
	public List<AccountVO> getAcademyList() {
		List<AccountVO> list = accountDao.getAcademyListDao();
		return list;
	}

	@Override
	public void deleteTeacherService(int memberNo) {
		accountDao.deleteTeacherDao(memberNo);
		
	}

	@Override
	public AccountVO getTeacherService(int memberNo) {
		AccountVO list = accountDao.getTeacherDao(memberNo);
		return list;
	}

	@Override
	public int getAcademyCountService() {
		int a = accountDao.getAcademyCountDao();
		return a;
	}

}
