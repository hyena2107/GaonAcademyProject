package com.gaon.vo;

public class CourseVO {
	
	private int courseListNo;
	private int courseNo;
	private int academyNo;
	private int memberNo;
	private String courseName;
	private String content;
	private String teacherName;
	private boolean deleted;
	
	
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public int getCourseNo() {
		return courseNo;
	}
	public void setCourseNo(int courseNo) {
		this.courseNo = courseNo;
	}
	public int getAcademyNo() {
		return academyNo;
	}
	public void setAcademyNo(int academyNo) {
		this.academyNo = academyNo;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCourseListNo() {
		return courseListNo;
	}
	public void setCourseListNo(int courseListNo) {
		this.courseListNo = courseListNo;
	}

}
