<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지정한 고객은 등록되어 있지 않습니다</title>
</head>
<body>
<h1>지정한 고객은 등록되어 있지 않습니다</h1>
<c:url value="/customer" var="url"/>
<a href="${url}">리스트 화면으로</a>
</body>
</html>