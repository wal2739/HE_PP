package com.HEProject.he.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.HEProject.he.boInfo.BOInfoService;
import com.HEProject.he.boInfo.BOInfoVO;
import com.HEProject.he.boardInfo.BoardInfoService;
import com.HEProject.he.boardInfo.BoardInfoVO;
import com.HEProject.he.clientInfo.ClientInfoService;
import com.HEProject.he.clientInfo.ClientInfoVO;
import com.HEProject.he.groupAssInfo.GroupAssInfoService;
import com.HEProject.he.groupAssInfo.GroupAssInfoVO;
import com.HEProject.he.groupAssInfo.GrouperInfoService;
import com.HEProject.he.groupAssInfo.GrouperInfoVO;
import com.HEProject.he.groupAssInfo.impl.GroupAssInfoDAO;
import com.HEProject.he.groupAssInfo.impl.GrouperInfoServiceImpl;
import com.HEProject.he.grouperEquipInfo.GrouperEquipInfoService;
import com.HEProject.he.grouperEquipInfo.GrouperEquipInfoVO;
import com.HEProject.he.messageInfo.MessageInfoService;
import com.HEProject.he.messageInfo.MessageInfoVO;
import com.HEProject.he.messageInfo.MsgInfoVO;
import com.HEProject.he.usersInfo.SearchInfoVO;
import com.HEProject.he.usersInfo.UsersInfoService;
import com.HEProject.he.usersInfo.UsersInfoVO;
import com.HEProject.he.vehicleInfo.VehicleService;
import com.HEProject.he.vehicleInfo.VehicleVO;
import com.HEProject.he.workersInfo.WorkersInfoService;
import com.HEProject.he.workersInfo.WorkersInfoVO;

@Controller
public class MainController {
	
	@Autowired
	BOInfoService boInfoService;
	
	@Autowired
	UsersInfoService usersInfoService;
	
	@Autowired
	WorkersInfoService workersInfoService;
	
	@Autowired
	VehicleService vehicleService;
	
	@Autowired
	GroupAssInfoService groupAssInfoService;
	
	@Autowired
	MessageInfoService messageInfoService;
	
	@Autowired
	ClientInfoService clientInfoService;
	
	@Autowired
	GrouperInfoService grouperInfoService;
	
	@Autowired
	GrouperEquipInfoService grouperEquipInfoService;
	
	@Autowired
	BoardInfoService boardInfoService;
	
	@RequestMapping("main.do")
	public ModelAndView main(ModelAndView mav) {
		mav.addObject("list",boardInfoService.getAllBoard_main());
		mav.setViewName("main.jsp");
		return mav;
	}
	
	@RequestMapping("RegiForIndividual.do")
	public String RegiForIndividual() {
		return "RegiForIndividual.jsp";
	}//?????? ???????????? ?????? ??????
	
	
	@RequestMapping("showBO.do")
	public ModelAndView showBO(ModelAndView mav, BOInfoVO vo, HttpSession session) {
		mav.addObject("vo",boInfoService.getBOInfo(vo, session));
		mav.setViewName("showBO.jsp");
		return mav;
	}//????????? ??????&?????? ??????

	@RequestMapping("newBO.do")
	public ModelAndView newBO(ModelAndView mav,UsersInfoVO vo, HttpSession session) {
		mav.addObject("userInfo",usersInfoService.getUser(vo, session));
		mav.setViewName("newBO.jsp");
		return mav;
	}
	
	@RequestMapping("createBO.do")
	public ModelAndView createBO(ModelAndView mav,BOInfoVO vo, HttpSession session, HttpServletRequest request) {
		System.out.println("????????? ?????? ??????");
		mav.setViewName(boInfoService.createBO(vo, session, request));
		return mav;
	}
	
	@RequestMapping(value = "modifyBO.do")
	public ModelAndView modifyBO_GET(ModelAndView mav,BOInfoVO vo, HttpSession session, HttpServletRequest request,UsersInfoVO vo1) {
		System.out.println("????????? ?????? ??????");
		mav.addObject("userInfo",usersInfoService.getUser(vo1, session));
		mav.addObject("boInfo",boInfoService.getBOInfo(vo, session));
		mav.setViewName("modifyBO.jsp");
		return mav;
	}
	
