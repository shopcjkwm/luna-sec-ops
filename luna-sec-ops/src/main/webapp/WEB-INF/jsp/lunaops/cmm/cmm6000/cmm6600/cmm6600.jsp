<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form class="kt-form" id="frCmm6600">
	<input type="hidden" name="paramTargetId" id="paramTargetId" value="${param.targetId}">
	<input type="hidden" name="paramTargetCd" id="paramTargetCd" value="${param.targetCd}">
	<input type="hidden" name="paramPrjId" id="paramPrjId" value="${param.prjId}">
	<div class="row">
		<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
			<div class="kt-portlet kt-portlet--mobile kt-margin-b-0 kt-margin-b-20-tablet kt-margin-b-20-mobile">
				<div class="kt-portlet__head kt-portlet__head--lg">
					<div class="kt-portlet__head-label">
						<h5 class="kt-font-boldest kt-font-brand">
							<i class="fa fa-th-large kt-margin-r-5"></i>사용자 목록
						</h5>
					</div>
				</div>
				<div class="kt-portlet__body">
					<div class="osl-datatable-search" data-datatable-id="stm3000UsrTable"></div>
					<div class="kt_datatable" id="stm3000UsrTable"></div>
				</div>
			</div>
		</div>
		<div class="col-xl-1 col-lg-1 col-md-12 col-sm-12 col-12 osl-display__flex align-items-center justify-content-center">
			<div class="kt-portlet kt-portlet--mobile kt-margin-b-0 kt-margin-b-20-tablet kt-margin-b-20-mobile">
				<div class="kt-portlet__body kt-padding-15">
					<button type="button" class="btn btn-outline-brand osl-right-arrow" data-datatable-id="stm3000UsrTable" data-datatable-action="signMove" title="선택 담당자 결재선 등록" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="signMove" tabindex="1"></button>
					<button type="button" class="btn btn-outline-brand kt-margin-t-20 osl-left-arrow" data-datatable-id="stm3000UsrTable" data-datatable-action="signRemove" title="선택 담당자 결재선 제외" data-toggle="kt-tooltip" data-skin="brand" data-placement="bottom" data-auth-button="signRemove" tabindex="1"></button>
				</div>
			</div>
		</div>
		<div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12">
			<div class="kt-portlet kt-portlet--mobile kt-margin-b-0" id="cmm6600DeptTreeInfo">
				<div class="kt-portlet__head kt-portlet__head--lg">
					<div class="kt-portlet__head-label">
						<h5 class="kt-font-boldest kt-font-brand">
							<i class="fa fa-th-large kt-margin-r-5"></i>결재선 정보
						</h5>
					</div>
				</div>
				<div class="kt-portlet__body kt-padding-r-15">
					<div class="kt-scroll kt-padding-r-10" data-height="525" id="signCardTable"></div>
				</div>
			</div>
		</div>
	</div>
</form>
<div class="modal-footer">
	<button type="button" class="btn btn-brand" id="cmm6600SelDoc"><i class="fa fa-save"></i><span>결재 등록</span></button>
	<button type="button" class="btn btn-outline-brand" data-dismiss="modal"><i class="fa fa-window-close"></i><span>Close</span></button>
