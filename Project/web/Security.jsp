<html >
<head>

<style type="text/css">

div.wrapper {
    
    width: 100%;
	
    display: table;
	height: 50px;
	font-family: Cursive; 
}
div.option {
    text-align:center;
    display: table-cell;
	font-family: Cursive;  
  font-size: 25px;
}
 select{ margin: 10px;
  padding: 10px; 
  border: 2px solid purple; 
  width: 150px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  border-radius: 5px;
  
}

</style>
    <title>View Status</title> 
	
	 <link href="Home.css" rel="stylesheet">
</head>
<body >

 <ul>
 <li style="float:right"><a  href="index.html">LogOut</a></li>
  <li style="float:right"><a   href="Administrator.html">Administrator</a></li>
  <li style="float:right"><a class="active" href="Security.jsp">Security</a></li>
  <li style="float:right"><a href="">Faculty Management</a>
   <ul>
      <li><a href="AddFaculty.html">Add Faculty</a></li>
      <li><a href="AddSubject.html">Add Subject</a></li>
      <li><a href="Registration.html">Registration </a></li>
    </ul>
  </li>
  <li style="float:right"><a  href="Enrollment.html">Enrollment</a></li>
  <li style="float:right"><a  class="" href="home.html">Home</a></li>
</ul> 
<br>
<br>

<br>
	<div class="wrapper">
        <div class="option">
			<form method="post" action="ChangePassAdmin.jsp">
				<button class="button">
				    Change Own Password
				</button>
			</form>
			<form method="post" action="ShowAllPassword.jsp">
				<button class="button">
				    Show All Password
				</button>
			</form>
			<form method="post" action="AnotherAdmin.jsp">
				<button class="button">
				   Create Another Admin
				</button>
			</form>
            <form method="post" action="TeacherPassword.jsp">
				<button class="button">
				   Set Course's Password
				</button>
			</form>
			
		</div>
	</div>


</body>

</html >