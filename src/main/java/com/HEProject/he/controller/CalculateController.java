package com.HEProject.he.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.HEProject.he.receipt.Receipt_ViewService;
import com.HEProject.he.workInfo.WorkInfoService;

@Controller
public class CalculateController {
	
	@Autowired
	WorkInfoService workInfoService;
	
	@Autowired
	Receipt_ViewService receipt_ViewService;
	
	@RequestMapping("calculate.do")
	public ModelAndView calculate(ModelAndView mav, HttpServletRequest request ,HttpSession session) {
		System.out.println("정산 처리");
		mav.addObject("list",workInfoService.getWork_Ass_st2(request, session));
		mav.setViewName("calculate.jsp");
		return mav;
	}
	
	@RequestMapping("calculateAct.do")
	public ModelAndView calculateAct(ModelAndView mav, HttpSession session,HttpServletRequest request) {
		System.out.println("정산 처리 ACT");
		workInfoService.calculateAct(request, session);
		mav.setViewName("calculate.do?classType=" + request.getParameter("classType"));
		return mav;
	}
	
	@RequestMapping("receipt.do")
	public ModelAndView receipt(ModelAndView mav, HttpSession session,HttpServletRequest request) {
		System.out.println("영수증 확인");
		mav.addObject("vo", receipt_ViewService.getReceipt(request, session));
		mav.setViewName("receipt.jsp");
		return mav;
	}
	
}
