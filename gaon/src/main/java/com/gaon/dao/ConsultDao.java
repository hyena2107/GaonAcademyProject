package com.gaon.dao;

import java.util.List;

import com.gaon.vo.AccountVO;
import com.gaon.vo.ConsultVo;
import com.gaon.vo.CourseVO;

public interface ConsultDao {

	List<CourseVO> selectCourseList(int teacherNo);

	List<AccountVO> selectstudentList(int courseNo);

	void insertconsultWrite(ConsultVo consultVo);

	List<ConsultVo> selectStudentConsultList(int studentNo);

	ConsultVo selectConsultDetail(int consultNo);

}
