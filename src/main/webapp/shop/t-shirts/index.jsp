<%@ page import="com.github.truejacobg.jsptest.testjsp.database.DB" %>
<%@ page import="com.github.truejacobg.jsptest.testjsp.component.Clothes" %>
<%@ page import="java.util.List" %>
<%@ page import="com.github.truejacobg.jsptest.testjsp.component.Tshirt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>T-Shirts</title>
    <link rel="stylesheet" href="../../static/css/style.css">
</head>
<body>
<div class="main">
    <div class="menu">
        <div class="menu-left">
            <a href="../../"> GO BACK </a>
        </div>
        <div class="menu-middle">
            <a href="../"> SHOP </a>
        </div>
        <div class="menu-right">
            <a href="../../contact"> CONTACT </a>
        </div>
    </div>

    <div class="tags">
        <h1>
            Tags
        </h1>
    </div>

    <div class="items">
        <% DB db = new DB(); %>
        <% db.addExamples(); %>
        <% List<Clothes> clothes = db.getDb(); %>
        <% for (Clothes c : clothes) { %>
        <!-- I know it's messy but I will fix it -->
        <% if (!(c instanceof Tshirt)) continue; %>
        <div class="item">
            <p>
                <%= c.getName() %>
            </p>
            <p>
                <%= c.getSize() %>
            </p>
        </div>
        <% } %>
    </div>
</div>
</body>
</html>
