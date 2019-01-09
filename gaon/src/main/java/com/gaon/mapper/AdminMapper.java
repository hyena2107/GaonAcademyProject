package com.gaon.mapper;

import java.util.HashMap;
import java.util.List;

import com.gaon.vo.AttendVo;
import com.gaon.vo.CourseVO;

public interface AdminMapper {

	List<CourseVO> selectConsultList(int academyNo);

	int selectAttendList(HashMap<String, Object> params);

	int countAttend(HashMap<String, Object> params);
	
	


}
