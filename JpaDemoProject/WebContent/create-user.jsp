<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="AddNewUserServlet" method="post">
		<div>
			<label>Username :</label><input type="text" name="username"
				id="username" />
		</div>
		<div>
			<label>Email :</label><input type="text" name="email"
				id="email" />
		</div>
		<button type="submit">Create</button>
	</form>

</body>
</html>