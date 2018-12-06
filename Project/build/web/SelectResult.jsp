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
<body ><%
String str=(String)request.getAttribute("name1");
%>
<div align="right">
    <form method="post" action="index.html" >
        <input class="button" type="submit" value="Log out">
  </form>
    <form method="post" action="TeacherLogin.html" >
        <input class="button" type="submit" value="Input Again">
  </form>
</div>


	<div class="wrapper">
        <div class="option">
			
				
           
            
            <form action="ExcelRead" method="post" enctype="multipart/form-data">
   
        File: <input type="file" name="file" />
        <input type="submit" value="Ok" />
        <input type="hidden"  name="sub"  value="<%out.print(str);%>">
</form>
			<form method="post" action="MarkUpload.jsp">
				<button class="button">
				    Insert Mark
				</button>
                            <input type="hidden"  name="Code"  value="<%out.print(str);%>">
			</form>
			<form method="post" action="ShowMark.jsp">
				<button class="button">
				    Show Mark
				</button>
                            <input type="hidden"  name="Code"  value="<%out.print(str);%>">
			</form>
			<form method="post" action="InputUpdatableId.jsp">
				<button class="button">
				    Update Mark
				</button>
                            <input type="hidden"  name="Code"  value="<%out.print(str);%>">
			</form>
                        <form method="post" action="ChangePassTeacher.jsp">
				<button class="button">
				    Change Password
				</button>
                            
			</form>
		</div>
	</div>


</body>

</html >