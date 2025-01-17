<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/jsp/lunaops/top/header.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/top.jsp" />
<jsp:include page="/WEB-INF/jsp/lunaops/top/aside.jsp" />

<div class="kt-portlet kt-portlet--mobile">
	<div class="kt-portlet__head kt-portlet__head--lg">
		<div class="kt-portlet__head-label">
			<h4 class="kt-font-boldest kt-font-brand">
				<i class="fa fa-th-large kt-margin-r-5"></i><c:out value="${sessionScope.selMenuNm}" />
			</h4>
		</div>
	</div>
	<div class="kt-portlet__body">
		<div class="row">
			<!-- begin:: 산출물 메뉴 목록  -->
			<div class="col-xl-4">
				<div class="kt-portlet osl-content__border--light kt-margin-b-20" id="prj3100DocTreeMenu">
					<div class="kt-portlet__head kt-portlet__head--lg">
						<div class="kt-portlet__head-label">
							<h5 class="kt-font-boldest kt-font-brand">
								<i class="fas fa-sitemap kt-margin-r-5"></i>산출물 메뉴 목록
							</h5>
						</div>
						<!-- begin:: 산출물 메뉴 목록 button -->
						<div class="kt-portlet__head-toolbar">
							<div class="kt-portlet__head-wrapper">
								<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="select" title="산출물 메뉴 목록 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1" data-original-title="산출물 메뉴 목록 조회">
									<i class="fa fa-list"></i><span>조회</span>
								</button>
							</div>
							<div class="kt-portlet__head-group">
								<a href="#" class="btn btn-sm btn-icon btn-clean btn-icon-md osl-tree-action" data-toggle="kt-tooltip" title="전체 펼치기" data-tree-id="prj3100DocTree" data-tree-action="allNodeOpen"><i class="fa fa-plus"></i></a> 
								<a href="#" class="btn btn-sm btn-icon btn-clean btn-icon-md osl-tree-action" data-toggle="kt-tooltip" title="전체 접기" data-tree-id="prj3100DocTree" data-tree-action="allNodeClose"><i class="fa fa-minus"></i></a> 
								<a href="#" data-ktportlet-tool="toggle" class="btn btn-sm btn-icon btn-clean btn-icon-md"><i class="la la-angle-down"></i></a>
							</div>
						</div>
						<!-- end:: 산출물 메뉴 목록 button -->
					</div>
					<!-- begin:: 확정 문서 전체 다운로드 button -->
					<div class="kt-portlet__head kt-portlet__head--lg">
						<div class="kt-portlet__head-toolbar osl-margin-left--auto">
							<div class="kt-portlet__head-group">
								<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectAtchFileDownAll" title="확정 문서 전체 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectAtchFileDownAll" tabindex="1" data-original-title="확정 문서 전체 다운로드">
									<i class="fas fa-download"></i><span>확정 문서 전체 다운로드</span>
								</button>
							</div>
						</div>
					</div>
					<!-- end:: 확정 문서 전체 다운로드 button -->
					<div class="kt-portlet__body">
						<div class="row">
							<div class="col-12">
								<div class="osl-tree-search" data-tree-id="prj3100DocTree"></div>
							</div>
						</div>
						<div class="kt-separator kt-separator--space-sm kt-separator--border-solid"></div>
						<div class="row">
							<div class="col-12">
								<div class="osl-tree kt-scroll" data-height="410" id="prj3100DocTree"></div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
			<!-- end:: 산출물 메뉴 목록  -->
			<!-- begin:: 산출물 정보 + 산출물 파일 관리 영역 + 산출물 연결 관리  -->
			<div class="col-xl-8">
				<!-- begin:: 산출물 정보  -->
				<div class="kt-portlet--contain osl-content__border--light">
					<div class="kt-blog-grid">
						<div class="kt-portlet__head kt-portlet__head--lg">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fas fa-info-circle kt-margin-r-5"></i>산출물 정보
								</h5>
							</div>
							<!-- begin:: 산출물 정보 button -->
							<div class="kt-portlet__head-toolbar">
								<div class="kt-portlet__head-wrapper">
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectDocInfo" title="산출물 정보 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectDocInfo" tabindex="1" data-original-title="산출물 정보 조회">
										<i class="fa fa-list"></i><span>조회</span>
									</button>
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="docFormFileZipDown" title="산출물 양식 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="docFormFileZipDown" tabindex="3" data-original-title="산출물 양식 다운로드"> 
										<i class="fa fa-edit"></i><span>양식 다운로드</span>
									</button>
								</div>
							</div>
							<!-- end:: 산출물 정보 button -->
						</div>

						<div class="kt-portlet__body">
							<form class="kt-form" id="frPrj3100">
								<input type="hidden" id="docFormFileId" name="docFormFileId">
								<input type="hidden" id="docFormConfFileId" name="docFormConfFileId"> 
								<input type="hidden" id="docAtchFileId" name="docAtchFileId">
								<input type="hidden" id="docWaitFileId" name="docWaitFileId">
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label><i class="fa fa-align-left kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docId">산출물 ID</span></label> 
											<input type="text" class="form-control" placeholder="산출물 ID" name="docId" id="docId" readonly="readonly">
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<label><i class="fa fa-edit kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docNm">산출물 명</span></label> 
											<input type="text" class="form-control" placeholder="산출물 명" name="docNm" id="docNm" readonly="readonly">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label><i class="fa fa-check-square kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docUseCd">사용유무</span></label> 
											<input type="text" class="form-control" placeholder="사용유무" name="useNm" id="useNm" readonly="readonly">
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<label><i class="fa fa-list-ol kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docOrd">순번</span></label> 
											<input type="text" class="form-control" placeholder="순번" name="ord" id="ord" readonly="readonly">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-6">
										<div class="form-group">
											<label><i class="fas fa-calendar-alt kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docEdDtm">산출물 마감일</span></label> 
											<input type="text" class="form-control" placeholder="산출물 마감일" name="docEdDtm" id="docEdDtm" readonly="readonly">
										</div>
									</div>
									<div class="col-6">
										<div class="form-group">
											<label><i class="fa fa-project-diagram kt-margin-r-5"></i><span data-lang-cd="prj3100.label.signUseCd">결재 사용 유무</span></label> 
											<input type="text" class="form-control" placeholder="결재 사용 유무" name="signUseNm" id="signUseNm" readonly="readonly">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-12">
										<div class="form-group-last">
											<label><i class="fa fa-edit kt-margin-r-5"></i><span data-lang-cd="prj3100.label.docDesc">비고</span></label>
											<div class="form-control h-100 osl-min-height--12rem" id="docDesc"></div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<!-- end:: 산출물 정보  -->
				<!-- begin:: 산출물 파일 관리  -->
				<div class="kt-portlet--contain osl-content__border--light kt-margin-t-20">
					<div class="kt-blog-grid">
						<div class="kt-portlet__head kt-portlet__head--lg">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fas fa-file-invoice kt-margin-r-5"></i>산출물 파일 관리
								</h5>
							</div>
							<!-- begin:: 산출물 파일 관리 조회 button -->
							<div class="kt-portlet__head-toolbar">
								<div class="kt-portlet__head-wrapper">
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectFiles" title="산출물 파일 관리 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectFiles" tabindex="1" data-original-title="산출물 파일 관리 조회">
										<i class="fa fa-list"></i><span>조회</span>
									</button>
								</div>
							</div>
							<!-- end:: 산출물 파일 관리 조회 button -->
						</div>

						<div class="kt-portlet__body">
							<div class="row">
								<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
									<div class="kt-portlet--contain">
										<div class="kt-portlet__head kt-portlet__head--lg border osl-border-bottom--none">
											<div class="kt-portlet__head-label">
												<h5 class="kt-font-boldest kt-font-brand">확정 파일</h5>
											</div>
											<!-- begin:: 산출물 확정 파일 등록 button -->
											<div class="kt-portlet__head-toolbar">
												<div class="kt-portlet__head-toolbar-wrapper">
													<div class="dropdown dropdown-inline">
														<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air" data-toggle="dropdown" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
															<i class="fa fa-bars kt-padding-r-0"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="signAtchFile" title="확정 파일 결재 승인" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="signAtchFile" tabindex="1" data-original-title="확정 파일 결재 승인">
																<i class="fas fa-file-signature kt-font-brand"></i><span>결재 승인</span>
															</div>
															<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="signAtchFileRjt" title="확정 파일 결재 반려" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="signAtchFileRjt" tabindex="1" data-original-title="확정 파일 결재 반려">
																<i class="fas fa-file-excel kt-font-brand"></i><span>결재 반려</span>
															</div>
															<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="insertAtchFile" title="확정 파일 등록" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insertAtchFile" tabindex="1" data-original-title="확정 파일 등록">
																<i class="fa fa-plus kt-font-brand"></i><span>등록</span>
															</div>
															<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectAtchFileDown" title="확정 파일 전체 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectAtchFileDown" tabindex="1" data-original-title="확정 파일 전체 다운로드">
																<i class="fas fa-download kt-font-brand"></i></i><span>확정 파일 다운로드</span>
															</div>
															<input type="file" class="kt-hide" id="atchFileBtn" multiple="multiple" name="atchFileBtn">
														</div>
													</div>
												</div>
											</div>
											<!-- end:: 산출물 확정 파일 등록 button -->
										</div>
										<div class="kt-portlet__body kt-padding-0 kt-scroll border osl-radius-bottom" data-height="350" id="confirmationList">
											
										
										</div>
									</div>
								</div>
								<div
									class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12 kt-margin-t-20-mobile">
									<div class="kt-portlet--contain">
										<div class="kt-portlet__head kt-portlet__head--lg border osl-border-bottom--none">
											<div class="kt-portlet__head-label">
												<h5 class="kt-font-boldest kt-font-brand">확정 대기 파일</h5>
											</div>
											<!-- begin:: 산출물 확정 대기 파일 등록  button -->
											<div class="kt-portlet__head-toolbar">
												<div class="kt-portlet__head-toolbar-wrapper">
													<div class="dropdown dropdown-inline">
														<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm btn-elevate btn-elevate-air" data-toggle="dropdown" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1">
															<i class="fa fa-bars kt-padding-r-0"></i>
														</button>
														<div class="dropdown-menu dropdown-menu-right">
															<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="insertWaitFile" title="확정 대기 파일 등록" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insertWaitFile" tabindex="1" data-original-title="확정 대기 파일 등록">
																<i class="fa fa-plus kt-font-brand"></i><span>등록</span>
															</div>
															<div class="dropdown-item osl-tree-action" data-tree-id="prj3100DocTree" data-tree-action="selectWaitFileDown" title="확정 대기 파일 전체 다운로드" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="selectWaitFileDown" tabindex="2" data-original-title="확정 대기 파일 전체 다운로드">
																<i class="fas fa-download kt-font-brand"></i><span>전체 다운로드</span>
															</div>
															<input type="file" class="kt-hide" id="waitFileBtn" multiple="multiple" name="waitFileBtn">
														</div>
													</div>
												</div>
											</div>
											<!-- end:: 산출물 확정 대기 파일 등록  button -->
										</div>
										<div class="kt-portlet__body kt-padding-0 kt-scroll border osl-radius-bottom" data-height="350" id="waitConfirmationList">
											
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end:: 산출물 파일 관리  -->
				<!-- begin:: 산출물 연결 관리  -->
				<div class="kt-portlet--contain osl-content__border--light kt-margin-t-20">
					<div class="kt-blog-grid">
						<div class="kt-portlet__head kt-portlet__head--lg">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fas fa-file-signature kt-margin-r-5"></i>산출물 연결 관리
								</h5>
							</div>
							<!-- begin:: 산출물 연결 관리 button -->
							<div class="kt-portlet__head-toolbar">
								<div class="kt-portlet__head-wrapper">
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj3002PrjTable" data-datatable-action="select" title="산출물 연결 관리 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="1" data-original-title="산출물 연결 관리 조회"> 
										<i class="fa fa-list"></i><span>조회</span>
									</button>
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj3002PrjTable" data-datatable-action="insert" title="산출물 연결 관리 연결" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="insert" tabindex="3" data-original-title="산출물 연결 관리 연결"> 
										<i class="fa fa-edit"></i><span>연결</span>
									</button>
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="prj3002PrjTable" data-datatable-action="delete" title="산출물 연결 관리 연결 제거" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="delete" tabindex="4" data-original-title="산출물 연결 관리 연결 제거">
										<i class="fa fa-trash-alt"></i><span>연결 제거</span>
									</button>
								</div>
							</div>
							<!-- end:: 산출물 연결 관리 button -->
						</div>

						<div class="kt-portlet__body">
							<div class="row">
								<div class="col-lg-6 col-md-6 col-sm-12">
									<div class="osl-datatable-search" data-datatable-id="prj3002PrjTable"></div>
								</div>
							</div>
							<div class="kt_datatable" id="prj3002PrjTable"></div>
						</div>
					</div>
				</div>
				<!-- end:: 산출물 연결 관리  -->
			</div>
			<!-- end:: 산출물 정보 + 산출물 파일 관리 영역 + 산출물 연결 관리 -->
		</div>
	</div>
