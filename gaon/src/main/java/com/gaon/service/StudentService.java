package com.gaon.service;

import java.util.List;

import com.gaon.vo.CourseVO;
import com.gaon.vo.EnrollVo;
import com.gaon.vo.StudentVo;

public interface StudentService {
	//인터페이스 = 메소드들을  담은 대형틀
	
	
	//내용물 StudentVo이 입력된 값들을 돌려줄 필요가 없을때
	void studentRegisterService(StudentVo vo);


	//돌려줄 필요가 있을때
	StudentVo studentLoginService(StudentVo vo);



	List<CourseVO> courseListService(String teacherName);


	List<StudentVo> enrollListService(int courseNo);
	
 
}
