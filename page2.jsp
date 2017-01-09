<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form{
	margin-left:38%;
	margin-top:10%;
	width:25%;
	padding:1em;
		background-color: white !important;
	
}
input[type="text"]{
  padding:10px;
  border-radius:2px;
  border:1px solid blue;
  color:black;
    width:90%;
    font-size:15px;
  
}
.style{
	  padding:10px;
  border-radius:2px;
  border:1px solid blue;
  width:96%;
  color:black;
      font-size:15px;
  
}
.sub{
	background-color: #1891d3;
    border: none;
    color: white;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
	padding:10px;
	width:95%;
  border-radius:2px;
  border:1px solid blue;
  box-shadow:0 1px 1px rgba(0, 0, 0, 0.15);
}
span{
	color: #666;
    font-family: Lato,sans-serif;
    font-size: 13px;
    font-weight: 700;
    line-height: 28px;
}
header{
	text-align:center;
	background-color:white;
	top:0;
	left:0;
	box-shadow:2px 0px 2px 0px black;
	position:fixed;
	width:100%;
}
</style>

</head>
<body bgcolor = "whitesmoke">
<%
String a = (String)session.getAttribute("name");
String b = (String)session.getAttribute("Batch");
String c = (String)session.getAttribute("course");
String d = (String)session.getAttribute("center");
String e = request.getParameter("prog");
String f = request.getParameter("tprog");
%>
<header>
<h1>Trainee IT Survey</h1>
</header>
<form action="FeedBackForm">
<%
    session.setAttribute("name", a);
        %>
        <%
    session.setAttribute("Batch", b);
        %>
        <%
    session.setAttribute("course", c);
        %>
        <%
    session.setAttribute("center", d);
        %>
        <%
    session.setAttribute("prog", e);
        %>
        <%
    session.setAttribute("tprog", f);
        %>
<span>Please Rate The Following Aspects Of Training</span>
<span>Technical Trainer's Knowledge And Effectiveness</span><br>

<input type="radio" name="ttrate" value="verypoor">Very Poor<br>
 <input type="radio" name="ttrate" value="poor">Poor<br>
 <input type="radio" name="ttrate" value="fair">Fair<br>
 <input type="radio" name="ttrate" value="good">Good<br>
 <input type="radio" name="ttrate" value="very good">Very Good<br>
 
 <span>Technical Content And Curriculum</span><br>
 
 <input type="radio" name="tcrate" value="verypoor">Very Poor<br>
 <input type="radio" name="tcrate" value="poor">Poor<br>
 <input type="radio" name="tcrate" value="fair">Fair<br>
 <input type="radio" name="tcrate" value="good">Good<br>
 <input type="radio" name="tcrate" value="very good">Very Good
 
<input type="submit" value="Sumbit" class = sub>
</body>
</html>