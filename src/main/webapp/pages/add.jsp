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
<form action="/add" method="post">
    <table width="16%" border="2" cellpadding="6" cellspacing="0" style="margin-left: 40%">
        <tr>
            <input type="hidden" name="id" value="${user.id}">
            <td>名字<input type="text" name="name" value="${user.name}"></td>
        </tr>
        <tr>
            <td>性别<input type="text" name="sex" value="${user.sex}"></td>
        </tr>
        <tr>
            <td>年龄<input type="text" name="age" value="${user.age}"></td>
        </tr>
        <tr>
            <td>技能介绍<input type="text" name="flag" value="${user.flag}"></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="保存"></td>
        </tr>
    </table>
</form>
</body>
</html>
