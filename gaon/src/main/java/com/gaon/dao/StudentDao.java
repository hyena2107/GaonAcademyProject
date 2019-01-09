package com.gaon.dao;

import java.util.List;

import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;
import com.gaon.vo.StudentVo;

public interface StudentDao {

	void studentRegisterDao(StudentVo vo);	


	StudentVo studentLoginDao(StudentVo vo);


	List<StudentVo> studentListDao();


	List<CourseVO> courseListDao(String teacherName);


	List<StudentVo> enrollListDao(int courseNo);


 
}
