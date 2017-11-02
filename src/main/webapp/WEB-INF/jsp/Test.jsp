<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2017/11/1
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    String ref = request.getHeader("Test");

%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的首页</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="../../css/demo.css" rel="stylesheet" type="text/css">

</head>

<body>
<div class="panel-body panel content fadeInDownBig animated">
        <div class="container" style="border-bottom: 0;width: 100%">
            <table class="table-view" >
            <thead>
            <tr>

                <th data-field="state" data-value="checkbox"></th>
                <th data-field="brought" data-align="center" data-sortable="true"> ip
                </th>
                <th data-field="may" data-align="center" data-sortable="true">port</th>
                <th data-field="times" data-align="center" data-sortable="true">note
                </th>

            </thead>
            <tbody>
            <c:forEach items="${hosts}" var="host">
                <tr>
                        <%--<td></td>type='hidden'--%>
                    <td class="bs-checkbox"><input name="id"
                                                   type="checkbox"
                                                   value='${host.id}'></td>
                    <td>${host.ip}</td>
                    <td>${host.port}</td>
                    <td>${host.note}</td>

                </tr>
            </c:forEach>
            </tbody>

        </table>
    </div>
        <div class="col-md-6 col-xs-6">
            <input class="btn btn-success pull-right" id="delete" onclick="deleteInfo()"
                   type="submit" value="删除"/>
        </div>

    </form>
        </div>
</div>
</body>

</html>