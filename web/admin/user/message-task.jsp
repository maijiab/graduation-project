<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: fyl1997
  Date: 2017/11/22
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8" />
    <title>用户管理</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="${pageContext.request.contextPath}/admin/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="${pageContext.request.contextPath}/admin/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="${pageContext.request.contextPath}/admin/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="${pageContext.request.contextPath}/admin/assets/css/custom.css" rel="stylesheet" />
    <script type="text/javascript">
        //传递当前页和cid
        function gotopage(page){
            window.location.href="${pageContext.request.contextPath}/adminUser_findAllUser?page="+page+"";
        }
    </script>
</head>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/admin/index.jsp">微米优品</a>
        </div>
        <div class="header-right">
            <a href="${pageContext.request.contextPath}/admin/login.jsp" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>
        </div>
    </nav>
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li>
                    <div class="user-img-div">
                        <div class="inner-text">
                            <small>管理员</small>
                            <s:property value="#session.existAdmin.username"/>
                            <br />
                        </div>
                    </div>
                </li>
                <li>
                    <a class="active-menu" href="${pageContext.request.contextPath}/admin/index.jsp"><i class="fa fa-dashboard "></i>首页</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-yelp "></i>用户管理<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/user/adminUser_findAllUser.action"><i class="fa fa-desktop "></i>用户管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>分类管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/category/adminCategory_findAll.action"><i class="fa fa-desktop "></i>一级分类管理 </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/category/adminCategorySecond_findPage?page=1"><i class="fa fa-desktop "></i>二级分类管理</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>商品管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/prodouct/adminProduct_findPage?page=1"><i class="fa fa-desktop "></i>商品列表</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>订单管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/prodouct/adminOrder_findPageBean?page=1"><i class="fa fa-desktop "></i>订单列表</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bicycle "></i>留言管理 <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="${pageContext.request.contextPath}/prodouct/adminEvaluate_findPageBean?page=1"><i class="fa fa-desktop "></i>留言列表</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/login.jsp"><i class="fa fa-sign-in "></i>登陆</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="page-wrapper">
        <div id="page-inner">
            <form id="Form1" name="Form1" action="message-task.jsp" method="post">
            <table class="table" >
                <tr>
                    <td  >
                        序号
                    </td>
                    <td >
                        用户名
                    </td>
                    <td >
                        密码
                    </td>
                    <td  >
                        真实姓名
                    </td>
                    <td  >
                        邮箱
                    </td>
                    <td  >
                        电话
                    </td>
                    <td >
                        地址
                    </td>


                    <td></td>
                </tr>
              <s:iterator   value="userList" var="var" status="st">
                   <tr>
                    <td>
                         <s:property value="#st.count"/>
                    </td>
                    <td>
                        <s:property value="username"/>
                    </td>
                    <td >
                        <s:property value="password"/>
                    </td>
                    <td >
                        <s:property value="name"/>
                    </td>
                    <td >
                        <s:property value="email"/>
                    </td>
                    <td>
                        <s:property value="phone"/>
                    </td>
                    <td >
                        <s:property value="addr"/>
                    </td>
                    <td>
                       <a class="btn btn-primary" href="${pageContext.request.contextPath}/adminUser_deleteUser.action?uid=<s:property value="uid"/> " onclick="return confirm('确定要删除吗？')">删除</a>
                    <td>

                </tr>
                </s:iterator>

            </table>


            </form>
        </div>
        </div>

</div>

<script src="${pageContext.request.contextPath}/admin/assets/js/jquery-1.10.2.js"></script>

<script src="${pageContext.request.contextPath}/admin/assets/js/bootstrap.js"></script>

<script src="${pageContext.request.contextPath}/admin/assets/js/jquery.metisMenu.js"></script>

<script src="${pageContext.request.contextPath}/admin/assets/js/custom.js"></script>


</body>
</html>