</div>
<!-- begin page script -->
<script>
"use strict";
var OSLPrj3000Popup = function () {
	
	var formId = "frPrj3100";
	
	//트리 메뉴
	var treeObj = '';
	
	//산출물 아이디
	var docId = '';
	
	//산출물 연결 정보 데이터 테이블
	var prj3002PrjTable = "prj3002PrjTable";
	
	var atchFileId = '';
	
	var documentSetting = function(){
		
		fileDropDown();
		
		//Portlet 세팅
		new KTPortlet('prj3100DocTreeMenu', $.osl.lang("portlet"));
		/**************************************/
		/* 트리 메뉴 및 관련 메서드 시작                                      */
		/**************************************/
		
		
		// 조직 tree 세팅
		treeObj = $.osl.tree.setting("prj3100DocTree",{
			data:{
				url:"<c:url value='/prj/prj3000/prj3000/selectPrj3000DocListAjax.do'/>",
				key: "docId",
				pKey: "upperDocId",
				labelKey: "docNm"
			},
			search:{
				//대소문자 구분
				case_insensitive : true,
				//검색 결과 노드만 표시
				show_only_matches: true,
				//show_only_matches: true 일때 하위 노드도 같이 표시 할건지
				show_only_matches_children: true,
			},
			callback:{
				onclick: function(treeObj,selNode){
					
					// 산출물 정보 단건 조회
					selectDocInfo(selNode.original);
					
					//파일 정보 조회
					selectFormFileList();
				},
				init: function(treeObj,data){
					//console.log(treeObj,data); 
				}
			},
			contextmenu: {
				display: ["allNodeOpen","allNodeClose","selNodeOpen","selNodeClose","docFormFileZipDown","selectAtchFileDown","selectWaitFileDown"],
				items: {
					docFormFileZipDown : {
            			"separator_before": true,
            			"separator_after": false,
            			"label": $.osl.lang("prj3100.contextmenu.formFileDownload"),
            			"title": $.osl.lang("prj3100.contextmenu.formFileDownload"),
            			"actionFn": "docFormFileZipDown"
            		},
            		selectAtchFileDown : {
            			"separator_before": false,
            			"separator_after": false,
            			"label": $.osl.lang("prj3100.contextmenu.atchFileDownload"),
            			"title": $.osl.lang("prj3100.contextmenu.atchFileDownload"),
            			"actionFn": "selectAtchFileDown"
            		},
            		selectWaitFileDown : {
            			"separator_before": false,
            			"separator_after": true,
            			"label": $.osl.lang("prj3100.contextmenu.waitFileDownload"),
            			"title": $.osl.lang("prj3100.contextmenu.waitFileDownload"),
            			"actionFn": "selectWaitFileDown"
            		},
            	}
			},
			actionFn : {
				//산출물 단건 정보 조회
				"selectDocInfo" : function(obj){
					
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					// 선택노드
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					// 산출물 정보 단건 조회
					selectDocInfo(nodeData);
				},
				//확정 파일 등록
				"insertAtchFile" : function(obj){
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var insertAtchFile = $("#atchFileBtn");
					insertAtchFile.trigger("click");
					
				},
				//확정 대기 파일 등록
				"insertWaitFile" : function(obj){
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var insertWaitFile = $('#waitFileBtn');
					insertWaitFile.trigger("click");
					
				},
				//파일 리스트 가져오기
				"selectFiles" : function(obj){
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					//그림 다시그리기
					selectFormFileList();
				},
				//양식 파일 압축 다운로드
				"docFormFileZipDown" : function(obj){
					
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}

					var docId = $('#docId').val();
					
					var atchFileId = $('#docFormConfFileId').val();
					 
					var fileData = '';
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/prj/prj3000/prj3100/selectPrj3100FormFileCntAjax.do'/>", "async": false}
							,{"docId": docId, "atchFileId":atchFileId });
					
					//AJAX 전송 성공 함수
					ajaxObj.setFnSuccess(function(data){
						if(data.errorYn == "Y"){
							$.osl.alert(data.message,{type: 'error'});
							
						}else{
							
							//양식 수가 0개라면 리턴
							if(data.fileCnt == 0){
								$.osl.alert($.osl.lang("prj3100.message.alert.notHaveConfFile"));
								return false;
							
							//1개라면 1개만 다운로드
							}else if(data.fileCnt == 1){
								//파일 다운
								$.osl.file.fileDownload(atchFileId, data.fileSn);
								
							//여러개라면 팝업창 오픈
							}else{
								
								var data = {
										docId : docId,
										atchFileId : atchFileId,
										docNm : $('#docNm').val()
								};
								var options = {
										modalTitle: "산출물 양식 다운로드",
										autoHeight: false
									};
								
								$.osl.layerPopupOpen('/prj/prj3000/prj3100/selectPrj3101View.do',data,options);
								
							}
						}
					});
					
					//AJAX 전송
					ajaxObj.send();
					
					//fileZipDownload('formConfFile');
					
				},
				//확정문서 다운
				"selectAtchFileDown" :function(obj){
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var confFileCnt = $('#confirmationList').children('div').length;
					
					//파일의 수가 0개가 아니면 파일 다운
					if(!confFileCnt == 0){
						
						fileZipDownload('atchFile');
					
					//파일의 수가 0개면 튕김
					}else{
						$.osl.alert($.osl.lang("prj3100.message.alert.notHaveConfFile"));
						return false;
					}
				},
				//확정 대기 문서 다운
				"selectWaitFileDown" :function(obj){
					
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					var confFileCnt = $('#waitConfirmationList').children('div').length;
					
					//파일의 수가 0개가 아니면 파일 다운
					if(!confFileCnt == 0){
						
						fileZipDownload('waitFile');
					
					//파일의 수가 0개면 튕김
					}else{
						$.osl.alert($.osl.lang("prj3100.message.alert.notHaveConfFile"));
						return false;
					}
				},
				//확정 문서 전체 다운로드 버튼
				"selectAtchFileDownAll" : function(obj){
					
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					// 선택노드
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					var docId = nodeData.docId;
					var atchFileId = nodeData.docAtchFileId
					
					if(!$.osl.isNull(docId) && !$.osl.isNull(atchFileId)){
						var url = '/prj/prj3000/prj3100/selectPrj3100MenuTreeZipDownload.do?atchFileId='+atchFileId+'&docId='+docId;
						var fileLink = document.createElement("a");
						fileLink.href = url;
						fileLink.target = "_self";
						document.fileDownFrame.downForm.append(fileLink);
						fileLink.click();
						fileLink.remove();
					}else{
						$.osl.alert($.osl.lang("prj3100.message.alert.lackDownloadInfo"));
					}
					
				},
				//확정 파일 결재
				"signAtchFile" : function(obj){
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					// 선택노드
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					//선택된 파일					
					var checkedFiles = $('input[type=checkbox][name=fileSn]:checked');
					
					//선택된 파일 없으면 튕기기
					if(checkedFiles.length == 0){
						$.osl.alert($.osl.lang("prj3100.message.alert.notCheckedFile"));
						return false;
					}
					
					var checkedFileSn = [];
					//선택된 파일 저장하기
					$.each(checkedFiles, function(){
						
						checkedFileSn.push({"fileSn":$(this).val()});
						
					});
					
					//결재 하시겠습니까?
					$.osl.confirm($.osl.lang("prj3100.message.confirm.signAtchFile"),null,function(result) {
				        if (result.value) {
				        	
				        	var ord = $('input[type=checkbox][name=fileSn]:first').parent().data("ord");
							
							//AJAX 설정
							var ajaxObj = new $.osl.ajaxRequestAction(
									{"url":"<c:url value='/prj/prj3000/prj3100/updatePrj3001SignAprAjax.do'/>"}
									,{deleteDataList: JSON.stringify(checkedFileSn), docId:nodeData.docId, prjId:nodeData.prjId, ord:ord, signUseCd:nodeData.signUseCd});
							//AJAX 전송 성공 함수
							ajaxObj.setFnSuccess(function(data){
								if(data.errorYn == "Y"){
					   				$.osl.alert(data.message,{type: 'error'});
					   			}else{
					   				
					   				//결재 성공
					   				$.osl.toastr($.osl.lang("prj3100.toastr.success",checkedFileSn.length));
					   				
					   				//파일 리스트 재조회
				    				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
					   			}
							});
							
							//AJAX 전송
							ajaxObj.send();
				        }
				    });
					
				},
				//확정 파일 결재 반려
				"signAtchFileRjt" : function(obj){
				
					//선택한 트리 노드 없으면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					// 선택노드
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					//순번 가져오기
					var ord = $('input[type=checkbox][name=fileSn]:first').parent().data("ord");
					
					//체크된 파일 리스트
					var checkedFiles = $('input[type=checkbox][name=fileSn]:checked');
					
					//체크 된 값 없으면 튕기기
					if(checkedFiles.length == 0){
						$.osl.alert($.osl.lang("prj3100.message.alert.notCheckedFile"));
						return false;
					}
					
					var checkedFileSn = [];
					$.each(checkedFiles, function(){
						
						checkedFileSn.push($(this).val());
						
					});
					
					var data = {docId: nodeData.docId,
								dtParamPrjId : nodeData.prjId,
								checkedFiles : checkedFileSn.join(','),
								ord : ord,
								signUseCd : nodeData.signUseCd
								};
					
					var options = {
						modalTitle: $.osl.lang("prj3100.modal.title.signRjtRes"),
						closeConfirm: false,
						autoHeight: false
					};
				
					$.osl.layerPopupOpen('/prj/prj3000/prj3100/selectPrj3102View.do',data,options)
					
				}
			}
		});
		
		
		/**************************************/
		/* 트리 메뉴 및 관련 메서드 종료                                      */
		/**************************************/
		
		
		/**************************************/
		/* 파일 관련 메서드 시작	                  */
		/**************************************/
		
		//확정 대기 파일 업로드 버튼 클릭 이벤트
		$('#waitFileBtn').change(function(){
			var fileType = 'waitFile';
			fnFileAjaxUpload($('#waitFileBtn')[0].files , fileType);
			$('#waitFileBtn').val('');
		});
		
		//확정 파일 업로드 버튼 클릭 이벤트
		$('#atchFileBtn').change(function(){
			var fileType = 'atchFile';
			fnFileAjaxUpload($('#atchFileBtn')[0].files , fileType);
			$('#atchFileBtn').val('');
		});
		
		
		
		
		/*
		 * function명 : fileDropDown
		 * function설명 : 파일 드래그앤 드랍 이벤트
		 */
        function fileDropDown() {
            var confirmation = $("#confirmationList");
            //Drag기능 
            confirmation.on('dragenter', function(e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                confirmation.addClass('osl-border-brand');
            });
            confirmation.on('dragleave', function(e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                confirmation.removeClass('osl-border-brand');
            }); 
            confirmation.on('dragover', function(e) {
            	e.stopPropagation(); 
                e.preventDefault();
                // 드롭다운 영역 css  
                 confirmation.addClass('osl-border-brand');
            });
            confirmation.on('drop', function(e) {
            	e.preventDefault();
                // 드롭다운 영역 css
                confirmation.removeClass('osl-border-brand');

                var files = e.originalEvent.dataTransfer.files;
                
                if (files != null) {
                    if (files.length < 1) {
                       
                        return;
                    } else {
                    	//선택한 트리 노드 없으면 튕기기
        				var selectNodeIds = treeObj.jstree("get_selected");
        				if($.osl.isNull(selectNodeIds)){
        					$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
        					return false;
        				}

                        var fileType = 'atchFile';
                    	fnFileAjaxUpload(files, fileType);
                    }
                } else {
                    alert("ERROR");
                }
            });
            var waitConfirmation = $("#waitConfirmationList");
            //Drag기능 
            waitConfirmation.on('dragenter', function(e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                waitConfirmation.addClass('osl-border-brand');
            });
            waitConfirmation.on('dragleave', function(e) {
                e.stopPropagation();
                e.preventDefault();
                // 드롭다운 영역 css
                waitConfirmation.removeClass('osl-border-brand');
            });
            waitConfirmation.on('dragover', function(e) {
            	e.stopPropagation(); 
                e.preventDefault();
                // 드롭다운 영역 css  
                waitConfirmation.addClass('osl-border-brand');
            });
            waitConfirmation.on('drop', function(e) {
            	
            	e.preventDefault();
                // 드롭다운 영역 css
                waitConfirmation.removeClass('osl-border-brand');

                var files = e.originalEvent.dataTransfer.files;
                
                if (files != null) {
                    if (files.length < 1) {
                        return;
                    } else {
						
                    	//선택한 트리 노드 없으면 튕기기
        				var selectNodeIds = treeObj.jstree("get_selected");
        				if($.osl.isNull(selectNodeIds)){
        					$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
        					return false;
        				}

                        var fileType = 'waitFile';
                        
                    	fnFileAjaxUpload(files, fileType);
                    }
                } else {
                    alert("ERROR");
                }
            });
        }
		
		
        
		/*확정파일 영역 drag&drop sortable*/
		new Sortable($('#confirmationList')[0], {
			group:'shared',
	        animation: 100,
	        //선택된 대상 active css효과
	        chosenClass: "chosen",
	        //이동될 div(나갈)
	        onMove:function(evt,originalEvent){
				var UserAgent = navigator.userAgent;

				if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null){
					return false;
				}else{
					return true;
				}
			},
	      	//해당 div로 이동될 대상의 동작(들어온)
			onAdd:function(evt){
				//아이콘 부모박스 
				var moveDiv = $(evt.item);
				
				var fileSn = moveDiv.data("filesn");
				var fileType = 'waitFile';
				//파일 타입 바꾸기
				updateFileType(fileType,fileSn);
			}
	    });

		
		/*확정 대기파일 drag&drop sortable*/
		new Sortable($('#waitConfirmationList')[0], {
	        group:'shared',
	        animation: 100,
	        //선택된 대상 active css효과
	        chosenClass: "chosen",
	        //이동될 div(나갈)
	        onMove:function(evt,originalEvent){
	        	
				var UserAgent = navigator.userAgent;

				if (UserAgent.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent.match(/LG|SAMSUNG|Samsung/) != null){
					return false;
				}else{
					return true;
				}
			},
	      	//해당 div로 이동될 대상의 동작(들어온)
			onAdd:function(evt){
				//아이콘 부모박스 
				var moveDiv = $(evt.item);
				
				var infType = moveDiv.data("inftype");
				var signUseNm = $('#signUseNm').val();
				
				//확정 파일은 경고창 확인 후 변경
				if(infType == '01' && signUseNm == '예'){
					
					//lang
					$.osl.confirm("확정된 파일을 확정 대기 파일로 바꾸시겠습니까? 바꾼 후에는 결재 정보가 사라지고 처음부터 결재를 받아야 합니다.",null,function(result) {
				        if (result.value) {
				        	
				        	var fileSn = moveDiv.data('filesn');
							var fileType = 'atchFile';
							
							//파일 타입 바꾸기
							updateFileType(fileType,fileSn);
				        	
				        //아닐 경우 파일 조회 클릭
				        }else{
				        	
				        	//파일 리스트 재조회
		    				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
				        }
					
					})
				}
				//결재 대기 파일은 못 바꿈
				else if(infType == '02'){
					//lang
					$.osl.alert("결재 대기 파일은 변경할 수 없습니다.");
					
					//파일 리스트 재조회
    				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
					
					return false;
				}
				//그 외 파일은 
				else{
					
					var fileSn = moveDiv.data('filesn');
					var fileType = 'atchFile';
					
					//파일 타입 바꾸기
					updateFileType(fileType,fileSn);
					
				}
				
			}
	    });
		
	
		
		 
		 
		/**************************************/
		/* 파일 관련 메서드 종료	                  */
		/**************************************/
		
		/********************************/
		/*         산출물 연결 관리 부분  시작         */
		/********************************/
		
		
		//데이터 테이블 세팅
		$.osl.datatable.setting("prj3002PrjTable",{
			data: {
				source: {
					read: {
						url: "/prj/prj3000/prj3000/selectPrj3002DocConListAjax.do"
					}
				},
			},
			columns: [
				{field: 'checkbox', title: '#', textAlign: 'center', width: 20, selector: {class: 'kt-checkbox--solid'}, sortable: false, autoHide: false},
				{field: 'rn', title: 'No.', textAlign: 'center', width: 25, autoHide: false, sortable: false},
				{field: 'targetTypeNm', title: '구분', textAlign: 'left', width: 80, search: false},
				{field: 'targetNm', title: '대상 명', textAlign: 'left', width: 180, search: true, autoHide: false},
				{field: 'regUsrNm', title: '등록자', textAlign: 'center', width: 80, search: true,
					template: function (row) {
						return $.osl.user.usrImgSet(row.regUsrId, row.regUsrNm);
					},
					onclick: function(rowData){
						$.osl.user.usrInfoPopup(rowData.regUsrId);
					}
				},
				{field: 'regDtm', title: '등록일', textAlign: 'center', width: 80, search: true, searchType:"date"}
				
			],
			searchColumns:[
				{field: 'targetCd', title: '구분', searchOrd: 0, searchType:"select", searchCd:"PRJ00022"}
			],
			rows:{
				clickCheckbox: true
			},
			actionBtn:{
				"title": "연결 제거",
				"update": false
			},
			actionTooltip:{
				"delete": "연결 제거"
			},
			actionFn:{
				"insert":function(datatableId, type, rowNum){
					
					//선택된 산출물 없다면 튕기기
					var selectNodeIds = treeObj.jstree("get_selected");
					if($.osl.isNull(selectNodeIds)){
						$.osl.alert($.osl.lang("prj3100.message.alert.treeSelect"));
						return false;
					}
					
					// 선택노드
					var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
					var nodeData = selectNode.original;
					
					var data = {docId: docId,
								dtParamPrjId : nodeData.prjId};
					var options = {
							idKey: datatableId,
							modalTitle: $.osl.lang("prj3100.modal.title.insertDocCon"),
							closeConfirm: false,
							modalSize: "xl"
						};
					
					$.osl.layerPopupOpen('/prj/prj3000/prj3000/selectPrj3002View.do',data,options);
				},
				"delete":function(rowDatas, datatableId, type, rowNum, elem){
					return;
					//AJAX 설정
					var ajaxObj = new $.osl.ajaxRequestAction(
							{"url":"<c:url value='/prj/prj3000/prj3000/deletePrj3002DocConInfoAjax.do'/>"}
							,{deleteDataList: JSON.stringify(rowDatas)});
					//AJAX 전송 성공 함수
					ajaxObj.setFnSuccess(function(data){
						if(data.errorYn == "Y"){
			   				$.osl.alert(data.message,{type: 'error'});
			   			}else{
			   				//삭제 성공
			   				$.osl.toastr(data.message);
			   				
			   				//datatable 조회
			   				$("button[data-datatable-id="+datatableId+"][data-datatable-action=select]").click();
			   			}
					});
					
					//AJAX 전송
					ajaxObj.send();
				}
			}
		});
		
			
		
		
		/********************************/
		/*         산출물 연결 관리 부분  종료         */
		/********************************/
		
		/*스크롤 세팅*/
		//조직 트리 스크롤 세팅
		ktScrollInit("#prj3100DocTree", "410");
		//확정 파일 스크롤 세팅
		ktScrollInit("#confirmationList", "350");
		//확정 대기 파일 스크롤 세팅
		ktScrollInit("#waitConfirmationList", "350");	
		
		
		/*
		 * function명 : ktScrollInit
		 * function설명 : 스크롤 세팅 및 반응형 될 때 세로크기값을 계산해준다
		 * @param targetName : 스크롤 세팅할 대상 class, id
		 * @param targetHeight : 스크롤의 세로 사이즈
		 */
		function ktScrollInit (targetName, targetHeight) {
			KTUtil.scrollInit($(targetName)[0], {
		   		//모바일 스크롤 바 마우스 제어 비활성화
		         disableForMobile: true, 
		         //반응형 시 스크롤 유지 여부
		         resetHeightOnDestroy: true, 
		         //브라우저 창의 크기를 조정할 때 크기를 자동으로 조절 여부
		         handleWindowResize: true, 
		         //세로 사이즈
		         height: targetHeight
		    });
		}
		
		
		
		
	};
	
	
	/**
	 * function 명 	: selectDocInfo
	 * function 설명	: 선택한 산출물의 상세정보를 조회하여 화면에 세팅한다.
	 * @param docId : 선택한 산출물 ID
	 */
	var selectDocInfo = function(nodeData) {
    	
		 
		//AJAX 설정
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3000/selectPrj3000DocInfoAjax.do'/>", "async": false}
				,{"docId": nodeData.docId, "dtParamPrjId" : nodeData.prjId});
		
		//AJAX 전송 성공 함수
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				$("#"+formId)[0].reset();
				
				// 산출물 정보 세팅
		    	$.osl.setDataFormElem(data.docInfoMap,"frPrj3100", ["docId", "docNm", "useNm", "ord", "docEdDtm", "signUseNm", "docFormFileId", "docFormConfFileId", "docAtchFileId", "docWaitFileId"]);
			
		    	var docDesc = data.docInfoMap.docDesc;
				
				// 산출물 마감일 없을 경우
				if($.osl.isNull(data.docInfoMap.docEdDtm)){
					$("#docEdDtm").val("-");
				}
				
				if(!$.osl.isNull(docDesc)){
					docDesc =  $.osl.escapeHtml(docDesc);
			    	// 비고 값 div영역에 세팅
					$("#docDesc").html(docDesc.replace(/\n/g, '<br/>'));
				}
				
				//입력된 검색값 초기화 (보류)
				//$("#searchData_Prj3000PrjTable").val('');
				
				//데이터 테이블 정보 세팅
				selectDocConInfo();
			}
		});
		
		//AJAX 전송
		ajaxObj.send();
	};
	
	
	/*
	 * function명 : fnFileAjaxUpload
	 * function설명 : 파일 업로드를 위한 메소드
	 * @param files : 업로드할 파일의 정보들
	 * @param fileType : 확정 파일인지 확정 대기파일인지 (확정파일 = atchFile, 확정대기파일 = waitFile)
	 */
	var fnFileAjaxUpload = function(files,fileType) {
		var files = files;
		
		var fd = $.osl.formDataToJsonArray(formId);
		
		//확장자 체크
		var extChk = true;
		
		//다중 파일 모두 넣기
		$.each(files, function(idx, file){
			
			//확장자 가져오기
			var ext = file.name.split(".").pop().toLowerCase();
			
			if(!fileWhiteList(ext)){
				//lang
				//$.osl.toastr("확장자가 [ " + ext + " ] 인 파일은 첨부가 불가능 합니다.");
				$.osl.alert($.osl.lang("prj3100.message.alert.fileExtChk",ext));
				
				extChk = false;
				return false;
			}
			fd.append('file', file);
		});
		
		//false면 리턴
		if(!extChk){
			return;
		}
		
		fd.append('fileType', fileType);
		
		//확정파일이면  확정 파일 아이디 가져오기
		if(fileType == 'atchFile'){
			atchFileId = $('#docAtchFileId').val();
			
		//확정 대기파일이면 
		}else if(fileType == 'waitFile'){
			atchFileId = $('#docWaitFileId').val();
		}
		
		fd.append('atchFileId', atchFileId);
		fd.append('insertType', fileType);
		fd.append('paramDocId', $('#docId').val());
		
		//AJAX 설정
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/insertPrj3100FormFileUploadAjax.do'/>", "async": false, "contentType":false,"processData":false ,"cache":false}
				,fd);
		
		//AJAX 전송 성공 함수
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				$.osl.toastr(data.message);
				
				//파일 정보 조회
				selectFormFileList();
			}
		});
		
		//AJAX 전송
		ajaxObj.send();
	};
	
	
	/*
	 * function명 : selectFormFileList
	 * function설명 : 가져온 파일 리스트 그리기
	 * @param data : 가져온 파일 데이터
	 */
	var selectFormFileList = function(){
		
		//확정 산출물
		var docAtchFileId = $('#docAtchFileId').val();
		
		 //확정 대기 산출물
		var docWaitFileId = $('#docWaitFileId').val();
		
		//AJAX 설정
		var ajaxObj1 = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/selectPrj3100FileListAjax.do'/>", "async": false}
				,{'docAtchFileId': docAtchFileId, 'docWaitFileId':docWaitFileId, "docId" : $("#docId").val()});
					
		
		//AJAX 전송 성공 함수
		ajaxObj1.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				
				//가져온 데이터로 그림그리기
				drawList(data);
			}
		});
		
		//AJAX 전송
		ajaxObj1.send();			
		
	}
	
	 /*
	 * function명 : drawList
	 * function설명 : 가져온 파일 리스트 그리기
	 * @param data : 가져온 파일 데이터
	 */
	var drawList = function(data){
		//파일 리스트 비우기
		$("#confirmationList").empty();
		$("#waitConfirmationList").empty();
		
		var atchFileList = data.atchFileList;
		
		var waitFileList = data.waitFileList;
		
		//확정 산출물 파일 리스트 돌기
		$.each(atchFileList, function(idx, fileData){
			var fileVolume =$.osl.byteCalc(fileData.fileSize);
			var iconPath = '';
			var iconClass = '';
			var iconColor = '';
			var iconPlace = '';
			
			var atchFileId = $('#docAtchFileId').val();
			
			//사진 확장자
			var imgExt = ['jpg','jpeg','png','gif'];
			
			//파일 종류에 따라 이미지 다르게 설정
			//pdf 파일일 경우
			if(fileData.fileExtsn == 'pdf'){
				iconPath =	'<path d="M9.766 8.295c-.691-1.843-.539-3.401.747-3.726 1.643-.414 2.505.938 2.39 3.299-.039.79-.194 1.662-.537 3.148.324.49.66.967 1.055 1.51.17.231.382.488.629.757 1.866-.128 3.653.114 4.918.655 1.487.635 2.192 1.685 1.614 2.84-.566 1.133-1.839 1.084-3.416.249-1.141-.604-2.457-1.634-3.51-2.707a13.467 13.467 0 0 0-2.238.426c-1.392 4.051-4.534 6.453-5.707 4.572-.986-1.58 1.38-4.206 4.914-5.375.097-.322.185-.656.264-1.001.08-.353.306-1.31.407-1.737-.678-1.059-1.2-2.031-1.53-2.91zm2.098 4.87c-.033.144-.068.287-.104.427l.033-.01-.012.038a14.065 14.065 0 0 1 1.02-.197l-.032-.033.052-.004a7.902 7.902 0 0 1-.208-.271c-.197-.27-.38-.526-.555-.775l-.006.028-.002-.003c-.076.323-.148.632-.186.8zm5.77 2.978c1.143.605 1.832.632 2.054.187.26-.519-.087-1.034-1.113-1.473-.911-.39-2.175-.608-3.55-.608.845.766 1.787 1.459 2.609 1.894zM6.559 18.789c.14.223.693.16 1.425-.413.827-.648 1.61-1.747 2.208-3.206-2.563 1.064-4.102 2.867-3.633 3.62zm5.345-10.97c.088-1.793-.351-2.48-1.146-2.28-.473.119-.564 1.05-.056 2.405.213.566.52 1.188.908 1.859.18-.858.268-1.453.294-1.984z"></path>';
				iconClass = 'osl-uppy-pdf-bg';
				iconColor = '#E2514A';
				iconPlace = '38';
			//압축 파일일 경우
			}else if(fileData.fileExtsn == 'zip'){
				iconPath = '<path d="M10.45 2.05h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V2.55a.5.5 0 0 1 .5-.5zm2.05 1.024h1.05a.5.5 0 0 1 .5.5V3.6a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5v-.001zM10.45 0h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V.5a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 3.074h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 1.024h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm-2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-1.656 3.074l-.82 5.946c.52.302 1.174.458 1.976.458.803 0 1.455-.156 1.975-.458l-.82-5.946h-2.311zm0-1.025h2.312c.512 0 .946.378 1.015.885l.82 5.946c.056.412-.142.817-.501 1.026-.686.398-1.515.597-2.49.597-.974 0-1.804-.199-2.49-.597a1.025 1.025 0 0 1-.5-1.026l.819-5.946c.07-.507.503-.885 1.015-.885zm.545 6.6a.5.5 0 0 1-.397-.561l.143-.999a.5.5 0 0 1 .495-.429h.74a.5.5 0 0 1 .495.43l.143.998a.5.5 0 0 1-.397.561c-.404.08-.819.08-1.222 0z"></path>';
				iconClass = 'osl-uppy-archive-bg';
				iconColor = '#00C469';
				iconPlace = '38';
			//그 외의 경우
			}else{
				iconPath = '<path d="M5.5 22a.5.5 0 0 1-.5-.5v-18a.5.5 0 0 1 .5-.5h10.719a.5.5 0 0 1 .367.16l3.281 3.556a.5.5 0 0 1 .133.339V21.5a.5.5 0 0 1-.5.5h-14zm.5-1h13V7.25L16 4H6v17z"></path><path d="M15 4v3a1 1 0 0 0 1 1h3V7h-3V4h-1z"></path>';
				iconClass = 'osl-uppy-file-bg';
				iconColor = '#A7AFB7';
				iconPlace = '25';
			}
			
			var fileDivbefore = 	'';
			
			//결재 상태가 결재 대기 일때 오른쪽 버튼 노출 x
			if(fileData.infType == '02'){
				fileDivbefore += 	'<div class="osl-uppy-file osl-uppy-file--fullsize atchFile" data-filesn="'+fileData.fileSn+'" data-ord="'+fileData.ord+'" data-inftype="'+fileData.infType+'">'
				
				//결재 순번이 본인일 때 체크박스 노출
				if(fileData.usrId == $.osl.user.userInfo.usrId){
					fileDivbefore += 	'<div class="kt-padding-t-15 kt-padding-b-15 float-left">'
										+	'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid kt-margin-b-0" data-ord="'+fileData.ord+'">'
											+	'<input type="checkbox" name="fileSn" value="'+fileData.fileSn +'"><span></span>'
										+	'</label>'
									+	'</div>';
					
				//본인 결재가 아닐 때 체크박스 x
				}else{
					fileDivbefore +=	'<div class="kt-padding-t-15 kt-padding-b-15 float-left">'
										+	'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid kt-margin-b-0">'
										+	'</label>'
										+	'<input type="hidden" name="fileSn" value="'+fileData.fileSn +'"><span></span>'
									+	'</div>';
					
					
				}
				
			}
			//결재 상태 대기 아닐 때 오늘쪽 버튼 노출
			else{
				fileDivbefore += 	'<div class="osl-uppy-file osl-uppy-file--fullsize" data-filesn="'+fileData.fileSn+'" data-ord="'+fileData.ord+'" data-inftype="'+fileData.infType+'">'
									+	'<div class="osl-uppy__btn osl-uppy__arrow-btn osl-uppy__right-btn osl-uppy__right kt-margin-r-10"></div>'
									+	'<div class="kt-padding-t-15 kt-padding-b-15 float-left">'
										+	'<label class="kt-checkbox kt-checkbox--single kt-checkbox--solid kt-margin-b-0">'
										+	'</label>'
										+	'<input type="hidden" name="fileSn" value="'+fileData.fileSn +'"><span></span>'
									+	'</div>';
			}
			
			var fileDivCenter = '';
			
			//사진 확장자가 아닐 때
			if($.inArray(fileData.fileExtsn, imgExt) == -1){
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail '+ iconClass +'">'
										+	'<div class="osl-uppy-file-sumnail-bg"></div>'
										+	'<span class="osl-uppy-iconFile">'
											+	'<svg aria-hidden="true" focusable="false" class="UppyIcon" width="'+iconPlace+'" height="'+iconPlace+'" viewBox="0 0 25 25">'
												+	'<g fill="'+iconColor +'" fill-rule="nonzero">'
													+	iconPath
												+	'</g>'
											+	'</svg>'
										+	'</span>'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
											+	'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			//사진 확장자일 때
			}else{
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail">'
										+ 	'<img src="/cmm/fms/getImage.do?fileSn='+fileData.fileSn+"&atchFileId="+atchFileId+'">'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
										+		'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			}
			
			var fileDivAfter = 			'';
			
			//결재 상태가 확정일 때
			if(fileData.infType == '01'){
				fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="'+$.osl.escapeHtml(fileData.orignlFileNm)+ '">'+$.osl.escapeHtml(fileData.orignlFileNm) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name" infType="'+fileData.infType+'"> 결재 상태  : '+fileData.infTypeNm+' / 확정 일자:'+fileData.signDtm+'</div>'
									+	'</div>'
									+	'<div class="osl-uppy__btn osl-uppy__right kt-margin-r-10">'
										+	'<i class="fas fa-info-circle"></i>'
									+	'</div>'
									+	'<div class="osl-uppy__btn osl-uppy__right kt-margin-r-10">'
										+	'<i class="fa fa-times-circle"></i>'
									+	'</div>'
								+	'</div>'; 
			}
			
			//결재 대기일 경우 삭제 및 이동 버튼 노출 X
			else if(fileData.infType == '02'){
				fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="'+$.osl.escapeHtml(fileData.orignlFileNm)+ '">'+$.osl.escapeHtml(fileData.orignlFileNm) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name" infType="'+fileData.infType+'"> 결재 상태 :'+fileData.infTypeNm+'</div>'
									+	'</div>'
									+	'<div class="osl-uppy__btn osl-uppy__right kt-margin-r-10">'
										+	'<i class="fas fa-info-circle"></i>'
									+	'</div>'
								+	'</div>'; 
				
			}
			
			//결재 반려 일 때
			else{
				fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="'+$.osl.escapeHtml(fileData.orignlFileNm)+ '">'+$.osl.escapeHtml(fileData.orignlFileNm) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name" infType="'+fileData.infType+'"> 결재 상태 :'+fileData.infTypeNm+'</div>'
									+	'</div>'
									+	'<div class="osl-uppy__btn osl-uppy__right kt-margin-r-10">'
										+	'<i class="fas fa-info-circle"></i>'
									+	'</div>'
									+	'<div class="osl-uppy__btn osl-uppy__right kt-margin-r-10">'
										+	'<i class="fa fa-times-circle"></i>'
									+	'</div>'
								+	'</div>'; 
			}
								
			var fileDiv = fileDivbefore + fileDivCenter + fileDivAfter;
						
			$('#confirmationList').append(fileDiv);
			
		});
		
		//확정 대기 산출물 양식 리스트 돌기
		$.each(waitFileList, function(idx, fileData){
			var fileVolume =$.osl.byteCalc(fileData.fileMg);
			var iconPath = '';
			var iconTitle = '';
			var iconClass = '';
			var iconColor = '';
			var iconPlace = '';
			
			//사진 확장자
			var imgExt = ['jpg','jpeg','png','gif'];

			//파일 종류에 따라 이미지 다르게 설정
			if(fileData.fileExtsn == 'pdf'){
				iconPath =	'<path d="M9.766 8.295c-.691-1.843-.539-3.401.747-3.726 1.643-.414 2.505.938 2.39 3.299-.039.79-.194 1.662-.537 3.148.324.49.66.967 1.055 1.51.17.231.382.488.629.757 1.866-.128 3.653.114 4.918.655 1.487.635 2.192 1.685 1.614 2.84-.566 1.133-1.839 1.084-3.416.249-1.141-.604-2.457-1.634-3.51-2.707a13.467 13.467 0 0 0-2.238.426c-1.392 4.051-4.534 6.453-5.707 4.572-.986-1.58 1.38-4.206 4.914-5.375.097-.322.185-.656.264-1.001.08-.353.306-1.31.407-1.737-.678-1.059-1.2-2.031-1.53-2.91zm2.098 4.87c-.033.144-.068.287-.104.427l.033-.01-.012.038a14.065 14.065 0 0 1 1.02-.197l-.032-.033.052-.004a7.902 7.902 0 0 1-.208-.271c-.197-.27-.38-.526-.555-.775l-.006.028-.002-.003c-.076.323-.148.632-.186.8zm5.77 2.978c1.143.605 1.832.632 2.054.187.26-.519-.087-1.034-1.113-1.473-.911-.39-2.175-.608-3.55-.608.845.766 1.787 1.459 2.609 1.894zM6.559 18.789c.14.223.693.16 1.425-.413.827-.648 1.61-1.747 2.208-3.206-2.563 1.064-4.102 2.867-3.633 3.62zm5.345-10.97c.088-1.793-.351-2.48-1.146-2.28-.473.119-.564 1.05-.056 2.405.213.566.52 1.188.908 1.859.18-.858.268-1.453.294-1.984z"></path>';
				iconClass = 'osl-uppy-pdf-bg';
				iconColor = '#E2514A';
				iconPlace = '38';
			}else if(fileData.fileExtsn == 'zip'){
				iconPath = '<path d="M10.45 2.05h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V2.55a.5.5 0 0 1 .5-.5zm2.05 1.024h1.05a.5.5 0 0 1 .5.5V3.6a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5v-.001zM10.45 0h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5V.5a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 3.074h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-2.05 1.024h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm-2.05 1.025h1.05a.5.5 0 0 1 .5.5v.025a.5.5 0 0 1-.5.5h-1.05a.5.5 0 0 1-.5-.5v-.025a.5.5 0 0 1 .5-.5zm2.05 1.025h1.05a.5.5 0 0 1 .5.5v.024a.5.5 0 0 1-.5.5H12.5a.5.5 0 0 1-.5-.5v-.024a.5.5 0 0 1 .5-.5zm-1.656 3.074l-.82 5.946c.52.302 1.174.458 1.976.458.803 0 1.455-.156 1.975-.458l-.82-5.946h-2.311zm0-1.025h2.312c.512 0 .946.378 1.015.885l.82 5.946c.056.412-.142.817-.501 1.026-.686.398-1.515.597-2.49.597-.974 0-1.804-.199-2.49-.597a1.025 1.025 0 0 1-.5-1.026l.819-5.946c.07-.507.503-.885 1.015-.885zm.545 6.6a.5.5 0 0 1-.397-.561l.143-.999a.5.5 0 0 1 .495-.429h.74a.5.5 0 0 1 .495.43l.143.998a.5.5 0 0 1-.397.561c-.404.08-.819.08-1.222 0z"></path>';
				iconClass = 'osl-uppy-archive-bg';
				iconColor = '#00C469';
				iconPlace = '38';
			}else{
				iconPath = '<path d="M5.5 22a.5.5 0 0 1-.5-.5v-18a.5.5 0 0 1 .5-.5h10.719a.5.5 0 0 1 .367.16l3.281 3.556a.5.5 0 0 1 .133.339V21.5a.5.5 0 0 1-.5.5h-14zm.5-1h13V7.25L16 4H6v17z"></path><path d="M15 4v3a1 1 0 0 0 1 1h3V7h-3V4h-1z"></path>';
				iconClass = 'osl-uppy-file-bg';
				iconColor = '#A7AFB7';
				iconPlace = '25';
			}
			
			var fileDivbefore = 	'<div class="osl-uppy-file osl-uppy-file--fullsize waitFile"  data-filesn="'+fileData.fileSn+'" data-ord="'+fileData.ord+'" >'
									/*+ 	'<div class="border-bottom">'
									+		'<div class="float-left">'
									+			''
									+		'</div>'
									+		'<div class="float-right">'
									+		'</div>'
									+	'</div>'*/
									+	'<div class="osl-uppy__btn osl-uppy__arrow-btn osl-uppy__left-btn osl-uppy__left kt-margin-r-10"></div>';
									
			var fileDivCenter = '';
			
			//사진 확장자가 아닐 때
			if($.inArray(fileData.fileExtsn, imgExt) == -1){
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail '+ iconClass +'">'
										+	'<div class="osl-uppy-file-sumnail-bg"></div>'
										+	'<span class="osl-uppy-iconFile">'
											+	'<svg aria-hidden="true" focusable="false" class="UppyIcon" width="'+iconPlace+'" height="'+iconPlace+'" viewBox="0 0 25 25">'
												+	'<g fill="'+iconColor +'" fill-rule="nonzero">'
													+	iconPath
												+	'</g>'
											+	'</svg>'
										+	'</span>'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
											+	'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			//사진 확장자일 때
			}else{
				fileDivCenter +=		'<div class="osl-uppy-file-sumnail">'
										+ 	'<img src="'+ "/cmm/fms/getImage.do?fileSn="+fileData.fileSn+"&atchFileId="+fileData.atchFileId+'">'
										+	'<div class="osl-uppy-list-dashboardItem-action--download" aria-label="파일 다운로드">'
										+		'<i class="fas fa-arrow-circle-down"></i>'
										+	'</div>'
			}
			var fileDivAfter = 			'</div>'
									+	'<div class="osl-uppy-file-info-group kt-padding-t-0">'
										+	'<div class="osl-uppy-file-name" title="'+$.osl.escapeHtml(fileData.orignlFileNm)+ '">'+$.osl.escapeHtml(fileData.orignlFileNm) +'</div>'
										+	'<div class="osl-uppy-file-volume">'+fileVolume+'</div>'
										+ 	'<div class="osl-uppy-file-name"> 업로드 일자 :'+fileData.creatDt+'</div>'
									+	'</div>'
									+	'<div class="osl-uppy__btn osl-uppy__right kt-margin-r-10">'
										+	'<i class="fa fa-times-circle"></i>'
									+	'</div>'
									+	'<input type="hidden" name="fileSn" value="'+fileData.fileSn +'">'
								+	'</div>'; 
									
			var fileDiv = fileDivbefore + fileDivCenter + fileDivAfter;
			$('#waitConfirmationList').append(fileDiv);
			
		});
	
		//파일 이동 버튼 이벤트, 삭제버튼, 다운버튼 이벤트 걸기
		fileMoveBtnEvt();
		deleteFileBtnEvt();
		fileDownBtnEvt();
	}
    
	 /*
	 * function명 : fileDownBtnEvt
	 * function설명 : 파일 다운로드 이벤트
	 */
	var fileDownBtnEvt = function(){
		
		$('.osl-uppy-list-dashboardItem-action--download').click(function(){
			debugger
			var type = $(this).parents(".osl-uppy-file");
			var fileSn = type.data("filesn");
			var atchFileId = '';
			
			var form = $("#"+formId)[0];
			var fd = $.osl.formDataToJsonArray(formId);
			//확정 파일이면
			if(type.hasClass('atchFile')){
				
				atchFileId = $('#docAtchFileId').val();
			//확정 대기 파일이면
			}else if(type.hasClass('waitFile')){
				
				atchFileId = $('#docWaitFileId').val();
			}
			//파일 다운
			$.osl.file.fileDownload(atchFileId,fileSn);
			
		});
	}
	 
	 /*
	 * function명 : fileMoveBtnEvt
	 * function설명 : 파일 리스트 화살표 버튼 클릭 이벤트
	 */
	var fileMoveBtnEvt = function(){
		$('.osl-uppy__arrow-btn').click(function(){
			//클릭된 화살표의 부모(첨부파일 전체) 박스
			var target = $(this).parents(".osl-uppy-file");
			var fileSn = target.data("filesn");
			
			var fileType = '';
			//버튼모양 여부로 판단
			//좌측 버튼이 있을때(확정 대기 파일 버튼)
			if(target.hasClass('waitFile')){
				//확정 파일로 이동
				$('#confirmationList').prepend(target);
				//아이콘 변경(방향,아이콘 모양)
				$(this).addClass('osl-uppy__right-btn osl-uppy__right');
				$(this).removeClass('osl-uppy__left-btn osl-uppy__left');
				
				//확정 대기 파일
				fileType = 'waitFile';
			//우측 버튼이 있을때
			}else{ 
				//확정 대기 파일로 이동(확정 파일 버튼)
				$('#waitConfirmationList').prepend(target);
				//아이콘 변경(방향,아이콘 모양)
				$(this).addClass('osl-uppy__left-btn osl-uppy__left');
				$(this).removeClass('osl-uppy__right-btn osl-uppy__right');

				//확정 파일
				fileType = 'atchFile';
			}
			
			//파일 타입 바꾸기
			updateFileType(fileType,fileSn);
		});
	}
	
	/*
	 * function명 : deleteFileBtnEvt
	 * function설명 : 파일 리스트 삭제 버튼 클릭 이벤트
	 */
	var deleteFileBtnEvt = function(){
		
		$('.fa-times-circle').click(function(){
			
			var targetType = $(this).parents(".osl-uppy-file");
			var fileSn = targetType.data("filesn");
			var fileType = '';
			
			//부모객체에 오른쪽 클래스가 있다면 확정 대기 파일
			if(targetType.hasClass("waitFile")){
				atchFileId = $('#docWaitFileId').val();
				fileType = "waitFile";
				
			//부모객체에 왼쪽 클래스가 있다면 확정 파일
			}else if(targetType.hasClass("atchFile")){ 
				atchFileId = $('#docAtchFileId').val();
				fileType = "waitType";
				
			}
			
			var selectNodeIds = treeObj.jstree("get_selected");
			
			// 선택노드
			var selectNode = treeObj.jstree().get_node(selectNodeIds[0]);
			var nodeData = selectNode.original;

			//선택 노트에서 값 가져오기
			var docId = nodeData.docId;
			var signUseCd = nodeData.signUseCd;
			
			//파일 삭제 확인창
			$.osl.confirm($.osl.lang("prj3100.message.confirm.deleteFormFile"),null,function(result) {
		        if (result.value) {
		        	
		    		//AJAX 설정
		    		var ajaxObj = new $.osl.ajaxRequestAction(
						{"url":"<c:url value='/prj/prj3000/prj3100/deletePrj3100FileAjax.do'/>"}
						,{"atchFileId":atchFileId, "fileSn":fileSn, "docId":docId,"signUseCd":signUseCd,"fileType":fileType});
	
		    		//AJAX 전송 성공 함수
		    		ajaxObj.setFnSuccess(function(data){
		    			if(data.errorYn == "Y"){
		    				$.osl.alert(data.message,{type: 'error'});
		    			}else{
		    				//삭제 성공
		    				$.osl.toastr(data.message);
		    				
		    				//파일 리스트
		    				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
		    			}
		    		});
		    		
		    		//AJAX 전송
		    		ajaxObj.send();
		        }
		    });
				
		});
		
	}
	 
	/**
	 * function 명 	: updateFileType
	 * function 설명	: 선택한 파일을 확정 혹은 확정대기로 바꾼다
	 * @param fileType : 확정파일인지 확정 대기 파일인지 구분
	 */
	var updateFileType = function(fileType, fileSn){
		
		//원래 파일 아이디
		var beforeFileId = '';
		
		//변경 후 바뀔 파일 아이디
		var afterFileId = '';
		
		//확정 예정 파일일 경우
		if(fileType == 'waitFile'){
			
			//확정 예정 파일 아이디에서 확정 파일 아이디로
			beforeFileId = $('#docWaitFileId').val();
			afterFileId = $('#docAtchFileId').val();
			
		//확정 파일일 경우
		}else if(fileType == 'atchFile'){
			
			//확정 파일 아이디에서 확정 예정 파일 아이디로
			beforeFileId = $('#docAtchFileId').val();
			afterFileId = $('#docWaitFileId').val();
			
		}
		
		//AJAX 설정
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/updatePrj3100FileTypeAjax.do'/>", "async": false}
				,{"docId": docId, "beforeFileId":beforeFileId, "afterFileId":afterFileId, "fileSn":fileSn, "updateType":fileType});
		
		//AJAX 전송 성공 함수 
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
				
				//파일 리스트 초기화하기
				$("button[data-tree-id=prj3100DocTree][data-tree-action=selectFiles]").click();
			}else{
				
				$.osl.toastr(data.message);
				
				//파일 리스트 다시 그리기
				selectFormFileList();
			}
		});
		
		//AJAX 전송
		ajaxObj.send();
	}
	
	 /*
	 * function명 : fileZipDownload
	 * function설명 : 파일 압축 다운로드 이벤트
	 */
	var fileZipDownload = function(fileType){
		var docId = $('#docId').val();
		var atchFileId = '';
		
		if(fileType == 'atchFile'){
			atchFileId = $('#docAtchFileId').val();	
		}else if(fileType == 'waitFile'){
			atchFileId = $('#docWaitFileId').val();
		}else if(fileType == 'formConfFile'){
			atchFileId = $('#docFormConfFileId').val();				
		}
		var docNm = $('#docNm').val();
		
		if(!$.osl.isNull(docId) && !$.osl.isNull(atchFileId) && !$.osl.isNull(docNm)){
			var url = '/prj/prj3000/prj3100/selectPrj3100ZipDownload.do?atchFileId='+atchFileId+'&docId='+docId+'&fileType='+fileType;
			var fileLink = document.createElement("a");
			fileLink.href = url;
			fileLink.target = "_self";
			document.fileDownFrame.downForm.append(fileLink);
			fileLink.click();
			fileLink.remove();
		}else{
			$.osl.alert($.osl.lang("prj3100.message.alert.lackDownloadInfo"));
		}
		
	}
	
	
	 /*
	 * function명 : fileWhiteList
	 * function설명 : 파일 업로드 가능 확장자 확인
	 */
	var fileWhiteList = function( fileExt ){
		// 화이트 리스트가 아니라면 중지 업로드 중지.
		if( $.inArray(fileExt, ['doc','docx','hwp','pdf','ppt','pptx','xls','xlsx','zip','jpg','jpeg','png','gif','eml','cell','show']) == -1) {
			return false;
	   }
		return true;
		
	}
	 
	 /*
	 * function명 : selectFormFileCnt
	 * function설명 : 해당 산출물의 양식 파일 수를 반환해준다.
	 */
	var selectFormFileCnt = function(){
		
		var docId = $('#docId').val();
		
		var atchFileId = $('#docFormConfFileId').val();
		 
		var fileData = '';
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3100/selectPrj3100FormFileCntAjax.do'/>", "async": false}
				,{"docId": docId, "atchFileId":atchFileId });
		
		//AJAX 전송 성공 함수
		ajaxObj.setFnSuccess(function(data){
			
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
				
			}else{
				
				return data;
			}
		});
		
		//AJAX 전송
		ajaxObj.send();
	}
	
	/**
	 * function 명 	: selectDocConInfo
	 * function 설명	: 선택한 산출물의 연결 정보를 조회하여 화면에 세팅한다.
	 * @param docId : 선택한 산출물 ID
	 */
	var selectDocConInfo = function(){
		docId = $("#docId").val();
		$.osl.datatable.list[prj3002PrjTable].targetDt.setDataSourceParam("docId", docId);
		$("button[data-datatable-id="+prj3002PrjTable+"][data-datatable-action=select]").click();
		 
	}	
	
	return {
        // public functions
        init: function() {
        	documentSetting();
        }
        
    };
}();

$.osl.ready(function(){
	OSLPrj3000Popup.init();
});
</script>
<!-- end script -->
<jsp:include page="/WEB-INF/jsp/lunaops/bottom/footer.jsp" />
