package com.gaon.dao;

import java.util.List;

import com.gaon.vo.AttendVo;
import com.gaon.vo.CourseVO;

public interface AdminDao {

	List<CourseVO> selectConsultList(int academyNo);

	int selectAttendList(int studentNo, int courseNo, String string);



}
