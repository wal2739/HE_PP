package com.HEProject.he.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.UUID;

import javax.imageio.IIOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.HEProject.he.aWorkInfo.AWorkInfoService;
import com.HEProject.he.aWorkInfo.AWorkInfoVO;
import com.HEProject.he.clientInfo.ClientInfoService;
import com.HEProject.he.clientInfo.ClientInfoVO;
import com.HEProject.he.orderInfo.OrderInfoForIndiVO;
import com.HEProject.he.orderInfo.OrderInfoService;
import com.HEProject.he.orderInfo.OrderInfoVO;
import com.HEProject.he.orderInfo.OrderInfo_st2VO;
import com.HEProject.he.workDataInfo.WorkDataInfoService;
import com.HEProject.he.workDataInfo.WorkDataInfoVO;
import com.HEProject.he.workInfo.WorkInfoService;
import com.HEProject.he.workInfo.WorkInfoVO;
import com.HEProject.he.workInfo.WorkInfo_ST0VO;
import com.HEProject.he.workInfo.WorkInfo_ST1VO;
import com.HEProject.he.workInfo.WorkInfo_ST2VO;
import com.HEProject.he.workInfo.WorkerInfoVO;

@Controller
public class WorkController {

	
	@Autowired
	WorkInfoService workInfoService;
	
	@Autowired
	ClientInfoService clientInfoService;

	@Autowired
	OrderInfoService orderInfoService;
	
	@Autowired
	AWorkInfoService aWorkInfoService;
	
	@Autowired
	WorkDataInfoService workDataInfoService;
	
	@RequestMapping("workMain.do")
	public ModelAndView workMain(ModelAndView mav, HttpSession session) {
		mav.setViewName("workMain.jsp");
		return mav;
	}
	
