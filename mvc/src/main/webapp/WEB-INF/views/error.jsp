<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>에러 발생</title>
</head>
<body>
<dl>
  <dt>예외 클래스</dt>
  <dd>${exception.getClass().name}</dd>
  <dt>메세지</dt>
  <dd>${exception.message}</dd>
</dl>

</body>
</html>