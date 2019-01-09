package com.gaon.dao;
import com.gaon.vo.AttendVo;


public interface AttendDao {






	void attendCheckDao(int studentNo, int courseNo, int attendType, String attendDate);
}
