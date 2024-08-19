<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Billing</title>
<style>
    body{background-color:#f4f4f4;margin:0;padding:0;}
    .container{max-width:1000px;background-color:#fff;margin:50px;padding:50px;margin-left:120px;border: 2px solid black;border-radius:1rem;margin-top:125px;}
    h1{color:red;margin-top:5px;}
    form{display:flex;flex-direction:column;}
    header{text-align:center;margin-bottom:20px;}
    label{margin-bottom:10px;}
    input{margin-bottom:10px;border: 1px solid #ddd;padding:12px;}
    button{padding:10px;background-color:skyblue;border-radius:1rem;cursor:pointer;max-width:100px;}
    button:hover{transform: scale(1.06);}

</style>
</head>
<body>
   <div class="container">
      <header>
          <h1>Electricity Bill Management System</h1>
      </header>
      <form action="/src/main/java/Bill1.java" method="post">
            <label>Bill Number : </label>
            <input type="number" name="bill_number" size="30" required placeholder="Enter your Bill Number eg:(123)">
            <label>No of Units :  </label>
            <input type="number" name="bill_units"  size="30" required placeholder="Enter No of units eg:(45)">
            <button type="submit">Generate Bill</button>
      </form>
   </div>
   
</body>
</html>