	@RequestMapping(value = "modifyBOAct.do")
	public ModelAndView modifyBO_POST(ModelAndView mav,BOInfoVO vo, HttpSession session, HttpServletRequest request,UsersInfoVO vo1) {
		System.out.println("????????? ??????");
		mav.setViewName(boInfoService.modifyBO(vo, session, request));
		return mav;
	}
	
	@RequestMapping(value = "deleteBO.do")
	public ModelAndView deleteBO(ModelAndView mav,BOInfoVO vo, HttpSession session, HttpServletRequest request,UsersInfoVO vo1) {
		System.out.println("????????? ??????");
		mav.setViewName(boInfoService.deleteBO(vo, session, request));
		return mav;
	}
	
	@RequestMapping(value = "WorkerInfo.do")
	public ModelAndView workerInfo(ModelAndView mav,WorkersInfoVO vo, HttpSession session) {
		System.out.println("??????????????? ??????????????? ??????");
		mav.addObject("wokersInfo",workersInfoService.getAllWorker(vo,session));
		mav.setViewName("WorkerInfo.jsp");
		return mav;
	}
	
	@RequestMapping(value = "newWorker.do")
	public ModelAndView newWorker(ModelAndView mav,WorkersInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("??????????????? ??????");
		mav.setViewName(workersInfoService.newWorker(vo,session,request));
		return mav;
	}
	
	@RequestMapping(value = "deleteWorker.do")
	public ModelAndView deleteWorker(ModelAndView mav,WorkersInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("??????????????? ??????");
		mav.setViewName(workersInfoService.deleteWorker(vo,request));
		return mav;
	}
	
	@RequestMapping(value = "showVehicleInfo.do")
	public ModelAndView showVehicleInfo(ModelAndView mav,VehicleVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????????????????? ??????");
		mav.addObject("vehicleInfo",vehicleService.getAllVehicleInfo(vo,session));
		mav.setViewName("showVehicleInfo.jsp");
		return mav;
	}
	
	@RequestMapping(value = "vehicleInfo.do")
	public ModelAndView vehicleInfo(ModelAndView mav,VehicleVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????????????????? ??????");
		mav.setViewName("vehicleInfo.jsp");
		return mav;
	}
	
	@RequestMapping(value = "newVehicle.do")
	public ModelAndView newVehicle(ModelAndView mav,VehicleVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????????");
		mav.setViewName(vehicleService.newVehicle(vo, request, session));
		return mav;
	}
	
	@RequestMapping(value = "deleteVehicle.do")
	public ModelAndView deleteVehicle(ModelAndView mav,VehicleVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("??????????????????");
		mav.setViewName(vehicleService.deleteVehicle(vo, request, session));
		return mav;
	}
	@RequestMapping(value = "modifyVehicle.do")
	public ModelAndView modifyVehicle(ModelAndView mav,VehicleVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ?????? ?????? ???????????? ??????");
		mav.addObject("vehicleInfo",vehicleService.getVehicleInfo(vo, request, session));
		mav.setViewName("modifyVehicle.jsp");
		return mav;
	}
	
	@RequestMapping(value = "modifyVehicleAC.do")
	public ModelAndView modifyVehicleAC(ModelAndView mav,VehicleVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ?????? ??????");
		mav.setViewName(vehicleService.modifyVehicle(vo, request, session));
		return mav;
	}
	
	@RequestMapping(value = "showMyGroup.do")
	public ModelAndView showMyGroup(ModelAndView mav,GroupAssInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("??????/?????? ??????");
		mav.addObject("nowAsslist",groupAssInfoService.getAllGroupInfo(vo, session));
		mav.addObject("newAsslist",groupAssInfoService.getAllAssInfo(vo, session));
		mav.setViewName("showMyGroup.jsp");
		return mav;
	}
	
