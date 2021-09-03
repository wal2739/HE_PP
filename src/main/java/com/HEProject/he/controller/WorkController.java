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
	public ModelAndView workInfo(ModelAndView mav,WorkInfoVO vo, HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork(vo, session));
		mav.setViewName("workInfo.jsp");
		return mav;
	}
	@RequestMapping("getAllWorkInfo.do")
	public ModelAndView getAllWorkInfo(ModelAndView mav,WorkInfo_ST0VO vo, HttpSession session,HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getAllWorkInfo_st0(vo, request));
		mav.setViewName("getAllWorkInfo.jsp");
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
	public ModelAndView newOrder(ModelAndView mav, WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork_toSt0(vo, session, request));
		mav.setViewName("newOrder.jsp");
		return mav;
	}
	@RequestMapping("newOrderAct.do")
	public ModelAndView newOrderAct(ModelAndView mav, OrderInfoVO vo,HttpSession session,HttpServletRequest request) {
		orderInfoService.newOrder(vo, request, session);
		mav.setViewName("newOrder.do");
		return mav;
	}
	@RequestMapping("getWorker.do")
	public ModelAndView getWorker(ModelAndView mav, WorkerInfoVO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getWorkerList(vo, session, request));
		mav.setViewName("getWorker.jsp");
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
	public ModelAndView cancelWork(ModelAndView mav,WorkInfoVO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork(vo, session));
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
	public ModelAndView cancelWorkList(ModelAndView mav,WorkInfo_ST0VO vo,HttpSession session,HttpServletRequest request) {
		mav.addObject("list",workInfoService.getAllWork_toSt3(vo, session, request));
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
		//MultipartFile로 파일 정보를 받음
		MultipartFile uploadFile = vo.getUploadFile();
		//randomUUID로 랜덤값 받음
		String genId = UUID.randomUUID().toString().substring(5, 12);
		// realPath로 프로젝트에 fileSave 폴더에 값을 저장함
		String realPath = request.getSession().getServletContext().getRealPath("/workDataUpload/");
		
		// 만약 uploadFile이 비어있지않다면 다음과 같이 코드 실행
		if(!uploadFile.isEmpty()) {
			// originalFileName에 원본 파일명을 저장한다.
			String originalFileName = uploadFile.getOriginalFilename();
			// saveFileName에 랜덤값이 저장된 genID와 파일명을 저장한다.
			saveFileName = genId + "." + FilenameUtils.getExtension(originalFileName);
			// 아래 함수로 파일을 업로드한다.
            uploadFile.transferTo(new File(realPath+saveFileName));
			// 다음 함수로 파일명을 vo에 저장한다.
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
        
        // contentType 가져오고
 
        File file = new File(realPath);
        long fileLength = file.length();
        // 데이터베이스에 없는 정보는 파일로 만들어서 가져온다. 이 경우엔 Content-Length 가져온 것
 
        response.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\";");
        response.setHeader("Content-Transfer-Encoding", "binary"); 
        response.setHeader("Content-Type", "jpg");
        response.setHeader("Content-Length", "" + fileLength);
        response.setHeader("Pragma", "no-cache;");
        response.setHeader("Expires", "-1;");
        // 그 정보들을 가지고 reponse의 Header에 세팅한 후
        
		try {
            // saveFileName을 파라미터로 넣어 inputStream 객체를 만들고 
            // response에서 파일을 내보낼 OutputStream을 가져와서  
			FileInputStream fis = new FileInputStream(realPath);
			OutputStream out = response.getOutputStream();
            int readCount = 0;
            byte[] buffer = new byte[1024];
            // 파일 읽을 만큼 크기의 buffer를 생성한 후 
            while ((readCount = fis.read(buffer)) != -1) {
                out.write(buffer, 0, readCount);
                // outputStream에 씌워준다
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
	
	@RequestMapping("getFinishedWork.do")
	public ModelAndView getFinishedWork(ModelAndView mav,WorkInfo_ST2VO vo,HttpSession session, HttpServletRequest request) {
		mav.addObject("vo",workInfoService.getWorkInfo_st2_Indi(vo, session, request));
		mav.setViewName("getFinishedWork.jsp");
		return mav;
	}
	
	
}


