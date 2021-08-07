<%--
  Created by IntelliJ IDEA.
  User: SunJung
  Date: 2021-08-07
  Time: 오후 3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--첫 줄은 JSP문서라는 뜻이다. JSP 문서는 이렇게 시작해야 한다.-->
<!--
JSP는 서버 내부에서 서블릿으로 변환되는데, 만들었던 MemberFormServlet과 거의 비슷한 모습으로 변환
-->
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/jsp/members/save.jsp" method="post">
    username: <input type="text" name="username" />
    age: <input type="text" name="age" />
    <button type="submit">전송</button>
</form>
</body>
</html>