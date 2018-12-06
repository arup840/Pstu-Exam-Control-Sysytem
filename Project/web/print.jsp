<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script>
        function pt(divName) {
    var restorepase=document.body.innerHTML;
    var printcontent=document.getElementById(divName).innerHTML;
    document.body.innerHTML=printcontent;
    window.print();
    document.body.innerHTML=restorepase;

 }
    </script>
</head>
<body>
   <html>
<body>
    <div id="ab">
This is the text for page #1.

<p style="page-break-before: always">

Page #2...

<p style="page-break-before: always">

Page #3...
</div>
    <p align="right"><button onclick="pt('ab')">Print</button></p>
</body>
</html>
</body>
</html>