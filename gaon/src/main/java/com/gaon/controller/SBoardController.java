package com.gaon.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gaon.service.SBoardService;
import com.gaon.vo.AccountVO;
import com.gaon.vo.SBoardVO;
import com.gaon.vo.SCommentVO;

@Controller
@RequestMapping("/sboard")
public class SBoardController {

	@Autowired
	@Qualifier("sboardService")
	private SBoardService sboardService;
	
	@RequestMapping(value="/memberlist.action")
	public String memberListView(HttpSession session,AccountVO vo,Model model ) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		List<AccountVO> memberlist = sboardService.memberListService(vo);
		
		model.addAttribute("memberList",memberlist);
		return "sboard/memberlist";
	}
	
	@RequestMapping(value="/writesboard.action")
	@ResponseBody
	public int writeSBoard(int studentNo, int teacherNo) {
		
		try {
			sboardService.writeSBoard(studentNo,teacherNo);
		}catch(Exception ex) {
			int sboardNo = sboardService.getSBoardNoService(studentNo,teacherNo);
			return sboardNo;
		}
		
		int sboardNo = sboardService.getSBoardNoService(studentNo,teacherNo);
		return sboardNo;
	}
	
	
	
	@RequestMapping(value="/sboardlist.action")
	public String sbaordListView(HttpSession session, Model model,int memberNo) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		
		List<SBoardVO> sboardlist = sboardService.sboardListService(memberNo);
		
		model.addAttribute("sboardList",sboardlist);	
		return "sboard/sboardlist";
	}
	
	@RequestMapping(value="/viewsboard.action")
	public String scommentsView(int sboardNo, Model model,HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		List<SCommentVO> scommentslist = sboardService.scommentsListService(sboardNo);
		SBoardVO vo = sboardService.getSBoardService(sboardNo);
		model.addAttribute("vo",vo);
		model.addAttribute("scommentsList",scommentslist);
		model.addAttribute("sboardNo",sboardNo);
		return "sboard/scomment";
	}
	@RequestMapping(value="/writecomment.action", method=RequestMethod.POST)
	@ResponseBody
	public String writeComment(SCommentVO vo, HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		if(vo.getScomments()=="") {
			return "";
		}
		sboardService.writeCommentService(vo);
		List<SCommentVO> scommentslist = sboardService.messageListService(vo.getWriterNo());
		session.setAttribute("messageList",scommentslist);
		return "";
	}
	
	@RequestMapping(value="/getscommentslist.action")
	public String getSCommentList( Model model,int sboardNo,HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		List<SCommentVO> scommentslist = sboardService.scommentsListService(sboardNo);
		model.addAttribute("scommentsList",scommentslist);
		return "sboard/scommentlist";
	}
	

}
