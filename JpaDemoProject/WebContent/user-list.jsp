
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User List</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>


<div class="container">

	<div class="box-orange">box-orange</div>
	<div class="box-blue">box-blue</div>
	<div class="box-blue">box-blue</div>
</div>

	<h2>User List</h2>
	<div class="table-div">
		<table class="user-list" border="1">
			<tr>
				<th>ID</th>
				
				<th>Username</th>
				<th>Email</th>
			</tr>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td>${user.email}</td>
				</tr>
			</c:forEach>
		</table>

		<a type="button" href="/JpaDemoProject/ShowFormUser">Create new
			user</a>
	</div>
	<br />
	<p>Css test</p>

	<p id="border-img">border-imageのCSSについて例</p>

	<div id="multibackground">
		<p class="text-shadow">複数の背景画像を要素に適用できます。これらは、最初に記述した背景が一番上になり、
			後に記述した背景がその下になるように重ね合わされます。最後の背景にだけ、背景色が指定できます。</p>
	</div>
	<div></div>
	<div id="grad1"></div>
	</div>
	<div></div>
	<div id="grad2"></div>
	</div>
	<div></div>
	<div id="grad3"></div>
	<div></div>
	<div id="grad4"></div>
	<div></div>
	<div id="grad5"></div>
	<div></div>
	<div id="grad6"></div>
	<div></div>

	<div id="myDiv1">2D Transform 例</div>
	<div id="myDiv2">2D Transform</div>

	<div id="animation">Vi du hieu ung di chuyen tu trai qua phai.</div>



</body>
</html>
