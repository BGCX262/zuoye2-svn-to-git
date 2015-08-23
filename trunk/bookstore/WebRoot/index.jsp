<%@page language="java" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.ResultSetMetaData"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";

    /** 链接数据库参数 **/
    String driverName = "com.mysql.jdbc.Driver"; //驱动名称
    String DBUser = "root"; //mysql用户名
    String DBPasswd = "root"; //mysql密码
    String DBName = "bookstore"; //数据库名

    //数据库完整链接地址
    String connUrl = "jdbc:mysql://localhost/:3306/" + DBName + "?user="
            + DBUser + "&password=" + DBPasswd;

    //加载数据库驱动
    Class.forName(driverName).newInstance();

    //链接数据库并保存到 conn 变量中
    Connection conn = DriverManager.getConnection(connUrl);

    //申明
    Statement stmt = conn.createStatement();

    //设置字符集
    stmt.executeQuery("SET NAMES UTF8");

    //要执行的 sql 查询
    String sql = "SELECT goods_id, goods_name, shop_price FROM mall_goods ORDER BY add_time DESC LIMIT 15";

    //取得结果
    ResultSet rs = stmt.executeQuery(sql);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">

        <title>Jsp链接mysql数据库测试</title>

        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
        <meta http-equiv="description" content="This is my page">
        <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->

    </head>

    <body>
        <ul style="width: 65%">
            <li style="font-weight: bold;">
                <span style="width: 10%;">商品ID</span>
                <span style="width: 40%;">商品名称</span>
                <span style="width: 10%;">商品价格</span>
            </li>
            <%
                /** 打印结果 **/
                while (rs.next()) {
            %>
            <li>
                <span style="width: 10%;"><%=rs.getString("goods_id")%></span>
                <span style="width: 40%;"><%=rs.getString("goods_name")%></span>
                <span style="width: 10%;">￥<%=rs.getString("shop_price")%>元</span>
            </li>
            <%
                }
            %>
        </ul>
    </body>
</html>
<%
    /** 关闭连接 **/
    conn.close();
    stmt.close();
    rs.close();
%>