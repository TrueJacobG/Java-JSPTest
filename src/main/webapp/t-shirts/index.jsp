<%@ page import="com.github.truejacobg.jsptest.testjsp.database.DB" %>
<%@ page import="com.github.truejacobg.jsptest.testjsp.component.Clothes" %>
<%@ page import="java.util.List" %>
<%@ page import="com.github.truejacobg.jsptest.testjsp.component.Tshirt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Test</title>
</head>
<body>

<a href="../"> GO BACK </a>

<table>
    <tr>
        <td>Name</td>
        <td>Size</td>
    </tr>
    <% DB db = new DB(); %>
    <% db.addExamples(); %>
    <% List<Clothes> clothes = db.getDb(); %>
    <% for (Clothes c : clothes) { %>
    <!-- I know it's messy but I will fix it -->
    <% if(!(c instanceof Tshirt)) continue; %>
    <tr>
        <td>
            <%= c.getName() %>
        </td>
        <td>
            <%= c.getSize() %>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>