	@RequestMapping("newWork.do")
	public ModelAndView newWork(ModelAndView mav,ClientInfoVO clientVO, HttpSession session) {
		mav.addObject("cInfo",clientInfoService.getAllClientInfo(clientVO, session));
		mav.setViewName("newWork.jsp");
		return mav;
	}
	@RequestMapping("newWorkACT.do")
	public ModelAndView newWorkACT(ModelAndView mav,WorkInfoVO vo, HttpSession session,HttpServletRequest request) {
		mav.setViewName(workInfoService.newWork(vo, session, request));
		return mav;
	}
	@RequestMapping("workInfo.do")
	public ModelAndView workInfo(ModelAndView mav, HttpSession session) {
		mav.addObject("list",workInfoService.getWork_Ass(session));
		mav.setViewName("workInfo.jsp");
		return mav;
	}
	@RequestMapping("getAllWorkInfo.do")
	public ModelAndView getAllWorkInfo(ModelAndView mav,WorkInfo_ST0VO vo, HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getAllWorkInfo_st0(vo, request));
		mav.setViewName("getAllWorkInfo.jsp");
		return mav;
	}
	@RequestMapping("getAllWorkInfoAss.do")
	public ModelAndView getAllWorkInfoAss(ModelAndView mav,HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getWorkInfo_Ass(request, session));
		mav.setViewName("getAllWorkInfoAss.jsp");
		return mav;
	}
	
	@RequestMapping("modifyWork.do")
	public ModelAndView modifyWork(ModelAndView mav,WorkInfo_ST0VO vo,ClientInfoVO clientVO, HttpSession session,HttpServletRequest request) {
		mav.addObject("cInfo",clientInfoService.getAllClientInfo(clientVO, session));
		mav.addObject("vo",workInfoService.getAllWorkInfo_st0(vo, request));
		mav.setViewName("modifyWork.jsp");
		return mav;
	}
	@RequestMapping("modifyWorkAct.do")
	public ModelAndView modifyWorkAct(ModelAndView mav,WorkInfoVO vo,HttpSession session,HttpServletRequest request) {
		mav.setViewName(workInfoService.modifyWork(vo, session, request));
		return mav;
	}
	@RequestMapping("workOrderInfo.do")
	public ModelAndView workOrderinfo(ModelAndView mav,OrderInfo_st2VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",orderInfoService.getOrderNWorkInfo(vo, session));
		mav.setViewName("workOrderInfo.jsp");
		return mav;
	}
	@RequestMapping("newOrder.do")
	public ModelAndView newOrder(ModelAndView mav) {
		mav.setViewName("newOrder.jsp");
		return mav;
	}
	@RequestMapping("order_frame01.do")
	private ModelAndView order_frame01(ModelAndView mav, WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork_toSt0(vo, session, request));
		mav.setViewName("order_frame01.jsp");
		return mav;
	}
	@RequestMapping("newOrderAct.do")
	public ModelAndView newOrderAct(ModelAndView mav, OrderInfoVO vo,HttpSession session,HttpServletRequest request) {
		orderInfoService.newOrder(vo, request, session);
		mav.setViewName("newOrder.do");
		return mav;
	}
	@RequestMapping("order_frame02.do")
	public ModelAndView getWorker(ModelAndView mav, WorkerInfoVO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getWorkerList(vo, session, request));
		mav.setViewName("order_frame02.jsp");
		return mav;
	}
	@RequestMapping("delOrder.do")
	public ModelAndView delOrder(ModelAndView mav, OrderInfo_st2VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",orderInfoService.getOrderNWorkInfo(vo, session));
		mav.setViewName("delOrder.jsp");
		return mav;
	}
	@RequestMapping("delAct.do")
	public ModelAndView delAct(ModelAndView mav, OrderInfoVO vo,HttpSession session,HttpServletRequest request) {
		orderInfoService.delOrder(vo, request, session);
		mav.setViewName("delOrder.do");
		return mav;
	}
	@RequestMapping("getOrderInfo.do")
	public ModelAndView getOrderInfo(ModelAndView mav,OrderInfo_st2VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",orderInfoService.getOrderInfo(vo,request , session));
		mav.setViewName("getOrderInfo.jsp");
		return mav;
	}
	@RequestMapping("workMainForIndi.do")
	public ModelAndView workMainForIndi(ModelAndView mav,HttpSession session,HttpServletRequest request) {
		mav.setViewName("workMainForIndi.jsp");
		return mav;
	}
	@RequestMapping("workInfoForIndi.do")
	public ModelAndView workInfoForIndi(ModelAndView mav,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork_toSt1(session, request));
		mav.setViewName("workInfoForIndi.jsp");
		return mav;
	}
	@RequestMapping("orderInfoForIndi.do")
	public ModelAndView orderInfoForIndi(ModelAndView mav,OrderInfoForIndiVO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",orderInfoService.getAllOrderForIndi(vo, request, session));
		mav.setViewName("orderInfoForIndi.jsp");
		return mav;
	}@RequestMapping("orderInfo.do")
	public ModelAndView orderInfo(ModelAndView mav,OrderInfoForIndiVO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",orderInfoService.getOrderForIndi(vo, request, session));
		mav.setViewName("orderInfo.jsp");
		return mav;
	}
	@RequestMapping("modifyOrder.do")
	public ModelAndView modifyOrder(ModelAndView mav,OrderInfoVO vo,HttpSession session,HttpServletRequest request) {
		orderInfoService.modifyOrder(vo, request, session);
		mav.setViewName("orderInfoForIndi.do");
		return mav;
	}
	@RequestMapping("cancelWork.do")
	public ModelAndView cancelWork(ModelAndView mav,HttpSession session) {
		mav.addObject("list",workInfoService.getWork_Ass(session));
		mav.setViewName("cancelWork.jsp");
		return mav;
	}
	
	@RequestMapping("cancelWorkListForIndi.do")
	public ModelAndView cancelWorkForIndi(ModelAndView mav,WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork_toSt3ForIndi(vo, session, request));
		mav.setViewName("cancelWorkListForIndi.jsp");
		return mav;
	}
	
	@RequestMapping("cancelWorkList.do")
	public ModelAndView cancelWorkList(ModelAndView mav,HttpSession session) {
		mav.addObject("list",workInfoService.getCancelWork_Ass(session));
		mav.setViewName("cancelWorkList.jsp");
		return mav;
	}
	
	@RequestMapping("getAllWorkInfo_ST3.do")
	public ModelAndView getAllWorkInfo_ST3(ModelAndView mav,WorkInfo_ST0VO vo, HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getAllWorkInfo_st3(vo, request));
		mav.setViewName("getAllWorkInfo.jsp");
		return mav;
	}
	
	@RequestMapping("cancelWorkAct.do")
	public ModelAndView cancelWorkAct(ModelAndView mav,WorkInfoVO vo,HttpSession session,HttpServletRequest request) {
		workInfoService.cancelWork(vo, session, request);
		mav.setViewName("cancelWork.do");
		return mav;
	}
	
	@RequestMapping("showWorkInfo_st0.do")
	public ModelAndView showWorkInfo_st0(ModelAndView mav,WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getAllWork_toSt0(vo, request));
		mav.setViewName("showWorkInfo_st0.jsp");
		return mav;
	}
	
	@RequestMapping("showWorkInfo_st1.do")
	public ModelAndView showWorkInfo_st1(ModelAndView mav,WorkInfo_ST1VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getAllWork_toSt1(vo, request));
		mav.setViewName("showWorkInfo_st1.jsp");
		return mav;
	}
	
	@RequestMapping("workESCheck.do")
	public ModelAndView workESCheck(ModelAndView mav,WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getAllWorkInfo_st0(vo, request));
		mav.setViewName("workESCheck.jsp");
		return mav;
	}
	@RequestMapping("workESAct.do")
	public ModelAndView workESAct(ModelAndView mav,AWorkInfoVO vo,HttpSession session,HttpServletRequest request) {
		mav.setViewName(aWorkInfoService.newAworkInfo(request, vo));
		return mav;
	}
	
	@RequestMapping("workData.do")
	public ModelAndView workData(ModelAndView mav,WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork_toSt2ForIndiData(vo, session, request));
		mav.setViewName("workData.jsp");
		return mav;
	}
	
	
	@RequestMapping("newWorkData.do")
	public ModelAndView newWorkData(ModelAndView mav,WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("wCode",request.getParameter("wCode"));
		mav.setViewName("newWorkData.jsp");
		return mav;
	}
	
	@RequestMapping("WorkDataUpload.do")
	public String testUpload(WorkDataInfoVO vo, HttpServletRequest request) throws IllegalStateException, IOException{
		String saveFileName ="";
		//MultipartFile??? ?????? ????????? ??????
		MultipartFile uploadFile = vo.getUploadFile();
		//randomUUID??? ????????? ??????
		String genId = UUID.randomUUID().toString().substring(5, 12);
		// realPath??? ??????????????? fileSave ????????? ?????? ?????????
		String realPath = request.getSession().getServletContext().getRealPath("/workDataUpload/");
		
		// ?????? uploadFile??? ????????????????????? ????????? ?????? ?????? ??????
		if(!uploadFile.isEmpty()) {
			// originalFileName??? ?????? ???????????? ????????????.
			String originalFileName = uploadFile.getOriginalFilename();
			// saveFileName??? ???????????? ????????? genID??? ???????????? ????????????.
			saveFileName = genId + "." + FilenameUtils.getExtension(originalFileName);
			// ?????? ????????? ????????? ???????????????.
            uploadFile.transferTo(new File(realPath+saveFileName));
			// ?????? ????????? ???????????? vo??? ????????????.
		}
		workDataInfoService.workDataUpload(saveFileName, request);
		saveFileName = "";
		return "newWorkData.do";

	}
	
	@RequestMapping("workDataDownload.do")
	public void fileDownload(HttpServletResponse response,HttpServletRequest request) {
        String fileName = (String)request.getParameter("dtName");
        String realPath = request.getSession().getServletContext().getRealPath("/workDataUpload/");
        realPath = realPath+fileName;
        
        // contentType ????????????
 
        File file = new File(realPath);
        long fileLength = file.length();
        // ????????????????????? ?????? ????????? ????????? ???????????? ????????????. ??? ????????? Content-Length ????????? ???
 
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
        response.setHeader("Content-Transfer-Encoding", "binary"); 
        response.setHeader("Content-Type", "jpg");
        response.setHeader("Content-Length", "" + fileLength);
        response.setHeader("Pragma", "no-cache;");
        response.setHeader("Expires", "-1;");
        // ??? ???????????? ????????? reponse??? Header??? ????????? ???
        
		try {
            // saveFileName??? ??????????????? ?????? inputStream ????????? ????????? 
            // response?????? ????????? ????????? OutputStream??? ????????????  
			FileInputStream fis = new FileInputStream(realPath);
			OutputStream out = response.getOutputStream();
            int readCount = 0;
            byte[] buffer = new byte[1024];
            // ?????? ?????? ?????? ????????? buffer??? ????????? ??? 
            while ((readCount = fis.read(buffer)) != -1) {
                out.write(buffer, 0, readCount);
                // outputStream??? ????????????
            }
        } catch (Exception e) {
            System.err.println(e);
        }
	}
	
	@RequestMapping("workDataIMG.do")
	public ModelAndView workDataIMG(ModelAndView mav,HttpServletRequest request) {
		mav.addObject("vo",workDataInfoService.getDataName(request));
		mav.setViewName("workDataIMG.jsp");
		return mav;
	}
	
	@RequestMapping("finishedWorkList.do")
	public ModelAndView finishedWorkList(ModelAndView mav,WorkInfo_ST2VO vo,HttpSession session) {
		mav.addObject("list",workInfoService.getAllWorkInfo_st2_Indi(vo,session));
		mav.setViewName("finishedWorkList.jsp");
		return mav;
	}
	@RequestMapping("finishedWorkList_Ass.do")
	public ModelAndView finishedWorkList_Ass(ModelAndView mav,WorkInfo_ST2VO vo,HttpSession session) {
		mav.addObject("list",workInfoService.getAllWorkInfo_st2_Ass(vo,session));
		mav.setViewName("finishedWorkList_Ass.jsp");
		return mav;
	}
	@RequestMapping("getFinishedWork.do")
	public ModelAndView getFinishedWork(ModelAndView mav,WorkInfo_ST2VO vo,HttpSession session, HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getWorkInfo_st2(vo, session, request));
		mav.setViewName("getFinishedWork.jsp");
		return mav;
	}
	
	
}


