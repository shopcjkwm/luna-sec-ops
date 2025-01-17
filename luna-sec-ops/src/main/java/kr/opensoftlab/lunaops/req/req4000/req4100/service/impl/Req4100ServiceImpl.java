package kr.opensoftlab.lunaops.req.req4000.req4100.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;



import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.jfree.util.Log;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.EgovWebUtil;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.service.FileVO;
import egovframework.com.cmm.service.impl.FileManageDAO;
import egovframework.com.utl.sim.service.EgovFileScrty;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import egovframework.rte.fdl.idgnr.EgovIdGnrService;
import kr.opensoftlab.lunaops.com.exception.UserDefineException;
import kr.opensoftlab.lunaops.com.fms.web.service.FileMngService;
import kr.opensoftlab.lunaops.prj.prj1000.prj1100.service.impl.Prj1100DAO;
import kr.opensoftlab.lunaops.req.req3000.req3000.service.impl.Req3000DAO;
import kr.opensoftlab.lunaops.req.req4000.req4100.service.Req4100Service;
import kr.opensoftlab.lunaops.req.req6000.req6000.service.Req6000Service;
import kr.opensoftlab.lunaops.req.req6000.req6000.vo.Req6001VO;
import kr.opensoftlab.sdf.util.CommonScrty;

@Service("req4100Service")
public class Req4100ServiceImpl extends EgovAbstractServiceImpl implements Req4100Service {

	
    @Resource(name="req4100DAO")
    private Req4100DAO req4100DAO;
    
    
    @Resource(name="req3000DAO")
    private Req3000DAO req3000DAO;
    
    
    @Resource(name="prj1100DAO")
    private Prj1100DAO prj1100DAO;

	
	@Resource(name = "req6000Service")
	private Req6000Service req6000Service;
	
	@Resource(name = "FileManageDAO")
	private FileManageDAO fileMngDAO;
	
	
   	@Resource(name="fileMngService")
   	private FileMngService fileMngService;
   	
	
	@Resource(name="EgovFileMngUtil")
	private EgovFileMngUtil fileUtil;
	
    @Resource(name = "egovFileIdGnrService")
	private EgovIdGnrService idgenService;
    
    
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	private Map<String, String> selectReq4100JsonToMap(Map paramMap){
		Map rtnMap = new HashMap();
		for( Object key : paramMap.keySet() ) {
			String jsonVal = "";
			try{
				jsonVal = (String) paramMap.get(key);
			}catch(ClassCastException cce){	
				continue;
			}
			
			JSONObject jsonObj = null;
			
			
			try{
				JSONParser jsonParser = new JSONParser();
				jsonObj = (JSONObject) jsonParser.parse(jsonVal);
				rtnMap.put(key, jsonObj.get("optVal"));
			}catch(Exception e){
				rtnMap.put(key, jsonVal);
			}
		}
		return rtnMap;
	}
	
	
	@SuppressWarnings("rawtypes")
	public int  selectReq4100ReqListCnt(Map paramMap) throws Exception {
		return req4100DAO.selectReq4100ReqListCnt(paramMap);
	} 
	
	
	@SuppressWarnings({ "rawtypes" })
	public List<Map>  selectReq4100ReqList(Map paramMap) throws Exception {
		return  req4100DAO.selectReq4100ReqList(paramMap);
	}
	
	
	