</div>
<script>
"use strict";
var OSLCmm6600Popup = function () {
		
	
    var ord=1;
    
    var selectUsrArray=[];
    
    var usrStr = '';
	
	var usrIdDupleList = 0;
	
	
	var prjId = $('#paramPrjId').val();
	
	
	var targetId = $('#paramTargetId').val();
	
	
	var targetCd = $('#paramTargetCd').val();
	
	
	var type = '';
	
    
    var documentSetting = function () {
	    
    	selectSignUsrInfList();
    	
	    
	   	$("#cmm6600DeptTreeInfo").on("click",".osl-sign-card",function(){
	   		if($(this).hasClass('selected')){
	   			$(this).removeClass('selected');
	   		}else{
	   			$(this).addClass('selected');
	   		}
	   	});
	    
	    
	  	if(!(targetCd == '03')){
	  		
			
		   	var MyInfo = $.osl.user.userInfo;
			var MyusrStr = 
					'<div class="kt-widget osl-bg-eee kt-margin-r-10 kt-margin-b-10 kt-widget--general-2 rounded" data-usr-id="'+MyInfo.usrId+'" data-usr-name="'+$.osl.escapeHtml(MyInfo.usrNm)+'">'
						+'<div class="kt-widget__top kt-padding-t-10 kt-padding-b-10 kt-padding-l-20 kt-padding-r-20">'
							+'<div class="kt-margin-r-20 font-weight-bolder">기안</div>'
							+'<div class="kt-widget__label kt-margin-r-10 osl-user__active--block">'
								+'<i class="fa fa-arrow-alt-circle-left"></i>'
							+'</div>'
							+'<div class="kt-media kt-media--circle kt-media--md">'
								+'<img src="'+$.osl.user.usrImgUrlVal(MyInfo.usrImgId)+'" onerror="this.src=\'/media/users/default.jpg\'"/>'
							+'</div>'
							+'<div class="kt-widget__wrapper">'
								+'<div class="kt-widget__label">'
									+'<div class="kt-widget__title">'
										+$.osl.escapeHtml(MyInfo.usrNm)
										+'<small>'+$.osl.escapeHtml(MyInfo.email)+'</small>'
									+'</div>'
									
									+'<span class="kt-widget__desc">'
										+'<span>'+$.osl.escapeHtml(MyInfo.usrDutyNm)+'</span>, <span>'+$.osl.escapeHtml(MyInfo.usrPositionNm)+'</span>'
									+'</span>'
								+'</div>'
							+'</div>'
						+'</div>'
					+'</div>';
					
			
			$("#signCardTable").parent().prepend(MyusrStr);
			selectUsrArray.push(MyInfo.usrId);
	  	}
	    
	    
	    
	    $('#cmm6600SelDoc').click(function(){
	    	
	    	
    		$.osl.confirm($.osl.lang("cmm6600.message.confirm.saveString"),null,function(result) {
    	        if (result.value) {
    	        	
					
   	        		
    	        	saveFormAction();
    	        }
    		});
	    	
	    });
	    
	    
	    
	    
	    
	    
	    var saveFormAction = function(){
	    	
			var signUsrInfs = [];
	    	
	    	var selSignUsrInfs = $('.osl-sign-card');
	    	
	    	if(selSignUsrInfs.length == 0){
	    		
	    		$.osl.alert("등록된 결재자가 없습니다.");
	    		return false;
	    		
	    	}
			
	    	
	    	if(!(targetCd == '03')){
	    		
		    	var myInf = {};
		    	myInf.usrId = $.osl.user.userInfo.usrId;
		    	myInf.ord = 0;
		    	signUsrInfs.push(signUsrInf);
	    	}
	    	
	    	
	    	$.each(selSignUsrInfs,function(idx, map){
	    		
	    		var signUsrInf = {};
	    		signUsrInf.usrId = $(this).data("usr-id");
	    		signUsrInf.ord = $(this).find(".dplStartOrdCell").data("ord");
	    		signUsrInfs.push(signUsrInf);
	    	})
	    	
	    	
    		var ajaxObj = new $.osl.ajaxRequestAction(
				{"url":"<c:url value='/prj/prj3000/prj3000/savePrj3003SignInfoAjax.do'/>"}
				,{signUsrInfList: JSON.stringify(signUsrInfs), prjId : prjId, docId : targetId, type : type});

    		
    		ajaxObj.setFnSuccess(function(data){
    			if(data.errorYn == "Y"){
    				$.osl.alert(data.message,{type: 'error'});
    			}else{
    				
    				$.osl.toastr(data.message);
    				
    				
    				$.osl.layerPopupClose();
    				
    			}
    		});
    		
    		
    		ajaxObj.send();
	    }
	    
	   	
	   	KTUtil.scrollInit($("#signCardTable")[0], {
	           disableForMobile: true, 
	           resetHeightOnDestroy: true, 
	           handleWindowResize: true, 
	           height: 525
	       });
	   	
	   	
	   	$.osl.datatable.setting("stm3000UsrTable",{
			data: {
				source: {
					read: {
						url: "/stm/stm3000/stm3000/selectStm3000ListAjax.do"
					}
				},
				pageSize: 8
			},
			toolbar:{
				items:{
					pagination:{
						pageSizeSelect : [8, 10, 20, 30, 50, 100]
					}
				}
			},
			columns: [
				{field: 'checkbox', title: '#', textAlign: 'center', width: 20, selector: {class: 'kt-checkbox--solid'}, sortable: false, autoHide: false},
				{field: 'rn', title: 'No.', textAlign: 'center', width: 30, autoHide: false, sortable: false, sortable: false},
				{field: 'usrNm', title: '사용자 명', textAlign: 'left', width: 160, search: true, autoHide: false,
					template: function (row) {
						return $.osl.user.usrImgSet(row.usrImgId, row.usrNm);
					},
					onclick: function(rowData){
						$.osl.user.usrInfoPopup(rowData.usrId);
					}
				},
				{field: 'email', title: '이메일', textAlign: 'left', width: 170, search: true},
				{field: 'usrPositionNm', title: '직급', textAlign: 'center', width: 110, searchType:"select", searchCd: "ADM00007", searchField:"usrPositionCd", sortField: "usrPositionCd"},
				{field: 'usrDutyNm', title: '직책', textAlign: 'center', width: 120, searchType:"select", searchCd: "ADM00008", searchField:"usrDutyCd", sortField: "usrDutyCd"},
			],
			searchColumns:[
				{field: 'deptName', title: '조직명', searchOrd: 0,}
			],
			actionBtn:{
				"title": "결재선 등록",
				"signMoveRowBtn": true,
				"dblClick": false,
				"click": false,
				"update": false,
				"delete": false,
			},
			actionTooltip:{
				"signMoveRowBtn": "결재선 등록"
			},
			theme:{
				actionBtnIcon:{
					"signMoveRowBtn": "fa fa-arrow-alt-circle-right",
				}
			},
			rows:{
				beforeTemplate: function (row, data, index){
					
					if(selectUsrArray.indexOf(data.usrId) > -1){
						row.addClass("osl-datatable__row-assign--none");
					}
				}
			},
			actionFn:{
				"signMove":function(rowData,datatableId,type){
					var rowDatas = rowData;
					
					
					if(rowDatas.length == 0){
						$.osl.alert($.osl.lang("datatable.translate.records.nonSelect"));
						return true;
					}
					
					$.osl.confirm($.osl.lang("common.user.auth.allUsrInsert",rowDatas.length),{html:true}, function(result){
						
						if (result.value) {
							
							fnAllUsrInsert(rowDatas);
						}
					});
					
				},
				"signMoveRowBtn":function(rowData){
					var rowDatas = [];
					rowDatas.push(rowData);
					fnAllUsrInsert(rowDatas);
				}
				
			}
		});
	   	
	    	
	   	
	   	$('button[data-datatable-action="signRemove"]').click(function(){
	   	  	
	   		var datatable = $.osl.datatable.list["stm3000UsrTable"].targetDt;
			
			var list = datatable.dataSet;
			
	   		var target = $('.osl-sign-card.selected');
	   		
			var targetId;	
	   		
	   		
	   		if(target.length>0){
				
				$.osl.confirm('선택한 '+target.length+'개의 결재선을 삭제하시겠습니까?',{html:true}, function(){
					
					
					$.each(list,function(idx, map){
						
						for(var num = 0; num < target.length; num++){
							
		    				targetId = target[num].getAttribute('data-usr-id');
							
		    				if(datatable.dataSet[idx].usrId==targetId){
		    					
								selectUsrArray.splice(selectUsrArray.indexOf(targetId), 1);
								ord --;
							}
		    			}
					});						
					
					
					$('.osl-sign-card.selected').remove();
	   	    		
					datatable.reload();
					
					$("div.tooltip.show").remove();
	
					
					
					updateLastUsrCard();
	   			});		
	   		}else{
	   			
	   			$.osl.toastr('삭제할 결재선을 선택해주세요.',{type: 'warning'});
	   		}
	   	});
	   	
	   	/*결재선 sortable 세팅*/
		new Sortable($('#signCardTable')[0], {
			group:'shared',
	        animation: 100,
	        
	        chosenClass: "chosen",
	        onEnd:function(evt){
	        	
				var newIndex = evt.newIndex-2;
				var oldIndex = evt.oldIndex-2;
	        	
				fnJobDivOrdModify(evt.item, newIndex, oldIndex);
	        }
	    });
	
	};
   
    
	var selectSignUsrInfList = function(){
    	
		
		var ajaxObj = new $.osl.ajaxRequestAction(
			{"url":"<c:url value='/cmm/cmm3000/cmm3000/selectCmm6600SignUsrListAjax.do'/>"}
			, {prjId : prjId, targetId : targetId});

		
		ajaxObj.setFnSuccess(function(data){
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				
				
				if(data.signUsrInfList.length == 0){
					type = 'insert';
				}else{
					type = 'update';
					
					
					$.each(data.signUsrInfList,function(idx,map){
						
						
						if(selectUsrArray.indexOf(map.usrId) != -1){
							return true;
						}
						
			    		
						userSetting(map);
				    		
					});
				}
				
			}
		});
		
		
		ajaxObj.send();
    	
    	
    	
		/* 
		var ajaxObj = new $.osl.ajaxRequestAction(
			{"url":"<c:url value='/prj/prj3000/prj3000/selectPrj3003SignUsrListAjax.do'/>"}
			, {prjId : prjId, docId : targetId});

		
		ajaxObj.setFnSuccess(function(data){
			if(data.errorYn == "Y"){
				$.osl.alert(data.message,{type: 'error'});
			}else{
				
				
				$.each(data.signUsrInfList,function(idx,map){
					
					
					if(selectUsrArray.indexOf(map.usrId) != -1){
						return true;
					}
					
		    		
					userSetting(map);
			    		
				});
				
				
				if(data.signUsrInfList.length == 0){
					type = 'insert';
				}else{
					type = 'update';
				}
				
			}
		});
		
		
		ajaxObj.send(); */
	}
  	
    
    function fnAllUsrInsert(selDatas){
      	
    	var datatable = $.osl.datatable.list["stm3000UsrTable"].targetDt;
      	
    	$.each(selDatas,function(idx,map){
    		
			if(selectUsrArray.indexOf(map.usrId) != -1){
				usrIdDupleList++;
				return true;
			}
    		
			userSetting(map);
    		
    	});

    	
		var toastrMsg = "";
		var toastrType = "success";
    	
		
    	if(selDatas.length > usrIdDupleList){
			toastrMsg += selDatas.length-usrIdDupleList+"명의 사용자가 배정되었습니다.";
		}
    	
    	
    	if(usrIdDupleList > 0){
    		
			if(toastrMsg.length > 0){
				toastrMsg += "</br>";
			}			
			toastrMsg += "이미 배정된 " + usrIdDupleList + " 명의 사용자 제외";
			toastrType = "warning";
		}
    	
    	
		if(usrIdDupleList == selDatas.length){
			toastrMsg = "이미 배정중인 사용자 입니다.( "+usrIdDupleList+"명 )";
			toastrType = "error";
			$.osl.toastr(toastrMsg,{type: toastrType});
			return false;
		}
		
    	
    	$.osl.toastr(toastrMsg,{type: toastrType});
    	
    	
		datatable.insertData();
		
		datatable.reload();
		
		$("div.tooltip.show").remove();
    }
    
  	
   	function userSetting(userInfo){
		usrStr += 
			'<div class="kt-widget kt-margin-b-10 kt-widget--general-2 rounded osl-sign-card osl-widget-draggable" data-usr-id="'+userInfo.usrId+'" data-usr-name="'+$.osl.escapeHtml(userInfo.usrNm)+'">'
				+'<div class="kt-widget__top kt-padding-t-10 kt-padding-b-10 kt-padding-l-20 kt-padding-r-20">'
				+'<div class="kt-margin-r-20 font-weight-bolder">'
					+'<span class="cardNumber">No.</span><span class="dplStartOrdCell" data-ord='+ord+'>'+ord+'</span>'
				+'</div>'
				+'<div class="kt-widget__label kt-margin-r-10 osl-user__active--block">'
						+'<i class="fa fa-arrow-alt-circle-left"></i>'
					+'</div>'
					+'<div class="kt-media kt-media--circle kt-media--md">'
						+'<img src="'+$.osl.user.usrImgUrlVal(userInfo.usrImgId)+'" onerror="this.src=\'/media/users/default.jpg\'"/>'
					+'</div>'
					+'<div class="kt-widget__wrapper">'
						+'<div class="kt-widget__label">'
							+'<div class="kt-widget__title">'
								+$.osl.escapeHtml(userInfo.usrNm)
								+'<small>'+$.osl.escapeHtml(userInfo.email)+'</small>'
							+'</div>'
							
							+'<span class="kt-widget__desc">'
								+'<span>'+$.osl.escapeHtml(userInfo.usrDutyNm)+'</span>, <span>'+$.osl.escapeHtml(userInfo.usrPositionNm)+'</span>'
							+'</span>'
						+'</div>'
					+'</div>'
				+'</div>'
			+'</div>';	

		
		$("#signCardTable").append(usrStr);
		
		selectUsrArray.push(userInfo.usrId);
		
		usrStr='';	
		
		ord++;
		
		
		updateLastUsrCard();
   	}
  	
  	
    var updateLastUsrCard = function(){
    	var usrCardList = $("#signCardTable .dplStartOrdCell").parent();
    	var usrCardCnt = usrCardList.length;
    	$.each(usrCardList,function(idx,map){
			if((idx+1) == usrCardCnt){
				$(this).children(".cardNumber").text("");
				var ordCell = $(this).children(".dplStartOrdCell"); 
				ordCell.text("최종");
				ordCell.data('ord', idx+1);
			}else{
				$(this).children(".cardNumber").text("No.");
				var ordCell = $(this).children(".dplStartOrdCell"); 
				ordCell.text(idx+1);
				ordCell.data('ord', idx+1);
			}
    		
    	});
    }
  	
	
	function fnJobDivOrdModify(item, newIndex, oldIndex){
		
		
		$.each($(".dplStartOrdCell"),function(idx, map){
			
			var targetOrd = parseInt($(map).attr("ord"));
			
			
			
			if(oldIndex > newIndex){
				
				if(idx < newIndex || idx > oldIndex){
					return true;
				}else{
					targetOrd = targetOrd+1;
				}
			}
			
			else if(oldIndex < newIndex){
				
				if(idx > newIndex || idx < oldIndex){
					return true;
				}else{
					targetOrd = targetOrd-1;
				}
			}
			
			
			$(map).attr("ord",targetOrd);
			$(map).text(targetOrd);
			$(map).parent(".dpl_middle_row.dpl_job_row").attr("ord",targetOrd);
			
		});
		
		var $chgObj = $(item).find('.dplStartOrdCell');
		$chgObj.attr("ord",newIndex+1);
		$chgObj.parent(".dpl_middle_row.dpl_job_row").attr("ord",newIndex+1);
		$chgObj.text(newIndex+1);
		
		
		updateLastUsrCard();
	}
	
    return {
        
        init: function() {
        	documentSetting();
        }
    };
}();


$.osl.ready(function(){
	OSLCmm6600Popup.init();
});

	

</script>