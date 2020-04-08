<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020年01月24日 0024
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>展示页面</title>
</head>
<body>
<center>
    <table width="800px" border="2" cellpadding="10" cellspacing="0">
        <tr>
            <th></th>
            <th>编号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>年龄</th>
            <th>技能介绍</th>
            <th>
                <a href="/insert">
                    <button
                            style="font-size: 20px;
                             border-radius: 10px;
                             background-color:orangered">新增
                    </button>

                </a>
            </th>
        </tr>
        <c:forEach items="${boss}" var="s">
            <tr>
                <td></td>
                <td>${s.id}</td>
                <td>${s.name}</td>
                <td>${s.sex}</td>
                <td>${s.age}</td>
                <td>${s.flag}</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/del?id=${s.id}">
                        <button
                                style="font-size: 20px;
                             border-radius: 10px;
                             background-color: goldenrod">删除
                        </button>
                    </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="/insert?id=${s.id}">
                        <button
                                style="font-size: 20px;
                             border-radius: 10px;
                             background-color: goldenrod">修改
                        </button>
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
