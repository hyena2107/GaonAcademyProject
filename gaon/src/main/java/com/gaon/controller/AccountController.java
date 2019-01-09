package com.gaon.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gaon.service.AccountService;
import com.gaon.service.SBoardService;
import com.gaon.vo.AccountVO;
import com.gaon.vo.SCommentVO;
import com.gaon.common.Util;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	@Qualifier("accountService")
	private AccountService accountService;
	@Autowired
	@Qualifier("sboardService")
	private SBoardService sboardService;

	@RequestMapping(value = "/login.action", method = RequestMethod.GET)
	public String loginView() {
		return "account/login";
	}

	@RequestMapping(value = "/register.action", method = RequestMethod.GET)
	public String registerView() {
		return "account/register";
	}

	@RequestMapping(value = "/academybox.action")
	public String academyRegisterView() {
		return "account/academybox";
	}

	@RequestMapping(value = "/memberbox.action")
	public String memberRegisterView(Model model) {
		List<AccountVO> academyList = accountService.getAcademyList();
		model.addAttribute("academyList",academyList);
		return "account/memberbox";
	}

	@RequestMapping(value = "/academyloginbox.action")
	public String academyLoginView() {
		return "account/academyloginbox";
	}

	@RequestMapping(value = "/memberloginbox.action")
	public String memberLoginView() {
		return "account/memberloginbox";
	}

	@RequestMapping(value = "/auth.action")
	public String authView(Model model, int academyNo) {
		if(academyNo == 35) {
			List<AccountVO> academylist = accountService.academyListService();
			model.addAttribute("academyList", academylist);
			return "account/auth";
		}
		

		List<AccountVO> memberlist = accountService.memberListService(academyNo);
		model.addAttribute("memberList", memberlist);
		return "account/auth";
	}

	// 회원등록
	@RequestMapping(value = "/memberregister.action", method = RequestMethod.POST)
	@ResponseBody
	public String memberRegister(AccountVO vo) {
		accountService.memberRegisterService(vo);	
		
		return "/gaon";
	}

	@RequestMapping(value = "/academyregister.action", method = RequestMethod.POST)
	@ResponseBody
	public String academyRegister(AccountVO vo) {
		accountService.academyRegisterService(vo);
		return "/gaon";
	}

	// 로그인
	@RequestMapping(value = "/memberlogin.action", method = RequestMethod.POST)
	@ResponseBody
	public String memberLogin(AccountVO vo, HttpSession session) {
		AccountVO member = accountService.memberLoginService(vo);
		if (member == null) {
			return "fail";
		}
		List<SCommentVO> scommentslist = sboardService.messageListService(member.getMemberNo());
		session.setAttribute("messageList", scommentslist);
		session.setAttribute("login", member);
		return "/gaon/main.action";
	}

	@RequestMapping(value = "/academylogin.action", method = RequestMethod.POST)
	@ResponseBody
	public String academyLogin(AccountVO vo, HttpSession session) {
		AccountVO academy = accountService.academyLoginService(vo);
		if (academy == null) {
			return "fail";
		}
		session.setAttribute("login", academy);
		return "/gaon/main.action";
	}

	// 로그아웃
	@RequestMapping(value = "/logout.action")
	public String logout(HttpSession session) {
		session.removeAttribute("login");
		return "redirect:/home.action";
	}

	// 프로필수정
	@RequestMapping(value = "/updateprofile.action")
	public String updateProfileView(HttpSession session) {
		return "account/profile";
	}

	@RequestMapping(value = "/updateprofile.action", method = RequestMethod.POST)
	public String updateProfile(MultipartHttpServletRequest req, AccountVO vo) {

		MultipartFile attach = req.getFile("filename");

		if (attach != null && !attach.isEmpty()) {
			String savedFileName = Util.makeUniqueFileName(attach.getOriginalFilename());
			String path = req.getServletContext().getRealPath("/resources/upload/" + savedFileName);

			try {
				attach.transferTo(new File(path));
				vo.setSavedFileName(savedFileName);

			} catch (Exception ex) {
			}
		}

		accountService.updateProfileService(vo);
		return "redirect:/main.action";
	}

	// 학원,선생님 승인
	@RequestMapping(value = "/auth.action", method = RequestMethod.POST)
	@ResponseBody
	public String auth(int academyNo, int memberNo) {
		accountService.academyAuthService(academyNo);
		
		accountService.teacherAuthService(memberNo);
		
		return "success";
	}
	@RequestMapping(value = "/deleteteacher.action")
	@ResponseBody
	public String deleteTeacher(int memberNo) {
		System.out.println("왜 안들어와멍충아");
		
		accountService.deleteTeacherService(memberNo);
		
		return "success";
	}

	@RequestMapping(value = "/getauthlist.action")
	public String getAcademyList(Model model,int academyNo,HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		List<AccountVO> academylist = accountService.academyListService();
		model.addAttribute("academyList", academylist);
		List<AccountVO> memberlist = accountService.memberListService(academyNo);
		model.addAttribute("memberList", memberlist);
		return "account/authbox";
	}
	
	
	//선생님 상세페이지
	@RequestMapping(value = "/teacherdetail.action")
	public String teacherDetail(int memberNo,Model model,HttpSession session) {
		if(session.getAttribute("login")==null) {
			return "redirect:/home.action";
		}
		AccountVO detail = accountService.getTeacherService(memberNo);
		model.addAttribute("detail",detail);
		return "account/teacherDetail";
	}
}
