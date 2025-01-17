package kr.opensoftlab.lunaops.prj.prj3000.prj3100.service;

import java.util.List;
import java.util.Map;

import egovframework.com.cmm.service.FileVO;



public interface Prj3100Service {
	
	
	void deletePrj3100File(Map<String, String> paramMap) throws Exception;
	
	
	void updatePrj3100FileType(Map<String, String> paramMap) throws Exception;

	
	@SuppressWarnings("rawtypes")
	List selectPrj3100MenuTree(Map<String, String> paramMap) throws Exception;

	
	@SuppressWarnings("rawtypes")
	Map selectPrj3001CngInf(Map<String, String> paramMap) throws Exception;

	
	void insertPrj3100FileUpload(Map<String, String> paramMap, List<FileVO> _result)throws Exception;

	
	@SuppressWarnings("rawtypes")
	List<Map> selectPrj3001CngInfList(Map<String, String> paramMap) throws Exception;

	
	void updatePrj3001SignApr(Map<String, String> paramMap) throws Exception;

	
	void updatePrj3001SignRjt(Map<String, String> paramMap) throws Exception;

}