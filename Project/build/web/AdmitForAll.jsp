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
        <script>
            function check() {
                document.getElementById("a").value = document.getElementById("ab").value;
                document.getElementById("faculty").value = document.getElementById("facul").value;
                document.getElementById("sess").value = document.getElementById("session").value;
            }
            // function show(){
            //var x=document.getElementById("ab").value;
            // document.getElementById("currencies").value=x;
            //}
        </script>
    </head>
    <body >
        <ul>
            <li style="float:right"><a  href="index.html">LogOut</a></li>
            <li style="float:right"><a class="active" href="Administrator.html">Administrator</a></li>
            <li style="float:right"><a href="Security.jsp">Security</a></li>
            <li style="float:right"><a href="">Faculty Management</a>
                <ul>
                    <li><a href="AddFaculty.html">Add Faculty</a></li>
                    <li><a href="AddSubject.html">Add Subject</a></li>
                    <li><a href="Registration.html">Registration </a></li>
                </ul>
            </li>
            <li style="float:right"><a   href="Enrollment.html">Enrollment</a></li>
            <li style="float:right"><a  href="home.html">Home</a></li>
        </ul> 
        <br>

        <br>

        <h2 style="color:Aqua;" align="center">Please Select option to Create Admit</h2>
        <form action =AdmitForAll1.jsp method="post">
            <div class="wrapper">
                <div class="option">
                    <a style="color:white;">Select Faculty:&nbsp;&nbsp;&nbsp;</a>
                    <select id="facul">
                        <option style="display:none;"></option>
                        <option value="AG">Agriculture</option>
                        <option value="CSE">CSE</option>
                        <option value="BAM">BBA</option>
                        <option value="FISH">Fisheries</option>
                        <option value="NFS">NFS</option>
                        <option value="DVM">DVM</option>
                        <option value="AH">AH</option>
                        <option value="LM">Land Managment</option>
                    </select>
                </div>
            </div>
            <input type="hidden" id="faculty" name="Faculty" />
            <div class="wrapper">
                <div class="option">
                    <a style="color:white;">Select Semester:</a>
                    <select id="ab" onChange="check();">
                        <option style="display:none;"></option>
                        <option value="1st Semester(Level-1 Semester-I)">1st Semester(Level-1 Semester-I)</option>
                        <option value="2nd Semester(Level-1 Semester-II)">2nd Semester(Level-1 Semester-II)</option>
                        <option value="3rd Semester(Level-2 Semester-I)">3rd Semester(Level-2 Semester-I)</option>
                        <option value="4th Semester(Level-2 Semester-II)">4th Semester(Level-2 Semester-II)</option>
                        <option value="5th Semester(Level-3 Semester-I)">5th Semester(Level-3 Semester-I)</option>
                        <option value="6th Semester(Level-3 Semester-II)">6th Semester(Level-3 Semester-II)</option>
                        <option value="7th Semester(Level-4 Semester-I)">7th Semester(Level-4 Semester-I)</option>
                        <option value="8th Semester(Level-4 Semester-II)">8th Semester(Level-4 Semester-II)</option>
                    </select>
                </div>
            </div>
            <input type="hidden" id="a" name="Semester" />
            <div class="wrapper">
                <div class="option">
                    <a style="color:white;">Select Session:</a>
                    <select id="session" onChange="check();">
                        <option style="display:none;"></option>
                        <option value="2012-2013">2012-2013</option>
                        <option value="2013-2014">2013-2014</option>
                        <option value="2014-2015">2014-2015</option>
                        <option value="2015-2016">2015-2016</option>
                        <option value="2016-2017">2016-2017</option>
                        <option value="2017-2018">2017-2018</option>
                        <option value="2018-2019">2018-2019</option>
                        <option value="2019-2020">2019-2020</option>
                    </select>
                </div>
            </div>
            <input type="hidden" id="sess" name="Session" />
            <div class="wrapper">
                <div class="option">
                    <input  style="color:#333;background-color:#4CAF50;"  type="submit" value="Show">
                </div>
            </div>

        </form>

    </body>

</html >