	@RequestMapping(value = "getOffer.do")
	public ModelAndView getOffer(ModelAndView mav,GroupAssInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ?????? ??????/??????");
		mav.addObject("list",groupAssInfoService.getOffer(vo, session));
		mav.setViewName("getOffer.jsp");
		return mav;
	}
	@RequestMapping(value = "modifyOffer.do")
	public ModelAndView modifyOffer(ModelAndView mav,GroupAssInfoVO vo,BOInfoVO boVO, MessageInfoVO msgVO,HttpSession session, HttpServletRequest request) {
		System.out.println("?????? ?????? ??????/?????? action");
		groupAssInfoService.modifyOffer(vo, boVO, msgVO, session, request);
		mav.setViewName("getOffer.do");
		return mav;
	}
	
	@RequestMapping(value = "delGroup.do")
	public ModelAndView delGroup(ModelAndView mav,GroupAssInfoVO vo,HttpSession session, HttpServletRequest request) {
		System.out.println("?????? ??????");
		mav.addObject("list",groupAssInfoService.getAllGroupInfo(vo, session));
		mav.setViewName("delGroup.jsp");
		return mav;
	}
	
	@RequestMapping(value = "delGroupAction.do")
	public ModelAndView delGroupAction(ModelAndView mav,GroupAssInfoVO vo,HttpSession session, HttpServletRequest request) {
		System.out.println("?????? ??????");
		groupAssInfoService.deleteGroup(vo, session, request);
		mav.setViewName("showMyGroup.do");
		return mav;
	}
		
	@RequestMapping(value = "showAssList.do")
	public ModelAndView showAssList(ModelAndView mav,GroupAssInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("??????/?????? ??????");
		mav.addObject("newAsslist",groupAssInfoService.getAllAssInfo(vo, session));
		mav.setViewName("showMyGroup.jsp");
		return mav;
	}
	@RequestMapping(value = "newAci.do")
	public ModelAndView newAci(ModelAndView mav,GroupAssInfoVO vo, MessageInfoVO msgVO, BOInfoVO boVO, HttpSession session, HttpServletRequest request) {
		System.out.println("??????/?????? ?????? ??????");
		groupAssInfoService.newAci(vo, msgVO, boVO, session, request);
		mav.setViewName("showAssList.do");
		return mav;
	}
	
	@RequestMapping(value = "showGrouper.do")
	public ModelAndView showGrouper(ModelAndView mav,GroupAssInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ?????? ??????");
		mav.addObject("list", grouperInfoService.getAllGrouperInfo(request, session));
		mav.setViewName("showGrouper.jsp");
		return mav;
	}
	@RequestMapping(value = "getGrouperInfo.do")
	public ModelAndView getGrouperInfo(ModelAndView mav,GrouperInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ?????? ??????");
		mav.addObject("vo", grouperInfoService.getGrouperInfo(vo, request, session));
		mav.addObject("list", grouperEquipInfoService.getAllEquipInfo(request, session));
		mav.setViewName("grouperInfo.jsp");
		return mav;
	}
	@RequestMapping(value = "getGrouperEquipInfo.do")
	public ModelAndView getGrouperEquipInfo(ModelAndView mav, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ?????? ?????? ??????");
		mav.addObject("list", grouperEquipInfoService.getAllEquipInfo(request, session));
		mav.setViewName("getGrouperEquipInfo.jsp");
		return mav;
	}
	
	@RequestMapping(value = "getEquipInfo.do")
	public ModelAndView getEquipList(ModelAndView mav,HttpServletRequest request) {
		System.out.println("?????? ?????? ??????");
		mav.addObject("list", grouperInfoService.searchGrouperEquipInfo(request));
		mav.setViewName("searchGrouperEquipInfo.jsp");
		return mav;
	}
	
	@RequestMapping(value = "searchGrouper.do")
	public ModelAndView searchGrouper(ModelAndView mav,SearchInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ??????/?????? ??????");
		mav.addObject("list",groupAssInfoService.searchGrouper(vo, session, request));
		mav.setViewName("searchGrouper.jsp");
		return mav;
	}
	@RequestMapping(value = "searchGrouperInfo.do")
	public ModelAndView searchGrouperInfo(ModelAndView mav,SearchInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("?????? ??????/?????? ??????");
		mav.addObject("vo",grouperInfoService.searchGrouperInfo(vo, session, request));
		mav.setViewName("searchGrouperInfo.jsp");
		return mav;
	}
	
