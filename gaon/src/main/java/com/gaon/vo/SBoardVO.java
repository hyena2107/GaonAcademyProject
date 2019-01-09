package com.gaon.vo;

import java.util.List;

public class SBoardVO {
	
	private int sboardNo;
	private int teacherNo;
	private int studentNo;
	private String studentName;
	private String teacherName;
	
	private List<SCommentVO> scommentsList;
	
	
	
	
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public List<SCommentVO> getScommentsList() {
		return scommentsList;
	}
	public void setScommentsList(List<SCommentVO> scommentsList) {
		this.scommentsList = scommentsList;
	}
	public int getSboardNo() {
		return sboardNo;
	}
	public void setSboardNo(int sboardNo) {
		this.sboardNo = sboardNo;
	}
	public int getTeacherNo() {
		return teacherNo;
	}
	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	
	
}
