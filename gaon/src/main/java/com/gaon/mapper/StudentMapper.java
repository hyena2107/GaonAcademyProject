package com.gaon.mapper;

import java.util.List;

import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;
import com.gaon.vo.StudentVo;

public interface StudentMapper {

	void StudentRegister(StudentVo vo);

	StudentVo StudentLogin(StudentVo vo);

	List<CourseVO> courseListMapper(String teacherName);

	List<StudentVo> enrollListMapper(int courseNo);

}
 