	@RequestMapping(value = "sendOffer.do")
	public ModelAndView sendOffer(ModelAndView mav,GroupAssInfoVO vo, MessageInfoVO msgVO, BOInfoVO boVO, HttpSession session, HttpServletRequest request) {
		System.out.println("?????? ?????? ??????");
		groupAssInfoService.sendOffer(vo, msgVO, boVO, session, request);
		mav.setViewName("searchGrouper.do");
		return mav;
	}
	
	@RequestMapping(value = "getAci.do")
	public ModelAndView getAci(ModelAndView mav, HttpSession session) {
		System.out.println("?????? ?????? ??????");
		mav.addObject("list",groupAssInfoService.getAci(session));
		mav.setViewName("getAci.jsp");
		return mav;
	}
	
	@RequestMapping(value = "modifyAci.do")
	public ModelAndView modifyAci(ModelAndView mav,GroupAssInfoVO vo, HttpSession session, HttpServletRequest request) {
		System.out.println("?????? ??????/?????? Action");
		groupAssInfoService.modifyAci(vo, session, request);
		mav.setViewName("getAci.do");
		return mav;
	}
	
	@RequestMapping(value = "delGrouper.do")
	public ModelAndView delGrouper(ModelAndView mav,GroupAssInfoVO vo, HttpSession session, HttpServletRequest request) {
		System.out.println("?????? ??????");
		mav.addObject("list", grouperInfoService.getAllGrouperInfo(request, session));
		mav.setViewName("delGrouper.jsp");
		return mav;
	}
	
	@RequestMapping(value = "delGrouperAct.do")
	public ModelAndView delGrouperAct(ModelAndView mav,GroupAssInfoVO vo, HttpSession session, HttpServletRequest request) {
		System.out.println("?????? ?????? Action");
		groupAssInfoService.delGrouper(vo, session, request);
		mav.setViewName("delGrouper.jsp");
		return mav;
	}
	
	@RequestMapping(value = "messageCheck.do")
	public ModelAndView messageCheck(ModelAndView mav,MsgInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ?????? ??????");
		mav.addObject("list",messageInfoService.getAllMessage(vo, session, request));
		mav.setViewName("messageCheck.jsp");
		return mav;
	}
	
	@RequestMapping(value = "showClient.do")
	public ModelAndView showClient(ModelAndView mav,ClientInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ??????");
		mav.addObject("list",clientInfoService.getAllClientInfo(vo, session));
		mav.setViewName("showClient.jsp");
		return mav;
	}
	
	@RequestMapping(value = "newClient.do")
	public ModelAndView newClient(ModelAndView mav,ClientInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ?????? ??????");
		mav.setViewName("newClient.jsp");
		return mav;
	}
	@RequestMapping(value = "newClientAct.do")
	public ModelAndView newClientAct(ModelAndView mav,ClientInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ?????? act");
		clientInfoService.newClient(vo, request, session);
		mav.setViewName("newClient.jsp");
		return mav;
	}
	
	@RequestMapping(value = "modifyClient.do")
	public ModelAndView modifyClient(ModelAndView mav,ClientInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ?????? ??????");
		mav.addObject("vo",clientInfoService.getClientInfo(vo, request, session));
		mav.setViewName("modifyClient.jsp");
		return mav;
	}
	
	@RequestMapping(value = "modifyClientAct.do")
	public ModelAndView modifyClientAct(ModelAndView mav,ClientInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ?????? act");
		clientInfoService.modifyClient(vo, request, session);
		mav.setViewName("showClient.do");
		return mav;
	}
	
	@RequestMapping(value = "delClient.do")
	public ModelAndView delClient(ModelAndView mav,ClientInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ??????");
		mav.addObject("list",clientInfoService.getAllClientInfo(vo, session));
		mav.setViewName("delClient.jsp");
		return mav;
	}
	
	@RequestMapping(value = "delClientAct.do")
	public ModelAndView delClientAct(ModelAndView mav,ClientInfoVO vo, HttpSession session,HttpServletRequest request) {
		System.out.println("????????? ?????? act");
		clientInfoService.delClient(vo, request, session);
		mav.setViewName("delClient.do");
		return mav;
	}

	
}
