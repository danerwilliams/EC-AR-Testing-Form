<!doctype html>
<html lang="en">
<head>
<title>Accomodation Request Form</title>
	<style type="text/css">			
		body{font-family:Arial, Sans-Serif;}
		#container {width:300px; margin:0 auto;}
		form label {display:inline-block; width:140px}

		form input[type="text"],
		form input[type="password"],
		form input[type="email"] 
		{width:160px;}

		form .line {clear:both;}
		form .line.submit {text-align:right;}
	</style>
</head>
	<body>
		<h1>Accomodation Request Form</h1>
		<form action="processForm.jsp" method="post"> 
		
		<!-- sends to text file to be parsed with parseForm.java -->
		
			First name:
			<input type="text" name="firstname" id="firstname" placeholder="Firstname">	<br><br>		
		
			Last name:
			<input type="text" name="lastname"id="lastname" placeholder="Lastname"> <br><br>
		
			Course Name:
			<select name="course">
			<option value="Advanced Projects CS">Advanced Projects</option>
			<option value="Computer Science AP">Computer Science AP</option>
			<option value="Physics 1 AP">Physics 1 AP</option>
			<option value="Physics 2 AP">Physics 2 AP</option>
			<option value="Physics C AP">Physics C AP</option>
			<option value="Physics Conceptual">Physics Conceptual</option>
			<option value="Biology AP">Biology AP</option>
			<option value="Biology Reg">Biology Reg</option>
			<option value="Biology Hon">Biology Hon</option>
			<option value="Chemistry AP">Chemistry AP</option>
			<option value="Chemistry Hon">Chemistry Hon</option>
			<option value="Chemistry Reg">Chemistry Reg</option>
			<option value="Anatomy/Physiology">Anatomy/Physiology</option>
			<option value="Environmental Sci AP">Environmental Sci AP</option>
			<option value="Algebra 1">Algebra 1</option>
			<option value="Geomotry Reg">Geometry Reg</option>
			<option value="Geometry Hon">Geometry Hon</option>
			<option value="Algebra 2 Reg">Algebra 2 Reg</option>
			<option value="Algebra 2 Hon">Algebra 2 Hon</option>
			<option value="Precalculus">Precalculus</option>
			<option value="UW Math 120">UW Math 120</option>
			<option value="Calculus">Calculus</option>
			<option value="AP Calculus AB">AP Calculus AB</option>
			<option value="AP Calculus BC">AP Calculus BC</option>
			<option value="AP Statistics">AP Statistics</option>
			<option value="AP Human Geograpy">AP Human Geography</option>
			<option value="World History AP">World History AP</option>
			<option value="World History Reg">World History Reg</option>
			<option value="US History AP">US History AP</option>
			<option value="US History Reg">US History Reg</option>
			<option value="AP Gov">AP Gov</option>
			<option value="Gov Reg">Gov Reg</option>
			<option value="Block">Block</option>
			<option value="Law and Society">Law and Society</option>
			<option value="AP Psycology">AP Psycology</option>
			<option value="English 9 Reg">English 9 Reg</option>
			<option value="English 9 Hon">English 9 Hon</option>
			<option value="English 10 Reg">English 10 Reg</option>
			<option value="English 10 Hon">English 10 Hon</option>
			<option value="English 11">English 11</option>
			<option value="English 12">English 12</option>
			<option value="AP Lang">AP Lang</option>
			<option value="AP Lit">AP Lit</option>
			<option value="Religion 9">Religion 9</option>
			<option value="Religion 10">Religion 10</option>
			<option value="Religion 11">Religion 11</option>
			<option value="CML">CML</option>
			<option value="Religion 12">Religion 12</option>
			<option value="Contemporary Culture">Contemporary Culture</option>
			<option value="Comunity Service">Community Service</option>
			<option value="Spanish 1">Spanish 1</option>
			<option value="Spanish 2">Spanish 2</option>
			<option value="Spanish UW 103">Spanish UW 103</option>
			<option value="Spanish UW 201">Spanish UW 201</option>
			<option value="Spanish AP">Spanish AP</option>
			<option value="Spanish 5">Spanish 5</option>
			<option value="French 1">French 1</option>
			<option value="French 2">French 2</option>
			<option value="French UW 103">French UW 103</option>
			<option value="French 4">French 4</option>
			<option value="French AP">French AP</option>
			<option value="Mandarin 1">Mandarin 1</option>
			<option value="Mandarin 2">Mandarin 2</option>
			<option value="Mandarin 3">Mandarin 3</option>
			<option value="Mandarin 4">Mandarin 4</option>
			<option value="AP Art History">AP Art History</option>
			<option value="AP Music Theory">AP Music Theory</option>
			<option value="Marketing 1">Marketing 1</option>
			<option value="Marketing 2">Marketing 2</option>
			<option value="Marketing 3">Marketing 3</option>
			<option value="Intro To Programming">Intro To Programming</option>
			<option value="Intro To CS">Intro To CS</option>
			<option value="Accounting 1">Accounting 1</option>
			<option value="Accounting 2">Accounting 2</option>
			<option value="Health 9">Health 9</option>
			<option value="Sports Med">Sports Med</option>
			<option value="Other">Other</option>
			</select> <br><br>
		
			Course Teacher:
			<select name="teacher">
			<option value="Kory Srock">Kory Srock</option>
			<option value="Alisa Rachubo">Alisa Rachubo</option>
			<option value="Collete Foreman">Collete Foreman</option>
			<option value="Danielle Maletta">Danielle Maletta</option>
			<option value="Tara Maloney">Tara Maloney</option>
			<option value="Courtney Caldwell">Courtney Caldwell</option>
			<option value="Matt Knott">Matt Knott</option>
			<option value="Jeff LaBelle">Jeff LaBelle</option>
			<option value="Aimee O'Donnell">Aimee O'Donnell</option>
			<option value="Jessica Rice">Jessica Rice</option>
			<option value="Lisa Snow">Lisa Snow</option>
			<option value="Heather Snyder">Heather Snyder</option>
			<option value="Ailis Thornhill">Ailis Thornhill</option>
			<option value="Lesley Wooton">Lesley Wooton</option>
			<option value="Scott Alcorn">Scott Alcorn</option>
			<option value="Piper Deardorff">Piper Deardorff</option>
			<option value="David Dingler">David Dingler</option>
			<option value="Robert Matthews">Robert Matthews</option>
			<option value="Caitrin Slack">Caitrin Slack</option>
			<option value="Alan Hostak">Alan Hostak</option>
			<option value="Tom Kittridge">Tom Kittridge</option>
			<option value="Ellen McCormick">Ellen McCormick</option>
			<option value="Jason Odem">Jason Odem</option>
			<option value="Anna Ricci">Anna Ricci</option>
			<option value="Hilaire Thomas">Hilaire Thomas</option>
			<option value="Randall Brown">Randall Brown</option>
			<option value="Sean Henderson">Sean Henderson</option>
			<option value="Amanda Longo">Amanda Longo</option>
			<option value="Judy Petersen">Judy Petersen</option>
			<option value="Bronwyn Starostka">Bronwyn Starostka</option>
			<option value="Erin Weaver">Erin Weaver</option>
			<option value="Constanza Beuchat">Constanza Beuchat</option>
			<option value="Maria Granda de Scacciati">Maria Granda de Scacciati</option>
			<option value="Hannah Hoffman">Hannah Hoffman</option>
			<option value="Julia O'Donnell">Julia O'Donnell</option>
			<option value="Deborah Regan">Debora Regan</option>
			<option value="Jing Shen">Jing Shen</option>
			<option value="Karen Skoog">Karen Skoog</option>
			<option value="Maria Cecilia Villalobos">Maria Cecilia Villalobos</option>
			<option value="Clare Jenkins">Clare Jenkins</option>
			<option value="Matthew Aschaffenburg">Matthew Aschaffenburg</option>
			<option value="Derek Ballinger">Derek Ballinger</option>
			<option value="Melissa Blender">Melissa Blender</option>
			<option value="Laurie Matthews">Laurie Matthews</option>
			<option value="Marcy McCorriston">Marcy McCorriston</option>
			<option value="Shana Rodriguez">Shana Rodriguez</option>
			<option value="Megan McDermott">Megan McDermott</option>
			<option value="Alicia Delay">Alicia Delay</option>
			<option value="Kristin Kracht">Kristin Kracht</option>
			<option value="Other">Other</option>
			</select> <br><br>
			
			Test Date:
			<input type="date" name="date" placeholder="yyyy-mm-dd"> <br><br>
			
			Test Period:
			<select name="period">
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			</select> <br><br>
		
			Accommodations Requested: <br>
			(please specify when you plan on getting your extra time if this is one of your accommodations)
			<textarea name="Accommodations" rows="4" cols="20" id="Accommodations" placeholder="Accommodations"></textarea> <br><br>
		
			<!-- hidden value for auth code -->
			<input type="hidden" name="auth_code" value=<%=request.getParameter("code")%>>
			
			<input type="submit" value="Send">
		</form>
		<%System.out.println(request.getParameter("code")); %>
	</body>
	<br><br><br><br>
<h6 style="font-size:80%;">Dane Williams 2017 v3.1.5</h6>
</html>