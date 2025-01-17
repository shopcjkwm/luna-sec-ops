<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<form class="kt-form" id="frDpl1002">
	<input type="hidden" id="paramPrjId" name="paramPrjId" value="${param.paramPrjId}">
	<input type="hidden" id="paramDplId" name="paramDplId" value="${param.paramDplId}">
	<div class="kt-portlet kt-portlet--mobile kt-margin-b-0 osl-bg-none shadow-none" id="dplRecord">
		<div class="kt-portlet__head kt-bg-light">
			<div class="kt-portlet__head-label">
			</div>
			
			<div class="kt-portlet__head-toolbar">
				<ul class="nav nav-pills nav-pills-sm flex-flow--inherit" role="tablist">
					<li class="nav-item">
						<a class="nav-link active text-center" data-toggle="tab" href="#dplInfoTab" data-tab-id="dplInfo" role="tab">배포정보</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-center" data-toggle="tab" href="#allHistoryTab" data-tab-id="dplInfoAll" role="tab">전체 이력</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-center" data-toggle="tab" href="#osl_tabs_1_3" data-tab-id="dplInfoBuild" role="tab">빌드 이력</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-center" data-toggle="tab" href="#osl_tabs_1_4" data-tab-id="dplInfoSign" role="tab">결재 이력</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-center" data-toggle="tab" href="#osl_tabs_1_5" data-tab-id="dplInfoModify" role="tab">수정 이력</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-center" data-toggle="tab" href="#osl_tabs_1_6" data-tab-id="dplRevision" role="tab">배정 리비전</a>
					</li>
					<li class="nav-item">
						<a class="nav-link text-center" data-toggle="tab" href="#osl_tabs_1_7" data-tab-id="dplAssignReq" role="tab">배정 요구사항 목록</a>
					</li>
				</ul>
			</div>
			
		</div>
		
		<div class="kt-portlet__body kt-padding-0 kt-padding-t-10">
			<div class="tab-content">
				
				<div class="tab-pane kt-scroll active" id="dplInfoTab" data-tab-id="dplInfo" role="tabpanel">
					<div class="kt-portlet kt-portlet--mobile kt-margin-b-0" id="dplInfo">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fa fa-info-circle kt-margin-r-5"></i>배포 정보
								</h5>
							</div>
						</div>
						<div class="kt-portlet__body">
							
							<div class="row">
								<div class="col-6 kt-padding-r-20">
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 상태</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplStsNm" name="dplStsNm" readonly="readonly" value="<c:out value="${dplInfo.dplStsNm}"/>" >
										</div>
									</div>	
								</div>
								<div class="col-6 kt-padding-l-20">
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 버전</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplVer" name="dplVer" readonly="readonly" value="<c:out value="${dplInfo.dplVer}"/>" >
										</div>
									</div>	
								</div>
								<div class="col-6 kt-padding-r-20">
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 명</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplNm" name="dplNm" readonly="readonly" value="<c:out value="${dplInfo.dplNm}"/>" >
										</div>
									</div>	
								</div>
								<div class="col-6 kt-padding-l-20">
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-calendar-alt kt-margin-r-5"></i>배포 일자</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplDt" name="dplDt" readonly="readonly" value="<c:out value="${dplInfo.dplDt}"/>" >
										</div>
									</div>	
								</div>
								<div class="col-6 kt-padding-r-20">
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-user-cog kt-margin-r-5"></i>배포자</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplUsrNm" name="dplUsrNm" readonly="readonly" value="<c:out value="${dplInfo.dplUsrNm}"/>" >
										</div>
									</div>
								</div>
								<div class="col-6 kt-padding-l-20">	
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-file-signature kt-margin-r-5"></i>결재 사용 유무</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplSignUseNm" name="dplSignUseNm" readonly="readonly" value="<c:out value="${dplInfo.dplSignUseNm}"/>" >
										</div>
									</div>
								</div>
								<div class="col-6 kt-padding-r-20">
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 리비전</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplRevisionNum" name="dplRevisionNum" readonly="readonly" value="<c:out value='${empty dplInfo.dplRevisionNum ? "Last Revision" :  dplInfo.dplRevisionNum }'/>" >
										</div>
									</div>	
								</div>
								<div class="col-6 kt-padding-l-20">
									<div class="form-group row">
										<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fab fa-cloudsmith kt-margin-r-5"></i>배포 방법</label>
										<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
											<input class="form-control" type="text" id="dplTypeNm" name="dplTypeNm" readonly="readonly" value="<c:out value="${dplInfo.dplTypeNm}"/>" >
										</div>
									</div>	
								</div>
								<c:if test="${dplInfo.dplTypeCd == '01'}">
									<div class="col-6 kt-padding-r-20">
										<div class="form-group row">
											<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>실패 후 처리</label>
											<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
												<input class="form-control" type="text" id="dplAutoAfterNm" name="dplAutoAfterNm" readonly="readonly" value="<c:out value="${dplInfo.dplAutoAfterNm}"/>" >
											</div>
										</div>
									</div>
									<div class="col-6 kt-padding-l-20">
										<div class="form-group row">
											<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>자동 실행 일시</label>
											<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
												<input class="form-control" type="text" id="dplAutoTm" name="dplAutoTm" readonly="readonly" value='<fmt:formatDate value="${dplInfo.dplAutoDtm}" pattern="yyyy-MM-dd HH:mm:ss"/>' >
											</div>
										</div>	
									</div>
									<div class="col-6 kt-padding-r-20">
										<div class="form-group row">
											<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>원복 타입</label>
											<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
												<input class="form-control" type="text" id="dplRestoreNm" name="dplRestoreNm" readonly="readonly" value="<c:out value="${dplInfo.dplRestoreNm}"/>" >											
											</div>
										</div>	
									</div>
								</c:if>
								<c:choose>
									<c:when test="${dplInfo.dplTypeCd == '01'}">
										<c:if test="${dplInfo.dplSignUseCd == '01'}">
											<div class="col-6 kt-padding-l-20">
												<div class="form-group row">
													<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>결재 요청 의견</label>
													<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
														<textarea class="form-control osl-textarea__resize--none" id="dplSignTxt" name="dplSignTxt" readonly="readonly"><c:out value="${dplInfo.dplSignTxt}"/></textarea>
													</div>
												</div>
											</div>
											<div class="col-6 kt-padding-r-20">
												<div class="form-group row">
													<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 설명</label>
													<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
														<textarea class="form-control osl-textarea__resize--none" id="dplDesc" name="dplDesc" readonly="readonly"><c:out value="${dplInfo.dplDesc}"/></textarea>
													</div>
												</div>		
											</div>
										</c:if>
										<c:if test="${dplInfo.dplSignUseCd == '02'}">
											<div class="col-6 kt-padding-l-20">
												<div class="form-group row">
													<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 설명</label>
													<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
														<textarea class="form-control osl-textarea__resize--none" id="dplDesc" name="dplDesc" readonly="readonly"><c:out value="${dplInfo.dplDesc}"/></textarea>
													</div>
												</div>		
											</div>
										</c:if>
									</c:when>
									<c:when test="${dplInfo.dplTypeCd == '02'}">
										<c:if test="${dplInfo.dplSignUseCd == '01'}">
											<div class="col-6 kt-padding-r-20">
												<div class="form-group row">
													<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>결재 요청 의견</label>
													<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
														<textarea class="form-control osl-textarea__resize--none" id="dplSignTxt" name="dplSignTxt" readonly="readonly"><c:out value="${dplInfo.dplSignTxt}"/></textarea>
													</div>
												</div>
											</div>
											<div class="col-6 kt-padding-l-20">
												<div class="form-group row">
													<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 설명</label>
													<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
														<textarea class="form-control osl-textarea__resize--none" id="dplDesc" name="dplDesc" readonly="readonly"><c:out value="${dplInfo.dplDesc}"/></textarea>
													</div>
												</div>		
											</div>
										</c:if>
										<c:if test="${dplInfo.dplSignUseCd == '02'}">
											<div class="col-6 kt-padding-r-20">
												<div class="form-group row">
													<label class="col-xl-3 col-lg-12 col-md-12 col-sm-12 col-12 col-form-label"><i class="fa fa-edit kt-margin-r-5"></i>배포 설명</label>
													<div class="col-xl-9 col-lg-12 col-md-12 col-sm-12 col-12">
														<textarea class="form-control osl-textarea__resize--none" id="dplDesc" name="dplDesc" readonly="readonly"><c:out value="${dplInfo.dplDesc}"/></textarea>
													</div>
												</div>		
											</div>
										</c:if>
									</c:when>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="tab-pane kt-scroll" id="allHistoryTab" data-tab-id="dplInfoAll" role="tabpanel">
					<div class="kt-portlet kt-portlet--mobile kt-margin-b-0">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fa fa-info-circle kt-margin-r-5"></i>전체 이력
								</h5>
							</div>
						</div>
						<div class="kt-portlet__body">
							<div class="kt-timeline">
								
								<div class="kt-timeline__item kt-timeline__item--danger osl-timeline-item-right">	
									<div class="kt-timeline__item-section">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-times kt-font-danger"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-l-10">2019-07-23 20:14:30</span>
									</div>
									<div class="osl-timeline-content osl-ribbon osl-ribbon__top osl-ribbon__ver">
										<div class="osl-ribbon__target bg-success" style="top: -2px; right: 20px;">
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="결과 콘솔로그" data-toggle="kt-tooltip" data-skin="info" data-placement="bottom">
												<i class="fa fa-code"></i>
											</div>
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="변경이력" data-toggle="kt-tooltip" data-skin="info" data-placement="bottom">
												<i class="fas fa-list"></i>
											</div>
										</div>
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-danger kt-margin-r-15 float-left">실패</div>
												<div class="kt-font-bolder kt-padding-l-55">[원복-28] SECMS_build</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0">빌드 실패</div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
		
								
								<div class="kt-timeline__item kt-timeline__item--success osl-timeline-item-left">
									<div class="kt-timeline__item-section flex-row-reverse-desktop">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-check kt-font-success"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-20 12:14:30</span>
									</div>
									<div class="osl-timeline-content osl-ribbon osl-ribbon__top osl-ribbon__ver">
										<div class="osl-ribbon__target bg-success" style="top: -2px; right: 20px;">
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="결과 콘솔로그" data-toggle="kt-tooltip" data-placement="bottom">
												<i class="fa fa-code"></i>
											</div>
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="변경이력" data-toggle="kt-tooltip" data-skin="info" data-placement="bottom">
												<i class="fas fa-list"></i>
											</div>
										</div>
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-success kt-margin-r-15 float-left">성공</div>
												<div class="kt-font-bolder kt-padding-l-55">[원복-28] SECMS_build</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0">빌드 성공</div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
								
								
								<div class="kt-timeline__item kt-timeline__item--brand osl-timeline-item-center kt-padding-t-20">
									<div class="kt-timeline__item-section">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-sync-alt kt-font-brand"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-20 12:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-padding-20">
											<span class="kt-font-bolder">[원복-28] SECMS_build</span>
											<span class="kt-margin-r-15 float-left">실행</span>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="tab-pane  kt-scroll" id="osl_tabs_1_3" data-tab-id="dplInfoBuild" role="tabpanel">
					<div class="kt-portlet kt-portlet--mobile kt-margin-b-0">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fa fa-info-circle kt-margin-r-5"></i>빌드 이력
								</h5>
							</div>
						</div>
						<div class="kt-portlet__body">
							<div class="kt-timeline">
								
								<div class="kt-timeline__item kt-timeline__item--danger osl-timeline-item-right">	
									<div class="kt-timeline__item-section">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-times kt-font-danger"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-l-10">2019-07-23 20:14:30</span>
									</div>
									<div class="osl-timeline-content osl-ribbon osl-ribbon__top osl-ribbon__ver">
										<div class="osl-ribbon__target bg-success" style="top: -2px; right: 20px;">
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="결과 콘솔로그" data-toggle="kt-tooltip" data-skin="info" data-placement="bottom">
												<i class="fa fa-code"></i>
											</div>
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="변경이력" data-toggle="kt-tooltip" data-skin="info" data-placement="bottom">
												<i class="fas fa-list"></i>
											</div>
										</div>
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-danger kt-margin-r-15 float-left">실패</div>
												<div class="kt-font-bolder kt-padding-l-55">[원복-28] SECMS_build</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0">빌드 실패</div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
		
								
								<div class="kt-timeline__item kt-timeline__item--success osl-timeline-item-left">
									<div class="kt-timeline__item-section flex-row-reverse-desktop">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-check kt-font-success"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-20 12:14:30</span>
									</div>
									<div class="osl-timeline-content osl-ribbon osl-ribbon__top osl-ribbon__ver">
										<div class="osl-ribbon__target bg-success" style="top: -2px; right: 20px;">
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="결과 콘솔로그" data-toggle="kt-tooltip" data-placement="bottom">
												<i class="fa fa-code"></i>
											</div>
											<div class="osl-ribbon__btn kt-padding-l-10 kt-padding-r-10" title="변경이력" data-toggle="kt-tooltip" data-skin="info" data-placement="bottom">
												<i class="fas fa-list"></i>
											</div>
										</div>
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-success kt-margin-r-15 float-left">성공</div>
												<div class="kt-font-bolder kt-padding-l-55">[원복-28] SECMS_build</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0">빌드 성공</div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
								
								
								<div class="kt-timeline__item kt-timeline__item--brand osl-timeline-item-center kt-padding-t-20">
									<div class="kt-timeline__item-section">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-sync-alt kt-font-brand"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-20 12:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-padding-20">
											<span class="kt-font-bolder">[원복-28] SECMS_build</span>
											<span class="kt-margin-r-15 float-left">실행</span>
										</div>
									</div>
								</div>
								
								
								<div class="kt-timeline__item kt-timeline__item--brand osl-timeline-item-center kt-padding-t-20">
									<div class="kt-timeline__item-section">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-plus kt-font-brand"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-07 12:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-padding-20">
											<span class="kt-margin-r-15 float-left">JOB</span>
											<span class="kt-font-bolder">[빌드] SECMS_build</span>
											<span class="kt-margin-r-15 float-left">등록</span>
										</div>
									</div>
								</div>
								
								
								<div class="kt-timeline__item kt-timeline__item--brand osl-timeline-item-center kt-padding-t-20">
									<div class="kt-timeline__item-section">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-edit kt-font-brand"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-06-07 12:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-padding-20">
											<span class="kt-margin-r-15 float-left">배포 계획</span>
											<span class="kt-font-bolder">19년 6월 1주차 운영서버 배포</span>
											<span class="kt-margin-r-15 float-left">생성</span>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="tab-pane kt-scroll" id="osl_tabs_1_4" data-tab-id="dplInfoSign" role="tabpanel">
					<div class="kt-portlet kt-portlet--mobile kt-margin-b-0">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fa fa-info-circle kt-margin-r-5"></i>결재 이력
								</h5>
							</div>
						</div>
						<div class="kt-portlet__body">
							<div class="kt-timeline">
								
								<div class="kt-timeline__item kt-timeline__item--danger osl-timeline-item-right">	
									<div class="kt-timeline__item-section">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-times kt-font-danger"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-l-10">2019-07-23 20:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-danger kt-margin-r-15 float-left">반려</div>
												<div class="kt-font-bolder kt-padding-l-55">[반려] 결재 반려</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0">장애처리 긴급배포에 대한 결재 반려합니다.</div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
		
								
								<div class="kt-timeline__item kt-timeline__item--success osl-timeline-item-left">
									<div class="kt-timeline__item-section flex-row-reverse-desktop">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-check kt-font-success"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-20 12:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-success kt-margin-r-15 float-left">승인</div>
												<div class="kt-font-bolder kt-padding-l-55">[승인] 결재 승인</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0">장애처리 긴급배포에 대한 결재 승인합니다.</div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
								
								
								<div class="kt-timeline__item kt-timeline__item--dark osl-timeline-item-left">
									<div class="kt-timeline__item-section flex-row-reverse-desktop">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-edit kt-font-dark"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-20 12:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-dark kt-margin-r-15 float-left">요청</div>
												<div class="kt-font-bolder kt-padding-l-55">[대기] 결재 요청</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0"></div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
								
								<div class="kt-timeline__item kt-timeline__item--dark osl-timeline-item-left">
									<div class="kt-timeline__item-section flex-row-reverse-desktop">
										<div class="kt-timeline__item-section-border">
											<div class="kt-timeline__item-section-icon">
												<i class="fas fa-edit kt-font-dark"></i>
											</div>
										</div>
										<span class="kt-timeline__item-datetime kt-margin-r-10">2019-07-20 12:14:30</span>
									</div>
									<div class="osl-timeline-content">
										<div class="kt-timeline__item-text kt-margin-l-0 kt-margin-b-10 kt-padding-20">
											<div class="w-100 float-left kt-padding-r-90">
												<div class="badge badge-success kt-margin-r-15 float-left">기안</div>
												<div class="kt-font-bolder kt-padding-l-55">[기안] 기안서 작성</div>
											</div>
											<div class="kt-timeline__item-info kt-font-dark kt-padding-b-0"></div>
										</div>
										<div class="border-top kt-padding-t-10 kt-padding-l-20 kt-padding-r-20">
											<div class="kt-user-card-v2 btn kt-margin-b-10">
												<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
													<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
												</div>
												<div class="kt-user-card-v2__details">
													<span class="kt-user-card-v2__name text-left">홍길동</span>
												</div>
												<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
											</div>
										</div>
									</div>
								</div>
								
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="tab-pane kt-scroll" id="osl_tabs_1_5" data-tab-id="dplInfoModify" role="tabpanel">
					<div class="row">
						<div class="col-lg-8 col-md-12 col-sm-12 col-12">
							<div class="kt-portlet kt-portlet--mobile kt-margin-b-0">
								<div class="kt-portlet__head">
									<div class="kt-portlet__head-label">
										<h5 class="kt-font-boldest kt-font-brand">
											<i class="fa fa-info-circle kt-margin-r-5"></i>수정 이력
										</h5>
									</div>
								</div>
								<div class="kt-portlet__body osl-min-h-px--490" id="dplPopModifyHisFrame">
									
									<div class="kt-portlet osl-div__border-lightgray osl-max-h-px--100">
										<div class="kt-portlet__head kt-padding-t-10 kt-padding-b-10 osl-min-h-px--30">
											<div class="kt-portlet__head-label">
												<div class="kt-user-card-v2 btn">
													<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
														<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
													</div>
													<div class="kt-user-card-v2__details">
														<span class="kt-user-card-v2__name text-left">홍길동</span>
													</div>
													<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
												</div>
											</div>
											<div class="kt-portlet__head-toolbar text-muted align-items-center">
												2019-07-20 12:14:30
											</div>
										</div>
										<div class="kt-portlet__body kt-padding-t-10 kt-padding-b-10 osl-min-h-px--30">
											<span class="kt-padding-l-10">
												<i class="fas fa-edit kt-margin-r-5"></i>배포 상태가 수정되었습니다.
											</span>
										</div>
									</div>
									
									<div class="kt-portlet osl-div__border-lightgray osl-max-h-px--100">
										<div class="kt-portlet__head kt-padding-t-10 kt-padding-b-10 osl-min-h-px--30">
											<div class="kt-portlet__head-label">
												<div class="kt-user-card-v2 btn">
													<div class="kt-user-card-v2__pic kt-media kt-media--sm kt-media--circle">
														<img class="" src="/cmm/fms/getImage.do?fileSn=0&amp;atchFileId=FILE_000000000000088" onerror=""/>
													</div>
													<div class="kt-user-card-v2__details">
														<span class="kt-user-card-v2__name text-left">홍길동</span>
													</div>
													<div class="kt-margin-l-10 osl-email">rlfehd@opensoftlab.kr</div>
												</div>
											</div>
											<div class="kt-portlet__head-toolbar text-muted align-items-center">
												2019-07-20 12:14:30
											</div>
										</div>
										<div class="kt-portlet__body kt-padding-t-10 kt-padding-b-10 osl-min-h-px--30">
											<span class="kt-padding-l-10">
												<i class="fas fa-edit kt-margin-r-5"></i>배포 상태가 수정되었습니다.
											</span>
										</div>
									</div>	
								</div>	
							</div>	
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-12 kt-margin-t-20-tablet kt-margin-t-mobile">
							
							<div class="kt-portlet kt-portlet--mobile kt-margin-b-0 border">
								<div class="kt-portlet__head">
									<div class="kt-portlet__head-label">
										<h5 class="kt-font-boldest">
											<i class="fas fa-edit kt-margin-r-5"></i>변경 <span class=" kt-font-danger">전</span> 내용
										</h5>
									</div>
								</div>
								<div class="kt-portlet__body osl-min-h-px--202">
								</div>
							</div>
							
							<div class="kt-portlet kt-portlet--mobile kt-margin-b-0 border kt-margin-t-20">
								<div class="kt-portlet__head">
									<div class="kt-portlet__head-label">
										<h5 class="kt-font-boldest">
											<i class="fas fa-edit kt-margin-r-5"></i>변경 <span class="kt-font-info">후</span> 내용
										</h5>
									</div>
								</div>
								<div class="kt-portlet__body osl-min-h-px--202">
								</div>
							</div>
						</div>
					</div>	
				</div>
				
				
				<div class="tab-pane kt-scroll" id="osl_tabs_1_6" data-tab-id="dplRevision" role="tabpanel">
					<div class="kt-portlet">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fa fa-list kt-margin-r-5"></i>배정된 요구사항 목록
								</h5>
							</div>
						</div>
						<div class="kt-portlet__body kt-padding-b-0">
							<div class="row">
								<div class="col-7">
								
									<div class="osl-datatable-search" data-datatable-id="dplAssignReqTable"></div>
								</div>
								
								<div class="col-5 text-right">
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="dpl1000Table" data-datatable-action="select" title="배포 계획 생성 관리 관리 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="5">
										<i class="fa fa-list"></i><span>조회</span>
									</button>
								</div>
							</div>
							
							<div class="kt_datatable osl-datatable-footer__divide kt-margin-b-0" id="dplAssignReqTable"></div>
						</div>
					</div>
					<div class="kt-portlet kt-margin-t-20-desktop kt-margin-b-0">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fa fa-list kt-margin-r-5"></i>배정 리비전
								</h5>
							</div>
						</div>
						<div class="kt-portlet__body">
							<div class="row">
								<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12 kt-padding-10 position-relative">
									<div class="osl-div-cover big">상단 배정된 요구사항을 선택해주세요.</div>
									<div class="kt_datatable osl-datatable-footer__divide kt-margin-b-0 osl-div__border-lightgray kt-rounded" id="dplReivisionListTable"></div>
								</div>
								<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12 kt-padding-10 kt-scroll">
									<div class="osl-div-cover"></div>
									<div class="osl-tree-search osl-div__border-lightgray kt-rounded kt-padding-10" id="dplPopRevisionFileTreeDiv"></div>
								</div>
								<div class="col-xl-4 col-lg-12 col-md-12 col-sm-12 col-12 kt-padding-10">
									<div class="osl-div-cover"></div>
									<div class="kt_datatable osl-datatable-footer__divide kt-margin-b-0 osl-div__border-lightgray kt-rounded" id="dplPopRevisionFileGridTable"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<div class="tab-pane kt-scroll" id="osl_tabs_1_7" data-tab-id="dplAssignReq" role="tabpanel">
					<div class="kt-portlet kt-margin-b-0">
						<div class="kt-portlet__head">
							<div class="kt-portlet__head-label">
								<h5 class="kt-font-boldest kt-font-brand">
									<i class="fa fa-list kt-margin-r-5"></i>배정된 요구사항 목록
								</h5>
							</div>
						</div>
						<div class="kt-portlet__body kt-padding-b-0">
							<div class="row">
								<div class="col-7">
									<div class="osl-datatable-search" data-datatable-id="dpl1002Table"></div>
								</div>
								<div class="col-5 text-right">
									<button type="button" class="btn btn-outline-brand btn-bold btn-font-sm kt-margin-l-5 kt-margin-r-5 btn-elevate btn-elevate-air" data-datatable-id="dpl1000Table" data-datatable-action="select" title="배포 계획 생성 관리 관리 조회" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="select" tabindex="5">
										<i class="fa fa-list"></i><span>조회</span>
									</button>
								</div>
							</div>
							<div class="kt_datatable osl-datatable-footer__divide kt-margin-b-0" id="dpl1002Table"></div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
