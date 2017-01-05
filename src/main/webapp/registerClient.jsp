<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Index</title>
</head>
<body>
	<div class="left">
		<form action="registerClient" method="POST">
			<table border="0" cellpadding="3pt">
				<tbody>
					<tr>
						<td
							style="font-size: 21px; padding-bottom: 20px; padding-top: 0px; color: #91a5a5;">Nom:</td>
						<td style="padding-bottom: 20px;"><input
							style="font-size: 18px;" type="text" name="lastname" value=""
							size="20" /></td>
					</tr>
					<tr>
						<td
							style="font-size: 21px; padding-bottom: 20px; padding-top: 0px; color: #91a5a5;">Prénom
							:</td>
						<td style="padding-bottom: 20px;"><input
							style="font-size: 18px;" type="text" name="firstname" value=""
							size="20" /></td>
					</tr>
					<tr>
						<td
							style="font-size: 21px; padding-bottom: 20px; padding-top: 0px; color: #91a5a5;">E-mail
							:</td>
						<td style="padding-bottom: 20px;"><input
							style="font-size: 18px;" type="text" name="email" value=""
							size="20" /></td>
					</tr>

					<tr>
						<td
							style="font-size: 21px; padding-bottom: 20px; padding-top: 0px; color: #91a5a5;">Téléphone
							:</td>
						<td style="padding-bottom: 20px;"><input
							style="font-size: 18px;" type="text" name="phone" value=""
							size="20" /></td>
					</tr>
					<tr>
						<td
							style="font-size: 21px; padding-bottom: 20px; padding-top: 0px; color: #91a5a5;">Address
							:</td>
						<td style="padding-bottom: 20px;"><input
							style="font-size: 18px;" type="text" name="address" value=""
							size="20" /></td>
					</tr>
					<tr>
						<td
							style="font-size: 21px; padding-bottom: 20px; padding-top: 0px; color: #91a5a5;">Session
							Code :</td>
						<td style="padding-bottom: 20px;"><input
							style="font-size: 18px;" type="text" name="courseSessionId "
							value="<%=request.getParameter("id")%>" size="20" /></td>
					</tr>
				</tbody>
			</table>
			<input type="submit" value="Register">
		</form>
	</div>


</body>
</html>