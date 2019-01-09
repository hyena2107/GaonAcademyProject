package com.gaon.vo;

import java.util.Date;

public class SCommentVO {
	private int scommentNo;
	private int sboardNo;
	private String scomments;	
	private Date regDate;
	private String savedFileName;
	private int writerNo;
	private String writer;
	private int receiverNo;
	private String receiver;
	
	
	public int getWriterNo() {
		return writerNo;
	}
	public void setWriterNo(int writerNo) {
		this.writerNo = writerNo;
	}
	public int getReceiverNo() {
		return receiverNo;
	}
	public void setReceiverNo(int receiverNo) {
		this.receiverNo = receiverNo;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public int getScommentNo() {
		return scommentNo;
	}
	public void setScommentNo(int scommentNo) {
		this.scommentNo = scommentNo;
	}
	public int getSboardNo() {
		return sboardNo;
	}
	public void setSboardNo(int sboardNo) {
		this.sboardNo = sboardNo;
	}
	public String getScomments() {
		return scomments;
	}
	public void setScomments(String scomments) {
		this.scomments = scomments;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getSavedFileName() {
		return savedFileName;
	}
	public void setSavedFileName(String savedFileName) {
		this.savedFileName = savedFileName;
	} 

}
