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
  border-right:none;
  border:1px solid blue;
  color:black;
    width:90%;
    font-size:15px;
  
}
.s{
	    font-size:20px;
	  border:1px solid blue;
	  border-radius:2px;
	    width:94%;
	
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
<body  bgcolor = "whitesmoke">
<%
String a = request.getParameter("name");

String b = request.getParameter("Batch");
String c = request.getParameter("course");
String d = request.getParameter("center");

%>
<header>
<h1>Trainee IT Survey</h1>
</header>
<form action="page2.jsp">
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
<select name="prog" class = "style">
<option>Please Select Your Program</option>
<option>Java-Android</option>
<option>Testing</option>
<option>Java-Hadoop</option>
</select>
<br><br><br>
<select name="tprog" class = "style">
<option>Please Select Your Type Of Training Program</option>
<option>Class Room Training</option>
<option>Online</option>
</select>
<br><br><br>
<textarea rows="4" cols="27" placeholder="Suggestions..." class = "s"></textarea><br><br><br>
<input type="submit" value="Next" class = "sub">
</form>
</body>
</html>