</form>

<div class="modal-footer">
	<button type="button" class="btn btn-outline-brand"
		data-dismiss="modal">
		<i class="fa fa-window-close"></i><span data-lang-cd="modal.close">닫기</span>
	</button>
</div>



<script>
"use strict";
var OSLDpl1002Popup = function () {

	var formId = 'frDpl1002';
	
	
	var datatableInitFlag = {dplRevision: false, dplAssignReq:false};
	
	var datatableSetting = {};
	
	var documentSetting = function(){
		
		
		
		
		
		$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
			
			var tabTarget = e.currentTarget;
			
			
			var tabDiv = $(tabTarget).attr('data-tab-id');
			
			
			if(datatableInitFlag.hasOwnProperty(tabDiv)){
				
				if(!datatableInitFlag[tabDiv]){
					datatableInitFlag[tabDiv] = datatableSetting[tabDiv]();
				
				}else if(datatableInitFlag.hasOwnProperty(tabDiv)){
					datatableInitFlag[tabDiv].reload();
				}
			}
			
			
		});
				
		
		var treeObj = $.osl.tree.setting("dplPopRevisionFileTreeDiv",{
			data:{
				url:"<c:url value='/stm/stm6000/stm6000/selectStm6000DeptListAjax.do'/>",
				key: "deptId",
				pKey: "upperDeptId",
				labelKey: "deptName"
			},
			search:{
				
				case_insensitive : true,
				
				show_only_matches: true,
				
				show_only_matches_children: true,
			},
			callback:{
				onclick: function(treeObj,selNode){
					
					selectDeptInfo(selNode.original.deptId);
				},
				init: function(treeObj,data){
					
				}
			}
		});
		
		
		fnKtScrollInit("#dplPopRevisionFileTreeDiv", "312.5");
		fnKtScrollInit("#dplInfoTab", "550");
		fnKtScrollInit("#allHistoryTab", "550");
		fnKtScrollInit("#osl_tabs_1_3", "550");
		fnKtScrollInit("#osl_tabs_1_4", "550");
		fnKtScrollInit("#osl_tabs_1_5", "550");
		fnKtScrollInit("#osl_tabs_1_6", "550");
		fnKtScrollInit("#osl_tabs_1_7", "550");
	};
	
	
	datatableSetting["dplRevision"] = function(){
		
		var dplAssignReqTable = $.osl.datatable.setting("dplAssignReqTable",{
			data: {
				source: {
					read: {
						url: "/stm/stm3000/stm3000/selectStm3000ListAjax.do"
					}
				},
				 pageSize : 3,
			},
			toolbar:{
				 items:{
					 pagination:{
						 pageSizeSelect : [3, 10, 20, 30, 50, 100],
						
						pages:{
							desktop: {
								layout: 'default',
								pagesNumber: 3
							},
							tablet:{
								layout: 'default',
								pagesNumber: 3
							}
						}
					 }
				 }
			 },
			columns: [
				{field: '', title: '순번', textAlign: 'center', width: 30, search: true},
				{field: '', title: '처리 상태', textAlign: 'center', width: 50, autoHide: false},
				{field: '', title: '요구사항 명', textAlign: 'center', width: 150, autoHide: false, search: true, searchType:"select", searchCd: "REQ00008", searchField:"reqProTypeCd", sortField: "reqProTypeCd"},
				{field: '', title: '요구사항 설명', textAlign: 'center', width: 150, search: true},
				{field: '', title: '프로세스명', textAlign: 'center', width: 70, search: true, searchType:"date"},
				{field: '', title: '작업흐름 명', textAlign: 'center', width: 100, search: true, searchType:"date"},
				{field: '', title: '요청자', textAlign: 'center', width: 70, search: true, searchType:"date"},
				{field: '', title: '담당자', textAlign: 'center', width: 70, search: true, searchType:"date"},
			],
			actionBtn:{
				"click": true,
				"dblClick": false
			},
			actionTooltip:{
				"click": "배정리비전 조회"				
			},
			actionFn:{
				"click":function(rowData){
					$('.osl-div-cover.big').css('display','none');
					$('.osl-div-cover')[1].append('좌측 배정된 요구사항을 선택해주세요.');
				}
			}
		});
		
		
		var dplReivisionListTable = $.osl.datatable.setting("dplReivisionListTable",{
			data: {
				source: {
					read: {
						url: "/stm/stm3000/stm3000/selectStm3000ListAjax.do"
					}
				},
				 pageSize : 3,
			},
			toolbar:{
				 items:{
					 pagination:{
						 pageSizeSelect : [3, 10, 20, 30, 50, 100],
						
						pages:{
							desktop: {
								layout: 'default',
								pagesNumber: 3
							},
							tablet:{
								layout: 'default',
								pagesNumber: 3
							}
						}
					 }
				 }
			 },
			columns: [
				{field: '', title: '작업흐름 명', textAlign: 'center', width: 70},
				{field: '', title: 'Repository', textAlign: 'center', width: 100},
				{field: '', title: 'Revision', textAlign: 'center', width: 100},
				{field: '', title: '내용', textAlign: 'center', width: 100},
			],
			actionBtn:{
				"click": true,
				"dblClick": false
			},
			actionTooltip:{
				"click": "배정리비전 조회"				
			},
			actionFn:{
				"click":function(rowData){
					$('.osl-div-cover').css('display','none');
				}
			}
		});
		
		
		var dplPopRevisionFileGridTable = $.osl.datatable.setting("dplPopRevisionFileGridTable",{
			data: {
				source: {
					read: {
						url: "/stm/stm3000/stm3000/selectStm3000ListAjax.do"
					}
				},
				 pageSize : 3,
			},
			toolbar:{
				 items:{
					 pagination:{
						 pageSizeSelect : [3, 10, 20, 30, 50, 100],
						
						pages:{
							desktop: {
								layout: 'default',
								pagesNumber: 3
							},
							tablet:{
								layout: 'default',
								pagesNumber: 3
							}
						}
					 }
				 }
			 },
			columns: [
				{field: '', title: 'type', textAlign: 'center', width: 70},
				{field: '', title: 'name', textAlign: 'center', width: 100},
				{field: '', title: 'path', textAlign: 'center', width: 100},
			],
			actionBtn:{
				"dblClick": false 
			}
		});
		
		return {
			reload: function(){
				
				dplAssignReqTable.targetDt.reload();
				dplReivisionListTable.targetDt.reload();
				dplPopRevisionFileGridTable.targetDt.reload();
			}
		};
	};
	
	
	datatableSetting["dplAssignReq"] = function(){
		$.osl.datatable.setting("dpl1002Table",{
			data: {
				source: {
					read: {
						url: "/dpl/dpl1000/dpl1100/selectDpl1100AssReqListAjax.do",
						param:{
							prjId : $("#paramPrjId").val(),
					    	dplId : $("#paramDplId").val()
						}
					}
				},
				 pageSize : 5,
			},
			toolbar:{
				 items:{
					 pagination:{
						 pageSizeSelect : [5, 10, 20, 30, 50, 100],
						
						pages:{
							desktop: {
								layout: 'default',
								pagesNumber: 5
							},
							tablet:{
								layout: 'default',
								pagesNumber: 3
							}
						}
					 }
				 }
			 },
			columns: [
				{field: '', title: '순번', textAlign: 'center', width: 30, search: true},
				{field: '', title: '처리 상태', textAlign: 'center', width: 50, autoHide: false},
				{field: '', title: '요구사항 명', textAlign: 'center', width: 150, autoHide: false, search: true, searchType:"select", searchCd: "REQ00008", searchField:"reqProTypeCd", sortField: "reqProTypeCd"},
				{field: '', title: '요구사항 설명', textAlign: 'center', width: 150, search: true},
				{field: '', title: '프로세스명', textAlign: 'center', width: 70, search: true, searchType:"date"},
				{field: '', title: '작업흐름 명', textAlign: 'center', width: 100, search: true, searchType:"date"},
				{field: '', title: '요청자', textAlign: 'center', width: 70, search: true, searchType:"date"},
				{field: '', title: '담당자', textAlign: 'center', width: 70, search: true, searchType:"date"},
			],
			actionBtn:{
				"dblClick": false 
			}
		});
	};
	
	
	
	 var fnSelectDplHistoryInfo = function() {
		 
    	var paramPrjId = $("#paramPrjId").val();
    	var paramDplId = $("#paramDplId").val();
    	
		
		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/dpl/dpl1000/dpl1000/selectDpl1000DplHistoryListAjax.do'/>"}
				,{"prjId": paramPrjId, "dplId" : paramDplId});
		
		ajaxObj.setFnSuccess(function(data){
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
				
				$.osl.layerPopupClose();
			}else{
				
				console.log(data);
				
			}
		});
		
		
		ajaxObj.send();
	};
	
	
	var fnKtScrollInit = function(targetName, targetHeight) {
		KTUtil.scrollInit($(targetName)[0], {
	   		
	         disableForMobile: true, 
	         
	         resetHeightOnDestroy: true, 
	         
	         handleWindowResize: true, 
	         
	         height: targetHeight
	    });
	};
	
	return {
        
        init: function() {
        	documentSetting();
        }
        
    };
}();

$.osl.ready(function(){
	OSLDpl1002Popup.init();
});
</script>

