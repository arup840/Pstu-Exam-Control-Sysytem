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
    <%
    String str=request.getParameter("Code");
    %>

 
</br>
</br>

</br>
	<div class="wrapper">
            <form action="UpdateMark.jsp" method="post">
                <p align="center">
                 Input ID:<input type="text" name="id">
                 <input type="submit" value="Update">
                 <input type="hidden"  name="Code"  value="<%out.print(str);%>">
                </p>
            </form>
           
	</div>


</body>

</html >
