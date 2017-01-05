<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>Course selection system</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<link href="css/lyz.calendar.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.5.1.js"></script>
<script src="js/lyz.calendar.min.js" type="text/javascript"></script>
<style>
body {
	font-size: 12px;
	font-family: "微软雅黑", "宋体", "Arial Narrow";
}
</style>
<script>
    $(function () {
        $("#txtBeginDate").calendar({
            controlId: "divDate",                                 // 弹出的日期控件ID，默认: $(this).attr("id") + "Calendar"
            speed: 200,                                           // 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000),默认：200
            complement: true,                                     // 是否显示日期或年空白处的前后月的补充,默认：true
            readonly: true,                                       // 目标对象是否设为只读，默认：true
            upperLimit: new Date("2099/01/01"),                               // 日期上限，默认：NaN(不限制)
            lowerLimit: new Date("2011/01/01"),                   // 日期下限，默认：NaN(不限制)
            callback: function () {                               // 点击选择日期后的回调函数
                //alert("您选择的日期是：" + $("#txtBeginDate").val());
            }
        });
        $("#txtEndDate").calendar();
    });
</script>
</head>
<body>
	<form method="post" action="searchCourse.do" id="listform">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> course List</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search"padding-left:10px;>
					<li><input id="txtBeginDate" name="start_date"
						class="input input-big" placeholder="start_date"
						value="${course.start_date}"></li>
					<li><input id="txtEndDate" name="end_date"
						class="input input-big" placeholder="end_date"
						value="${course.end_date}"></li>
					<li><input type="text" name="code" value="${course.code}"
						class="input input-big" placeholder="Code"></li>
					<li><input type="text" name="title" value="${course.title}"
						class="input input-big" placeholder="Title"></li>
					<li><input type="text" name="city" value="${course.city}"
						class="input input-big" placeholder="Location"></li>
					<input type="submit" value="search"
						class="button border-main icon-search">
					<li><a class="button border-main icon-plus-square-o"
						href="javascript:window.print()">print</a></li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th>Id</th>
					<th>Start_Date</th>
					<th>End_Date</th>
					<th>Course_Code</th>
					<th>Title</th>
					<th>Location</th>
					<th>operator</th>
				</tr>
				<c:forEach items="${courselist}" var="course">
					<tr>
						<td><c:out value="${course.id}" /></td>
						<td><c:out value="${course.start_date}" /></td>
						<td><c:out value="${course.end_date}" /></td>
						<td><c:out value="${course.code}" /></td>
						<td><c:out value="${course.title}" /></td>
						<td><c:out value="${course.city}" /></td>
						<td><div class="button-group">
								<a class="button border-main" href="registerEmail.jsp?id=
									${course.id}"><span class="icon-edit"></span>chooes</a>
							</div></td>
					</tr>
				</c:forEach>
				<tr>
				</tr>
				<tfoot>
					<div class="pagelist">
						<tr>
							<td colspan="9" align="center" class="p"><c:if
									test="${pageNum != 1}">
									<a href="searchOrder.do?query=a&page=${pageNum - 1}">上一页</a>
								</c:if> <c:if test="${pages != 1}">
									<c:forEach var="pageIndex" begin="1" end="${pages}">
										<c:choose>
											<c:when test="${pageNum == pageIndex}">
												<a>${pageIndex}</a>
											</c:when>
											<c:otherwise>
												<a href="searchCheckOrder.do?page=${pageIndex}">${pageIndex}</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</c:if> <c:if test="${pageNum != pages}">
									<a href="searchCheckOrder.do?page=${pageNum+1}">下一页</a>
								</c:if></td>
						</tr>
					</div>
				</tfoot>
			</table>
		</div>
	</form>
	<script type="text/javascript">

//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>