	@SuppressWarnings("rawtypes")
	public int  selectReq4100PrepListCnt(Map paramMap) throws Exception {
		return  req4100DAO.selectReq4100PrepListCnt(paramMap);
	} 
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<Map>  selectReq4100PrepList(Map paramMap) throws Exception {
		List<Map> list = req4100DAO.selectReq4100PrepList(paramMap);
		int total = req4100DAO.selectReq4100PrepListCnt(paramMap);
		
		for(int i=0; i<list.size(); i++) {
			list.get(i).put("total", Integer.toString(total));
		}
		return list;
	}

	
	public String selectReq4100UserCheck(Map<String, String> paramMap) throws Exception{
		
		return req4100DAO.selectReq4100UserCheck(paramMap);
	}
	
	
	public String selectReq4100ReqPwCheck(Map<String, String> paramMap) throws Exception{
		
		String reqPw = req4100DAO.selectReq4100ReqPwInfo(paramMap);
		
		
		String enReqPw = EgovFileScrty.encryptPassword((String) paramMap.get("reqPw"), (String)paramMap.get("reqId"));
		
		
		String resultStr = "N";
		if(reqPw.equals(enReqPw)) {
			resultStr = "Y";
		}else {
			resultStr = "N";
		}
			
		return resultStr;
	}
	
	
	@SuppressWarnings({ "rawtypes" })
	public String insertReq4100ReqCopy(Map<String, String> paramMap) throws Exception{

		Map<String, String> convertParamMap = selectReq4100JsonToMap(paramMap);

		
    	Map prjInfo = req4100DAO.selectReq4100ReqPrjInfo(convertParamMap);
    	
		String prjAcrm = (String) prjInfo.get("prjAcrm");
		
		
		String prjId = (String)convertParamMap.get("prjId");
		
		
		String nextOrd = req4100DAO.selectReq4100NextReqOrd(convertParamMap);
		String newReqOrd = nextOrd;
		
		
		if(prjAcrm != null && !"".equals(prjAcrm)){
			newReqOrd = prjAcrm+"-"+nextOrd;
		}
		
		convertParamMap.put("reqOrd", newReqOrd);

		
		String insNewReqId = req4100DAO.insertReq4101ReqInfo(convertParamMap);
		
		
		if(insNewReqId == null || "".equals(insNewReqId)){
			throw new Exception(egovMessageSource.getMessage("fail.common.insert"));
		}

		
		String enReqKey = CommonScrty.encryptedAria(prjId, insNewReqId);
		
		Map<String, String> newReqMap = new HashMap<String, String>();
		
		newReqMap.put("prjId", prjId);
		newReqMap.put("reqId", insNewReqId);
		newReqMap.put("reqKey", enReqKey);
		
		
		req4100DAO.updateReq4101ReqKey(newReqMap);

		
		String reqPw = (String) convertParamMap.get("reqPw");
		if(reqPw != null && !reqPw.isEmpty()) {
			
			newReqMap.put("reqPw", EgovFileScrty.encryptPassword(reqPw, insNewReqId));
			
			
			req4100DAO.updateReq4101ReqPwInfo(newReqMap);
		}
		
		
		
		String oriAtchFileId = (String) convertParamMap.get("oriAtchFileId");
		String newAtchFileId = (String) convertParamMap.get("atchFileId");
		if(oriAtchFileId != null) {
			if(!oriAtchFileId.isEmpty()) {
				
				
            	FileVO fileVO = new FileVO();
            	
				fileVO.setAtchFileId(oriAtchFileId);
				
				List<FileVO> fileList = fileMngService.fileDownList(fileVO);
				
				
				List<FileVO> newFileList = null;
				
				
				String fileHistory = (String) paramMap.get("fileHistory");
				
				
				JSONParser jsonParser = new JSONParser();
				JSONArray jsonArray = (JSONArray) jsonParser.parse(fileHistory);

				
				for(int i=0;i<jsonArray.size();i++) {
					JSONObject jsonObj = (JSONObject) jsonArray.get(i);
					String source = (String) jsonObj.get("source"); 

					
					JSONObject fileMetaInfo = (JSONObject) jsonObj.get("meta");
					String fileSn = "";
					
					if("database".equals(source)) {
						fileSn = String.valueOf(fileMetaInfo.get("fileSn"));
						
        				
        				for(int j=0; j<fileList.size(); j++) {
        					String fileType = fileList.get(j).getFileType();
        					
        					
        					if(fileSn.equals(fileList.get(j).getFileSn()) && fileType.indexOf("image") == -1) {
        						
        						
                            	FileVO newFileVO = new FileVO();
        						
        						if(newFileList == null) {
        							newFileList = new ArrayList<FileVO>();
        						}
        						
        						newFileVO.setAtchFileId(newAtchFileId);
        						
        						newFileVO.setFileSn(fileSn);
        						
        						newFileVO.setFileCn(fileList.get(j).getFileCn());
        						
        						newFileVO.setFileExtsn(fileList.get(j).getFileExtsn());
        						
        						newFileVO.setFileMg(fileList.get(j).getFileMg());
        						
        						newFileVO.setFileStreCours(fileList.get(j).getFileStreCours());
        						
        						newFileVO.setOrignlFileNm(fileList.get(j).getOrignlFileNm());

        						
        						
        						String pattern = "yyyyMMddhhmmssSSS";
        						SimpleDateFormat sdfCurrent = new SimpleDateFormat(pattern, Locale.KOREA);
        						Timestamp ts = new Timestamp(System.currentTimeMillis());
        						newFileVO.setStreFileNm(sdfCurrent.format(ts.getTime()));
        						
        						
        						newFileVO.setFileType(fileList.get(j).getFileType());
        						
        						newFileList.add(newFileVO);
        						
        						
        						File oriFile = new File(EgovWebUtil.filePathBlackList(fileList.get(j).getFileStreCours()+fileList.get(j).getStreFileNm()));
        						
        						File copyFile = new File(EgovWebUtil.filePathBlackList(newFileVO.getFileStreCours()+newFileVO.getStreFileNm()));
        						
        						try {
        							
        							FileInputStream inFile = new FileInputStream(oriFile);
        							
        							FileOutputStream outFile = new FileOutputStream(copyFile);
        							
        							int fileByte = 0;
        							
        							
        							while( (fileByte = inFile.read()) != -1) {
        								outFile.write(fileByte);
        							}
        							
        							inFile.close();
        							outFile.close();
        						}catch(Exception fileE){	
        							Log.error(fileE);
        						}
        					}
        				}
					}
				}
				if(newFileList != null && newFileList.size() > 0) {
					
					
					fileMngService.insertFileDetail(newFileList);
				}
			}
		}
		return insNewReqId;
	}
	
	
	@SuppressWarnings("rawtypes")
	public Map selectReq4100ReqInfo(Map paramMap) throws Exception{
		return req4100DAO.selectReq4100ReqInfo(paramMap);
	}

	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Object saveReq4100ReqInfo(Map paramMap) throws Exception{
		
		Map<String, String> convertParamMap = selectReq4100JsonToMap(paramMap);

		
    	Map prjInfo = req4100DAO.selectReq4100ReqPrjInfo(convertParamMap);
    	
		String popupType	= convertParamMap.get("type");
		String prjAcrm = (String) prjInfo.get("prjAcrm");
		
		
		String prjId = (String)convertParamMap.get("prjId");
		
		
		if("insert".equals(popupType) ){
			
			String nextOrd = req4100DAO.selectReq4100NextReqOrd(convertParamMap);
			String newReqOrd = nextOrd;
			
			
			if(prjAcrm != null && !"".equals(prjAcrm)){
				newReqOrd = prjAcrm+"-"+nextOrd;
			}
			
			convertParamMap.put("reqOrd", newReqOrd);

			
			String insNewReqId = req4100DAO.insertReq4101ReqInfo(convertParamMap);
			
			
			
			if(insNewReqId == null || "".equals(insNewReqId)){
				throw new Exception(egovMessageSource.getMessage("fail.common.insert"));
			}
	
    		
    		String enReqKey = CommonScrty.encryptedAria(prjId, insNewReqId);
    		
			Map<String, String> newReqMap = new HashMap<String, String>();
			
			
			newReqMap.put("prjId", prjId);
			newReqMap.put("reqId", insNewReqId);
			newReqMap.put("reqKey", enReqKey);
			convertParamMap.put("reqId", insNewReqId);
			
    		
    		req4100DAO.updateReq4101ReqKey(newReqMap);

    		
    		if(!"".equals(convertParamMap.get("reqGrpId"))) {
    			
    			Integer reqLinkOrd = req3000DAO.selectReq3001ReqOrd(convertParamMap) + 1;
    			convertParamMap.put("reqLinkOrd", reqLinkOrd.toString());
    			req3000DAO.insertReq3001ReqGrpLinkReqInfo(convertParamMap);
    		}
    		
    		
    		String reqPw = (String) convertParamMap.get("reqPw");
    		if(reqPw != null && !reqPw.isEmpty()) {
    			
    			newReqMap.put("reqPw", EgovFileScrty.encryptPassword(reqPw, insNewReqId));
    			
    			
    			req4100DAO.updateReq4101ReqPwInfo(newReqMap);
    		}
    		 		
			return insNewReqId;
		}
		
		else if("update".equals(popupType)){
			
			Map reqInfoMap = (Map) req4100DAO.selectReq4100ReqInfo(convertParamMap);		
			String reqProType = (String) reqInfoMap.get("reqProType");
			
			
			if(!"01".equals(reqProType)){
				throw new Exception(egovMessageSource.getMessage("fail.common.update"));
			}
			
			
			if(convertParamMap.get("reqGrpId") != null || !"".equals(convertParamMap.get("reqGrpId"))) {
				
				
				req3000DAO.deleteReq3001ReqCon(convertParamMap);
				
				
				List<Map> reqGrpLinkList = req3000DAO.selectReq3001ReqGrpLinkReqList(convertParamMap);
				for(Integer i = 1; i <= reqGrpLinkList.size(); i++) {
					Map requirement = reqGrpLinkList.get(i-1);
					requirement.put("reqOrd", i.toString());
					req3000DAO.updateReq3001ReqOrd(requirement);
				}
				
				
				Integer reqLinkOrd = req3000DAO.selectReq3001ReqOrd(convertParamMap) + 1;
				convertParamMap.put("reqLinkOrd", reqLinkOrd.toString());
				req3000DAO.insertReq3001ReqGrpLinkReqInfo(convertParamMap);
				
			}
			
			
			
			
			
			String reqPw = (String) convertParamMap.get("reqPw");
    		if(reqPw != null && !reqPw.isEmpty()) {
    			convertParamMap.put("changePw", "Y");
    			
    			
    			String enReqPw = EgovFileScrty.encryptPassword(reqPw, (String) reqInfoMap.get("reqId"));
				
				convertParamMap.put("reqPw", enReqPw);
    		}
			
			
			int uptCnt = req4100DAO.updateReq4101ReqInfo(convertParamMap);

			
			String atchFileId = (String) convertParamMap.get("atchFileId"); 
			
			
			String removeFileStr = (String) paramMap.get("fileHistory");
			
			
			JSONParser jsonParser = new JSONParser();
			JSONArray jsonArray = (JSONArray) jsonParser.parse(removeFileStr);
			
			List<String> removeFileSn = new ArrayList<String>();
			
			
			for(int i=0;i<jsonArray.size();i++) {
				JSONObject jsonObj = (JSONObject) jsonArray.get(i);
				
				String source = (String) jsonObj.get("source");
				
				
				if("remove".equals(source)) {
					
					JSONObject fileMetaInfo = (JSONObject) jsonObj.get("meta");
					Object fileSn;
					try {
						fileSn = (Long) fileMetaInfo.get("fileSn");
					}catch(ClassCastException cce) {
						fileSn = (String) fileMetaInfo.get("fileSn");
					}
				
					removeFileSn.add(String.valueOf(fileSn));
				}
			}
			
			FileVO fileVo = new FileVO();
			fileVo.setAtchFileId(atchFileId);
			
			List<FileVO> selFileList = fileMngDAO.selectFileInfs(fileVo);
			
			
			for(FileVO fileInfo : selFileList) {
				String fileSn = fileInfo.getFileSn();
				
				
				if(removeFileSn.indexOf(fileSn) != -1) {
					
					fileMngDAO.deleteFileInf(fileInfo);
					
					
					try{
						
						String fileDeletePath  = fileInfo.getFileStreCours()+fileInfo.getStreFileNm();
					    EgovFileMngUtil.deleteFile(fileDeletePath);
					}catch(Exception fileE){	
						Log.error(fileE);
					}
				}
			}
			
			
			if(uptCnt == 0 ){
				throw new Exception(egovMessageSource.getMessage("fail.common.update"));
			}
			return uptCnt;
		}

		return false;
	}

	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void deleteReq4100ReqList(Map<String, String> paramMap)  throws Exception{
		
		String deleteDataList = paramMap.get("deleteDataList");
		
		
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = (JSONArray) jsonParser.parse(deleteDataList);

		
		List<FileVO> removeFileList = new ArrayList();
		
		
		for(int i=0;i<jsonArray.size();i++) {
			JSONObject jsonObj = (JSONObject) jsonArray.get(i);
			
			
			Map infoMap = new Gson().fromJson(jsonObj.toJSONString(), new HashMap().getClass());
			
			
			String reqProType = (String) infoMap.get("reqProType");
			
			
			if( !"01".equals(reqProType) ){
				
				throw new UserDefineException(egovMessageSource.getMessage("처리중인 요구사항은 삭제 불가"));
			}

			
			req4100DAO.deleteReq4100ReqInfo(infoMap);
			
			
			req3000DAO.deleteReq3001ReqCon(infoMap);
			
			
			List<Map> reqGrpLinkList = req3000DAO.selectReq3001ReqGrpLinkReqList(infoMap);
			for(Integer index = 1; index <= reqGrpLinkList.size(); index++) {
				Map requirement = reqGrpLinkList.get(index-1);
				requirement.put("reqOrd", index.toString());
				req3000DAO.updateReq3001ReqOrd(requirement);
			}
			
			
			String atchFileId = (String) infoMap.get("atchFileId");
			
			
        	FileVO fileVO = new FileVO();
        	fileVO.setAtchFileId(atchFileId);
        	
        	
			List<FileVO> fileList = fileMngService.fileDownList(fileVO);
			
			if(fileList.size() > 0) {
				removeFileList.addAll(fileList);
			}
		}
		
		if(removeFileList.size() > 0) {
			
			for(FileVO fileInfo : removeFileList) {
				
				fileMngDAO.deleteFileInf(fileInfo);
				
				
				try{
					
					String fileDeletePath  = fileInfo.getFileStreCours()+fileInfo.getStreFileNm();
				    EgovFileMngUtil.deleteFile(fileDeletePath);
				}catch(Exception fileE){	
					Log.error(fileE);
				}
			}
		}
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void updateReq4100ReqRejectList(Map paramMap) throws Exception{
		
		String licGrpId = (String) paramMap.get("licGrpId");
		
		
		String paramRejectContents = (String) paramMap.get("paramRejectContents");
		paramMap.put("reqAcceptTxt", paramRejectContents);
		
		
		String paramRejectReqList = (String) paramMap.get("paramRejectReqList");
		
		
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = (JSONArray) jsonParser.parse(paramRejectReqList);
		for(int i=0;i<jsonArray.size();i++) {
			JSONObject reqInfo = (JSONObject) jsonArray.get(i);
			
			
			String prjId = (String) reqInfo.get("prjId");
			String reqId = (String) reqInfo.get("reqId");
			
			
			paramMap.put("prjId", prjId);
			paramMap.put("reqId", reqId);
			req4100DAO.updateReq4100ReqRejectInfo(paramMap);
			
			
			Req6001VO req6001Vo = new Req6001VO(licGrpId, prjId, reqId, "04");
			paramMap.put("req6001Vo", req6001Vo);
			req6000Service.insertReq6001ReqChgInfo(paramMap);
			
		}
	}
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void updateReq4100ReqAcceptList(Map paramMap) throws Exception{
		
		String licGrpId = (String) paramMap.get("licGrpId");
		
		
		String defaultSwitchCd = (String) paramMap.get("defaultSwitchCd");
		
		String selReqChargerId = (String) paramMap.get("selReqChargerId");
		
		
		if("02".equals(defaultSwitchCd)) {
			
			if(selReqChargerId != null && !"".equals(selReqChargerId)) {
				paramMap.put("reqChargerId", selReqChargerId);
			}
		}
		
		
		String processId = (String) paramMap.get("selProcessId");
		
		
		paramMap.put("processId", processId);
		paramMap.put("flowStartCd", "01");
		Map startFlowInfo = prj1100DAO.selectPrj1101FlowInfo(paramMap);
		
		
		if(startFlowInfo == null || startFlowInfo.isEmpty()) {
			throw new UserDefineException("프로세스 데이터 조회에 실패했습니다.");
		}
		
		
		String flowId = (String) startFlowInfo.get("flowId");
		paramMap.put("flowId", flowId);
		
		
		String reqAcceptTxt = (String) paramMap.get("reqAcceptTxt");
		paramMap.put("reqAcceptTxt", reqAcceptTxt);
		
		
		String paramSelReqInfoList = (String) paramMap.get("paramSelReqInfoList");
		
		
		JSONParser jsonParser = new JSONParser();
		JSONArray jsonArray = (JSONArray) jsonParser.parse(paramSelReqInfoList);
		for(int i=0;i<jsonArray.size();i++) {
			JSONObject reqInfo = (JSONObject) jsonArray.get(i);
			
			
			String prjId = (String) reqInfo.get("prjId");
			String reqId = (String) reqInfo.get("reqId");
			
			
			paramMap.put("prjId", prjId);
			paramMap.put("reqId", reqId);
			
			
			Req6001VO req6001Vo = new Req6001VO(licGrpId, prjId, reqId, "03");
			req6001Vo.setChgProcessId(processId);
			req6001Vo.setChgFlowId(flowId);
			req6001Vo.setChargerChgCd(defaultSwitchCd);
			
			
			if("02".equals(defaultSwitchCd)) {
				req6001Vo.setChgChargerId(selReqChargerId);
			}
			
			else {
				
				Map selReqInfo = req4100DAO.selectReq4100ReqInfo(paramMap);
				if(selReqInfo != null) {
					String reqChargerId = (String) selReqInfo.get("reqChargerId");
					req6001Vo.setChgChargerId(reqChargerId);
					paramMap.put("reqChargerId", reqChargerId);
				}
			}
			
			
			req4100DAO.updateReq4100ReqAcceptInfo(paramMap);
			
			paramMap.put("req6001Vo", req6001Vo);
			req6000Service.insertReq6001ReqChgInfo(paramMap);
			
		}
	}
	
	
	@SuppressWarnings({ "rawtypes" })
	public void updateReq4101ReqSubInfo(Map paramMap) throws Exception{
		req4100DAO.updateReq4101ReqSubInfo(paramMap);
	}
	
	
	@SuppressWarnings("rawtypes")
	public Map selectReq4100ReqUserInfo(Map paramMap) throws Exception {
		return	req4100DAO.selectReq4100ReqUserInfo(paramMap);
	}
	
	
	
	@SuppressWarnings("rawtypes")
	public Map selectReq4100ReqPrjInfo(Map paramMap) throws Exception {
		return	req4100DAO.selectReq4100ReqPrjInfo(paramMap);
	}
	
	
	@SuppressWarnings("rawtypes")
	public List<Map> selectReq4100IntegratedDshAcceptReqList(Map paramMap) throws Exception {
		return req4100DAO.selectReq4100IntegratedDshAcceptReqList(paramMap);
	}
	
	
	@SuppressWarnings("rawtypes")
	public int selectReq4100IntegratedDshAcceptReqListCnt(Map paramMap) throws Exception {
		 return req4100DAO.selectReq4100IntegratedDshAcceptReqListCnt(paramMap);
	} 
	
	
	@SuppressWarnings("rawtypes")
	public List<Map> selectReq4100ReqProTypeOrdList(Map paramMap) throws Exception {
		
		return req4100DAO.selectReq4100ReqProTypeOrdList(paramMap);
	} 
	
	
	@SuppressWarnings("rawtypes")
	public int  selectReq4100ChargeReqListCnt(Map paramMap) throws Exception {
		return req4100DAO.selectReq4100ChargeReqListCnt(paramMap);
	} 
	
	
	@SuppressWarnings({ "rawtypes" })
	public List<Map>  selectReq4100ChargeReqList(Map paramMap) throws Exception {
		return  req4100DAO.selectReq4100ChargeReqList(paramMap);
	}
}
