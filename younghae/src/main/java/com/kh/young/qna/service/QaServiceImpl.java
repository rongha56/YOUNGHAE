package com.kh.young.qna.service;

import java.io.File;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.young.common.Pagination;
import com.kh.young.model.vo.Attachment;
import com.kh.young.model.vo.Board;
import com.kh.young.model.vo.Member;
import com.kh.young.model.vo.PageInfo;
import com.kh.young.model.vo.Supplement;
import com.kh.young.qna.dao.QaDao;
import com.kh.young.qna.dto.AnswerRespDto;
import com.kh.young.qna.dto.ExpertRespDto;
import com.kh.young.qna.dto.QuestionInsertDto;
import com.kh.young.qna.dto.QuestionRespDto;
import com.kh.young.qna.dto.SupplementRespDto;

@Service("QaService")
public class QaServiceImpl implements QaService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private QaDao qdao;

	@Override
	public void setLoginUser(Integer userNum, HttpServletRequest request) {
		Member loginMember = qdao.setLoginUser(sqlSession,userNum);
		ServletContext application = request.getSession().getServletContext();
		application.setAttribute("loginUser", loginMember);
		System.out.println("서비스임플"+((Member)application.getAttribute("loginUser")).getUserId());
	}

	@Override
	public int getListCount() {
		return qdao.getListCount(sqlSession);
	}

	@Override
	public HashMap<String, ArrayList> selectQuestionList(Integer page, int listCount) {
		
		int currentPage = 1;
		if(page!=null) {
			currentPage=page;
		}
		PageInfo pi =  Pagination.getPageInfo(currentPage, listCount, 10);
		
		HashMap<String, ArrayList> respMap = qdao.selectQuestionList(sqlSession, pi);
		
		ArrayList<Map> writerInfo = respMap.get("writerInfo");
//		writerInfo = setWriterInfo(writerInfo);
		respMap.put("writerInfo", setWriterInfoList(writerInfo));
//		System.out.println(respMap);
		return respMap;
	}

	private Map getWriterInfo(int userNum) {
		return qdao.selectWriterInfo(sqlSession, userNum);
	}
	
	private ArrayList<Map> setWriterInfoList(ArrayList<Map> writerInfo) {
		
		for(int i=0 ; i<writerInfo.size(); i++) {
			writerInfo.get(i).put("info", setWriterInfo(writerInfo.get(i)));
		}
		return writerInfo;
	}

	private String setWriterInfo(Map paramap) {
		
		String info = "";
		
		Date thisyear = new Date(System.currentTimeMillis());
		SimpleDateFormat yyyy = new SimpleDateFormat("yyyy");
		
		int currentYear = Integer.parseInt(yyyy.format(thisyear));
		
		int birthYear = Integer.parseInt(paramap.get("USER_BIRTH").toString().split("-")[0]);
		int age = currentYear - birthYear + 1;
		info = (age/10) + "0 대";
		
		if(paramap.get("USER_GENDER").equals("F")) {
			info += " / 남";
		}else if(paramap.get("USER_GENDER").equals("M")) {
			info += " / 여";
		}
		
		return info;
	}

	@Override
	public Object getMyQna(HttpServletRequest request) {
		int userNum = ((Member)request.getSession().getServletContext().getAttribute("loginUser")).getUserNum();
		// 유저아이디로 검색 => (1)질문 수 (2)확인하지 않은 답변 여부 (3)최근 세 개 게시글의 [boardNum, 제목, 답변 수, 답변 확인 여부]
		int count = qdao.getMyQuestionCount(sqlSession, userNum);
		boolean isRead = qdao.getIsRead(sqlSession, userNum);
		HashMap<Integer, ArrayList> respMap = qdao.getMyRecentQuestions(sqlSession, userNum);
		
		return null;
	}

	@Override
	public int insertQuestion(QuestionInsertDto quest, HttpServletRequest request) {
		
		quest.setUserNum(((Member)request.getSession().getServletContext().getAttribute("loginUser")).getUserNum());
		
		MultipartFile attachment = quest.getAttachment();
		Attachment attachParam = new Attachment();
		attachParam.setAttachName(attachment.getOriginalFilename());
		if(attachment != null && !attachment.isEmpty()) {
			String[] returnArr = saveFile(attachment, request);// returnArr[0] = savePath; returnArr[1] = rename;
			if(returnArr[1] != null) {
				attachParam.setAttachPath(returnArr[0]);
				attachParam.setAttachRename(returnArr[1]);
			}
			quest.setAttachParam(attachParam);
		}
		System.out.println(quest);
		return qdao.insertQuestion(sqlSession, quest);
	}

	private String[] saveFile(MultipartFile attachment, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\uploadFiles";
		
		File folder = new File(savePath);
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		int ranNum = (int)(Math.random()*100000);
		String rawname = attachment.getOriginalFilename();
		String rename = sdf.format(new Date(System.currentTimeMillis())) + ranNum + rawname.substring(rawname.lastIndexOf("."));
		String fileRoute = folder + "\\" + rename;
		
		try {
			attachment.transferTo(new File(fileRoute));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
		String[] returnArr = new String[2];
		returnArr[0] = savePath;
		returnArr[1] = rename;
		
		return returnArr;
	}

	@Override
	public ArrayList<Supplement> searchSupplement(String keyword) {
		return qdao.searchSupplement(sqlSession, keyword);
	}

	@Override
	public HashMap<String, ArrayList> getTopTwo() {
		HashMap<String, ArrayList> topTwo = qdao.getTop(sqlSession);
		
		ArrayList<Map> writerInfo = topTwo.get("writerInfo");
		topTwo.put("writerInfo", setWriterInfoList(writerInfo));
		System.out.println(topTwo);
		
		return topTwo;
	}

	@Override
	public QuestionRespDto getQresp(int boardNum, HttpServletRequest request) {

		QuestionRespDto qresp = qdao.selectQuestionResp(sqlSession, boardNum);
		
		qresp.setWriterInfo(setWriterInfo(getWriterInfo(qresp.getUserNum())));
		qresp.setReplyCount(qdao.selectReplyCount(sqlSession, boardNum));
		qresp.setAnswerCount(qdao.selectAnswerCount(sqlSession, boardNum));
		qresp.setScrapCount(qdao.selectScrapCount(sqlSession, boardNum));
		
		qresp.setSresp(selectSupplementRespDto(qresp.getProNum()));
		qresp.setQAttach(selectBoardImage(boardNum));
		
		int userNum = ((Member)request.getSession().getServletContext().getAttribute("loginUser")).getUserNum();
		
		if(qresp.getUserNum() != userNum) {
			qdao.addViewCount(sqlSession, boardNum);
		} else {
			qdao.updateIsRead(sqlSession, boardNum);
		}
		
		return qresp;
	}

	@Override
	public ArrayList<AnswerRespDto> getAnsRespList(int boardNum) {
		ArrayList<AnswerRespDto> ansRespList = selectAnswerResp(boardNum);
		
		for(int i=0; i<ansRespList.size(); i++) {
			AnswerRespDto ansResp = ansRespList.get(i);

			ansResp.setExpertResp(selectExpertResp(ansResp.getUserNum()));
			ansResp.setAnsSresp(selectSupplementRespDto(ansResp.getProNum()));
			ansResp.setAnsAttach(selectBoardImage(ansResp.getBoardNum()));
		}
		return ansRespList;
	}

	private Attachment selectBoardImage(int boardNum) {
		return qdao.selectBoardImage(sqlSession, boardNum);
	}

	private SupplementRespDto selectSupplementRespDto(int proNum) {
		return  qdao.selectSupplementResp(sqlSession, proNum);
	}

	private ExpertRespDto selectExpertResp(int userNum) {
		ExpertRespDto expertResp = qdao.selectExpertResp(sqlSession, userNum);
		expertResp.setAnswerCount(getExpertAnswerCount(userNum));
		expertResp.setExpertAttach(selectExpertImage(userNum));
		
		return null;
	}

	private Attachment selectExpertImage(int userNum) {
		return qdao.selectExpertImage(sqlSession, userNum);
	}

	private int getExpertAnswerCount(int userNum) {
		return qdao.getExpertAnswerCount(sqlSession, userNum);
	}

	private ArrayList<AnswerRespDto> selectAnswerResp(int boardNum) {
		return qdao.selectAnswerResp(sqlSession, boardNum);
	}


}
