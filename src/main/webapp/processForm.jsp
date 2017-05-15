<!-- java import statements -->
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="myPackage.*" %>


<html>
<head>
<title>Accomodation Request Form</title>
</head>
<body>
	<!-- message after submitting form -->
	Thank you, 
	<%= request.getParameter("firstname")%> <%= request.getParameter("lastname")%> <br> <br>
	A confirmation email will be sent to 
	 <%= request.getParameter("teacher")%> and the AR staff. <br>
	If confirmed, you will take your <%= request.getParameter("course")%>
	test with accommadations on <%= request.getParameter("date")%> during period <%= request.getParameter("period")%>.
	<br><br>
	Good Luck!
</body>
<br><br><br><br>
<h6 style="font-size:80%;">Dane Williams 2017 v3.1.5</h6>
<!-- write to text file formText.txt from parameters -->
<%
String text = "";

//create String array to be printed
//each element is one line of the .txt in the order/format necessary to be parsed with ParseForm.java
String s[] = new String[7];
s[0] = request.getParameter("firstname");
s[1] = request.getParameter("lastname");
s[2] = request.getParameter("course");
s[3] = request.getParameter("teacher");
s[4] = request.getParameter("period");
s[5] = request.getParameter("Accommodations");
s[6] = request.getParameter("date");

//print String objects to .txt
for(int i = 0; i < 7; i++)
{
	text += s[i];
	text += "\n";
}
System.out.println("String text has been written!");
System.out.println(text);

//implement ParseForm.java
ParseForm pf = new ParseForm(text);
System.out.println("pf.getInfo for String text");
System.out.println(pf.getInfo());

//get access token
String auth_code = request.getParameter("auth_code");
System.out.println(auth_code);
Security sec = new Security();
String access_token = sec.retrieveAccessToken(auth_code);
System.out.println(access_token);

//make post request
Outlook o = new Outlook(access_token);
o.CreateCalendarEvent(text);
%>

</html>