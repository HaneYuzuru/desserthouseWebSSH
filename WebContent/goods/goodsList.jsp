<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<title>GoodsList</title>
<%@include file="../nav.jsp"%>
<br />
<br />
<div class="goodslist_info">
	<%
		if (session.getAttribute("employee") != null) {
	%>
	<div class="col-md-10">
	</div>
	<button class="btn btn-primary"
		onclick="javascript:window.location.href='addGoods.jsp'">添加新商品</button>
	<br/>
	<br/>
	<%
		}
	%>
	<table class="table table-responsive table-hover">
		<tr>
			<th>id</th>
			<th>甜品名</th>
			<th>单价</th>
			<th>详情查看</th>
		</tr>
		<s:iterator id="goods" value="#session['goodslist']">
			<tr>
				<td><s:property value="#goods['id']" /></td>
				<td><s:property value="#goods['name']" /></td>
				<td><s:property value="#goods['price']" /></td>
				<td><button class="btn btn-primary"
						onclick="javascript:window.location.href='goodsInfo?id=<s:property value="#goods['id']"/>';">查看详情</button></td>
			</tr>
		</s:iterator>
	</table>
</div>

<div class="modal fade notice-modal" id="modal-notice" tabindex="-1"
	role="dialog" aria-labelledby="modal-title-notice">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">x</button>
				<h4 class="modal-title" id="modal-title-notice"></h4>
				<span></span>
			</div>
			<div class="modal-body f-14"></div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">我知道了</button>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<script src="../js/jquery.js"></script>
<script src="../bootstrap/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>