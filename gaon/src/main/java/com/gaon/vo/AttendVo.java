package com.gaon.vo;

public class AttendVo {

	private int attendNo;
	private int enrollNo;
	private String courseDate;
	private int attendType;
	private int attendanceRate;
	
	
	public int getAttendNo() {
		return attendNo;
	}
	public void setAttendNo(int attendNo) {
		this.attendNo = attendNo;
	}

	public int getEnrollNo() {
		return enrollNo;
	}
	public void setEnrollNo(int enrollNo) {
		this.enrollNo = enrollNo;
	}
	public String getCourseDate() {
		return courseDate;
	}
	public void setCourseDate(String courseDate) {
		this.courseDate = courseDate;
	}
	public int getAttendType() {
		return attendType;
	}
	public void setAttendType(int attendType) {
		this.attendType = attendType;
	}
	public int getAttendanceRate() {
		return attendanceRate;
	}
	public void setAttendanceRate(int attendanceRate) {
		this.attendanceRate = attendanceRate;
	}
	
	
}
