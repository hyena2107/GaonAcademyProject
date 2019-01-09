package com.gaon.service;
import com.gaon.dao.AttendDao;
import com.gaon.vo.AttendVo;

public class AttendServiceImpl implements AttendService {

	// 메소드 패키지를 사용하기 위해 선언해줌.

	private AttendDao attendDao;

	public void setAttendDao(AttendDao attendDao) {
		this.attendDao = attendDao;
	}

	@Override
	public void attendCheckService(int studentNo, int courseNo, int attendType, String attendDate) {
		attendDao.attendCheckDao(studentNo, courseNo, attendType, attendDate);

	}

	
	
	/*
	 * //수강학생 서비스생성
	 * 
	 * @Override public List<StudentVo> enrollListService(int courseNo) {
	 * 
	 * List<StudentVo> enrolllist = studentDao.enrollListDao(courseNo);
	 * 
	 * return enrolllist;
	 * 
	 * }
	 */

}