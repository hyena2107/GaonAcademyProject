package com.gaon.service;

import java.util.List;

import com.gaon.vo.AttendVo;
import com.gaon.vo.CourseVO;

public interface AdminService {

	List<CourseVO> ConsultList(int academyNo);

	int attendList(int studentNo, int courseNo, String string);

	

}
