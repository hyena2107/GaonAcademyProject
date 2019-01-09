package com.gaon.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.gaon.mapper.AdminMapper;
import com.gaon.vo.AttendVo;
import com.gaon.vo.CourseVO;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	@Qualifier("adminMapper")
	private AdminMapper adminMapper;

	@Override
	public List<CourseVO> selectConsultList(int academyNo) {
		
		List<CourseVO> coureses = adminMapper.selectConsultList(academyNo);
		
		return coureses;
	}

	@Override
	public int selectAttendList(int studentNo, int courseNo,String string) {
		
		HashMap<String,Object> params=new HashMap<>();
		params.put("studentNo",studentNo);
		params.put("courseNo",courseNo);
		params.put("string",string);
		int average = 0;
		try{
			int count = adminMapper.selectAttendList(params);
			int selection = adminMapper.countAttend(params);
			average = (selection/count)*100;	
		}catch(Exception ex){
			average = 0;
		}
	
		return average;
	}




}
