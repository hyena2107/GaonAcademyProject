package com.gaon.service;

import com.gaon.vo.AttendVo;



public interface AttendService {
	//인터페이스 = 메소드들을  담은 대형틀


	

	void attendCheckService(int studentNo, int courseNo, int attendType, String attendDate);
	
 
}
