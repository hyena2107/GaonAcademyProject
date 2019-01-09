package com.gaon.dao;

import java.util.HashMap;

import com.gaon.mapper.AttendMapper;
import com.gaon.vo.AttendVo;


public class AttendDaoImpl implements AttendDao{
	
	private AttendMapper attendMapper;

	
	public void setAttendMapper(AttendMapper attendMapper) {
		this.attendMapper = attendMapper;
	}
	
	@Override
	public void attendCheckDao(int studentNo, int courseNo, int attendType, String attendDate) {
		HashMap<String,Object> params = new HashMap<>();
		
		params.put("studentNo", studentNo);
		params.put("courseNo", courseNo);		
		params.put("attendType", attendType);
		params.put("attendDate", attendDate);
		
		
		
		attendMapper.attendCheckMapper(params);
	}

	
	
}
