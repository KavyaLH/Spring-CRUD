<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<script type = "text/javascript" >  
function preventBack() { window.history.forward(); }  
setTimeout("preventBack()", 0);  
window.onunload = function () { null };  

function clickedit() {
	    window.location.href = 'edit.jsp'; }
	    
function clickupdate() {
    window.location.href = 'update.jsp'; }
    
function clickaddprod() {
    window.location.href = 'addprod.jsp'; }

function clickLogout() {
	var res = confirm("Click yes to logout");
	if( res == true)
		{
    window.location.href = 'login.jsp';
		}
    }
function clicksearchprod() {
    window.location.href = 'searchprod.jsp'; } 
</script>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">  

<style>  
table
{
  margin-left: auto; 
  margin-right: auto;
  margin-top: auto;
  float: center;
  font-size: 20px;
  width:50%;
  border:3px solid black;
}
  
 th, td
{ 
  border:2px solid black;
  font-color: dark blue;
  
}

body
{  
  font-family: "times new romal", arial, Calibri, Helvetica, sans-serif;  
  background-image:radial-gradient(rgba(0, 255, 260, 1.5),rgba(255, 0, 255, 0.5));
}  

.container 
{  
  padding: 50px;  
  background-color: Dodgerblue;  
}  

label 
{ 
  display: inline-block; 
  width: 350px; 
  text-align: center; 
  font-family: "Times New Roman", Times, serif; 
  font-size:26px; 
}
  
input[type=text],input[type=email], input[type=password],input[type=tel],input[type=date],input[type=number], textarea {  
  width: 15%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;   
}
  
input[type=text]:focus, input[type=password]:focus, input[type=number]:focus, input[type=radio]:focus, input[type=date]:focus, input[type=email]:focus, input[type=tel]:focus {  
  background-color:orange;  
  outline: none;  
  width:10%;
}  

 div
{  
  padding: 2px 0;  
  font-family: "Times New Roman", Times, serif;
  font-size: 20px;
  color: brwon;
  text-align: center;
}       
       
hr 
{  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  

.registerbtn 
{  
  background-color: navy;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 49.52%;  
  opacity: 0.9;  
  font-size: 20px;
}
  
header
{
  overflow: hidden;
  background-color: #333;
  align: center;
  height: 100px;
}

footer 
{
  overflow: hidden;
  background-color: #333;
  align: center;
  padding: 3px 0;  
  color: white;
  text-align: center;
  font-size: 20px;
  position: fixed;
  left: 0;
  bottom: 10px;
  width: 100%;
}

.header-right
{ 
  margin : 0;
  margin-top:2px;
  float:right; 
}
  
.logoutbtn 
{  
  background-color: navy;  
  color: white;  
  padding: 20px 20px;  
  margin: 15px 5px;  
  border: none;  
  cursor: pointer;  
  width: 9%;  
  opacity: 0.9;  
  text-align: center;  
  font-size: 20px;
  float:right;
  border-radius:8px;
}  

.registerbtn:hover 
{  
  opacity: 1;  
}
  
h1
{
  color:white;
  float:left;
  font-size: 40px;
  margin-left : 20px;
  margin-top:20px;
}

h2
{
  color:darkblue;
  float:center;
  font-size: 50px;
  margin-top:20;
  font-family: "cursive", Brush Script MT;
}

button
{
  border-radius:8px;
}

.logbtn
{
  background-color: navy;  
  color: white;  
  padding: 20px 5px;  
  margin: 15px 20px;  
  border: none;  
  cursor: pointer;  
  width: 9%;  
  opacity: 0.9;  
  text-align: center;  
  font-size: 20px;
  float:center;
 border-radius:8px;
}
</style> 
</head>
<body>
<article> <header>
<h1>Gift Store</h1>
<button type="submit" class="logoutbtn" onClick="javascript:clickupdate()">Update User</button> 
<button type="submit" class="logoutbtn" onClick="javascript:clickedit()">View User</button>  
<button type="submit" class="logoutbtn"onClick="javascript:clickaddprod()">Add Product</button>  
<button type="submit" class="logoutbtn" onClick="javascript:clickLogout()">Logout</button> 
</header> </article>
<div><p style="font-size: 40px ; color:maroon "> ${msg}</p></div>

<form action="searchtab.do"> 

	<div><label>Enter Product Name </label>   
	<input type="text" name="pname" placeholder= "ProductName"  required /> <br>
	<button type="submit" class="logbtn" >Search</button>  
	<button type="submit" class="logbtn" onClick="javascript:clickcancel()">Cancel</button>  </div>
	<article> <footer><p style=" float:center"> &#169;since 2021 </p> </footer> </article>


<div id ="displaytable">


<table id= "displaytable">


<c:forEach var="giftpro" items="${addprodentity}">
	<thead>
<tr>
		<th>ID</th>
		<th>Product name</th>
		<th>Quantity</th>
		<th>Price</th>
		</tr>
	</thead>

<tr>
	<td>${giftpro.getPid()}</td>
	<td>${giftpro.getPname()}</td>
	<td>${giftpro.getPquantity()}</td>
	<td>${giftpro.getPprice()}</td>

</tr>
</c:forEach> 

</table></div>
</form>
</body>
</html>