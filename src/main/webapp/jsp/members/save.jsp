<%--
  Created by IntelliJ IDEA.
  User: SunJung
  Date: 2021-08-07
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="hello.servlet.domain.member.MemberRepository" %>
<%@ page import="hello.servlet.domain.member.Member" %> <!--자바의 import 문과 같다. -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!--
< %  %>
이 부분에는 자바 코드를 입력할 수 있다.
< %= %>
이 부분에는 자바 코드를 출력할 수 있다.
-->
<%
    //JSP는 자바 코드를 그대로 다 사용할 수 있다.
    // request, response 사용 가능
    MemberRepository memberRepository = MemberRepository.getInstance();
    System.out.println("save.jsp");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));
    Member member = new Member(username, age);
    System.out.println("member = " + member);
    memberRepository.save(member);
%>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
성공
<ul>
    <li>id=<%=member.getId()%></li>
    <li>username=<%=member.getUsername()%></li>
    <li>age=<%=member.getAge()%></li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>