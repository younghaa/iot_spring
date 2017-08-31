<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<title>유저 리스트</title>
<div class="container">
	<div class="container" style="text-align: center; padding-top: 20px;padding-bottom: 20px;"> 
		<label>유저이름 : </label> <input type="text" id="userName" /> 
		<input type="button" id="searchUser" value="검색" />
	</div>
	<table id="table" data-height="460"
		class="table table-bordered table-hover">
		<thead>
			<tr>
				<th data-field="userNum" class="text-center">번호</th>
				<th data-field="userId" class="text-center">아이디</th>
				<th data-field="userName" class="text-center">이름</th>
				<th data-field="age" class="text-center">나이</th>
				<th data-field="address" class="text-center">주소</th>
				<th data-field="userRoleLevel" class="text-center">비고</th>
			</tr>
		</thead>
		<tbody id="result_tbody">
		</tbody>
		</table>
<script>
$("#searchUser").click(function() {
	var userName = $("#userName").val().trim();
	if(userName==""){
		alert("이름을 입력해주세요.");
		return;
	}
	var params = "userName=" + userName;
	$.ajax({
    		type     : "POST"
	    ,   url      : "${rootPath}/user/list"
	    ,   dataType : "json" 
	    
	    ,   data     : params
	    ,   success : function(result){
	    	alert(result);
	    }
	    ,   error : function(xhr, status, e) {
		    	alert("에러 : "+e);
		},
		complete  : function() {
		}
	});
});

function callback(results) {
}
	$(document).ready(function(){
		var param = {};
		param = JSON.stringify(param);
		var a = {
		        type     : "POST"
		    	    ,   url      : "${rootPath}/user/list"
		    	    ,   dataType : "json" 
		    	    ,   beforeSend: function(xhr) {
		    	        xhr.setRequestHeader("Accept", "application/json");
		    	        xhr.setRequestHeader("Content-Type", "application/json");
		    	    }
		    	    ,   data     : param
		    	    ,   success : function(result){
		    	    	$('#table').bootstrapTable('destroy');
		    	    	var userList = result.userList;
		    	    	var result = "";
		    	    	for(var i=0, max=userList.length;i<max;i++){
		    	    		var user = userList[i];
		    	    		result += "<tr data-view='"+ user.userNum + "'>";
		    	    		result += "<td class='text-center'>" + user.userNum+ "</td>";
		    	    		result += "<td class='text-center'>" + user.userId + "</td>";
		    	    		result += "<td class='text-center'>" + user.userName + "</td>";
		    	    		result += "<td class='text-center'>" + user.age+ "</td>";
		    				result += "<td class='text-center'>" + user.address + "</td>" ;
		    				result += "<td class='text-center'>" + user.userRoleLevel + "</td>";
		    	    		result +="</tr>";
		    	    	}
		    	    	$("#result_tbody").html(result);
		    	    }
		    	    ,   error : function(xhr, status, e) {
		    		    	alert("에러 : "+e);
		    		},
		    		done : function(e) {
		    		}
		    		};
		$.ajax(a);
	})
</script>
<body>
<div id="userDiv">
</div>
</body>
</html>