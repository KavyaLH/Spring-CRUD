<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>  

table.center 
{
  margin-left: auto; 
  margin-right: auto;
  margin-top: auto;
  
}

body
{  
  font-family: "times new romal", arial, Calibri, Helvetica, sans-serif;  
  background-color: pink;  
  // background-image: radial-gradient(pink, blue, purple);
  background-image:radial-gradient(rgba(0, 255, 260, 1.5),rgba(255, 0, 255, 0.5));
}  

.container 
{  
    padding: 50px;  
  background-color: Dodgerblue;  
}  

label { display: inline-block; width: 350px; text-align: center; font-family: "Times New Roman", Times, serif; font-size:26px; }
  
input[type=text],input[type=email], input[type=password],input[type=tel],input[type=date],input[type=number], textarea {  
  width: 15%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
  
}  
input[type=text]:focus, input[type=password]:focus, input[type=number]:focus, input[type=radio]:focus, input[type=date]:focus, input[type=email]:focus, input[type=tel]:focus {  
  background-color:LightSkyBlue;  
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
       
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
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
/* article {
  background-color: #F1F1F1;
  align: center;
  padding: 20px;
  height: 15px;
  } */

header {
overflow: hidden;
  background-color: #333;
  align: center;
   height: 100px;
  }
  footer {
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
  float:right; }
  
.logoutbtn {  
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

.registerbtn:hover {  
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
font-family: "cursive",	Brush Script MT;
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
${giftentity.getUId()}
${giftentity.getUsername()}
${giftentity.getUseremail()}
${giftentity.getContactno()}
${addprodentity.getPid()}
${addprodentity.getPname()}

</body>
</html>