<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.javaee.sushiee.model.Person" %>
<%@ page import="com.javaee.sushiee.servlet.PersonServlet" %>
<jsp:useBean id="Person" scope="request" class="com.javaee.sushiee.model.Person"/>
<?xml version='1.0' encoding='UTF-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:h="http://xmlns.jcp.org/jsf/html"
      xmlns:ui="http://java.sun.com/jsf/facelets"
      xmlns:p="http://xmlns.jcp.org/jsf/passthrough"
      xmlns:f="http://xmlns.jcp.org/jsf/core">
<h:head>
    <title>Facelet Title</title>
</h:head>
<h:body>
    <FORM method="post" action="${pageContext.request.contextPath}/PersonServlet">
        <P>Hi - Welcome to the Portal<BR>Please Login
        </P>
        <P><BR>User ID
            : <INPUT TYPE=TEXT name=userName size = 20 >
            <jsp:setProperty name="Person"
                             property="name"/>
            <BR>Password
            : <INPUT TYPE=TEXT name=phoneNumber size = 20><BR>
            <jsp:setProperty name="Person"
                             property="phoneNumber"/>
            <BR>
            <INPUT type="submit" name="login" value="Login">
            <BR>
        </P>
    </FORM>
</h:body>
</html>