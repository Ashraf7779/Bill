<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bill_Amount</title>
<style>
    body{background-color:#f4f4f4;margin:0;padding:0;}
    .container{max-width:1000px;background-color:#fff;margin:50px;padding:50px;margin-left:120px;border: 2px solid black;border-radius:1rem;margin-top:125px;}
    h1{color:red;margin-top:5px;}
    h2{color:red;margin-top:5px;}
    header{text-align:center;margin-bottom:20px;}
    form{display:flex;flex-direction:column;max-width:500px;}
    label{margin-bottom:10px;font-size:20px;}
    input{margin-bottom:10px;border: 1px solid #ddd;padding:12px;}
    button{padding:10px;border-radius:10px;cursor:pointer;max-width:200px;font-size:18px;text:bold;color:white;background-color:black;}
    a button{margin-left:50px;background-color:blue;color:white;}
    
</style>
</head>
<body>
    <div class="container">
      <header>
          <h1>Electricity Bill Management System</h1>
      </header>
            <label>Bill Number : </label>
            <h2>${bill_number}</h2>
            <label>No of Units :  </label>
            <h2>${units}</h2>
            <button>Amount: ₹ ${bill}/-</button>
            <a href="https://www.apcpdcl.in/"><button>PAY</button></a>
    </div>
</body>
</html>