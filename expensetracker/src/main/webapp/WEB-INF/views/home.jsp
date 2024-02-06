<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.content-table {
border-collapse:collapse;	
margin:25px 0;
font-size:0.7cm;
margin-left:auto;
margin-right:auto;
align-items:center;
min-width:400px;
border-radius:10px 10px 0 0;
overflow:hidden;
box-shadow:0 0 20px rgba(0,0,0,0.15);
}

.content-table thead tr{
background-color:#009879;
color:#ffffff;
text-align:left;
font-weight:bold;
}

.content-table th,
.content-table td{
padding:12px 15px;
}


.content-table tbody tr{
border-bottom:1px solid #dddddd;
background-color:#ffffff;
}

.content-table tbody tr :nth-of-type(even){
background-color:#f3f3f3;
}

.content-table tbody tr:last-of-type{
border-bottom:2px solid #009879;
}

<style>
    * {
  margin:0;
  padding:0;
  font-family: 'Arvo';
}

body{
  background-color: #E63946;
}

.main{
   height:200px;
  width:100%; 
  marging-top:0px;
  margin-left:auto;
  margin-right:auto;
  font-family: 'Arvo';  
  display:flex;
  align-items:center;
  justify-content:center;
  text-align:center;
}
h1{
  text-align:center;
  text-transform: uppercase;
  color: #F1FAEE; 
  font-size: 4rem;
}

.roller{
  height: 4.125rem;
  line-height: 4rem;
  position: relative;
  overflow: hidden; 
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  
  color: #1D3557;
}


#spare-time{
  font-size: 1rem;
  font-style: italic;
  letter-spacing: 1rem;
  margin-top: 0;
  color: #A8DADC;
  
}

.roller #rolltext {
  position: absolute;
  top: 0;
  animation: slide 5s infinite;  
}

@keyframes slide {
  0%{
    top:0;
  }
  25%{
    top: -4rem;    
  }
  50%{
    top: -8rem;
  }
  72.5%{
    top: -12.25rem;
  }
}

@media screen and (max-width: 600px){
  h1{
  text-align:center;
  text-transform: uppercase;
  color: #F1FAEE; 
  font-size: 2.125rem;
}
  
  .roller{
  height: 2.6rem; 
  line-height: 2.125rem;  
  }
  
  #spare-time {
    font-size: 1rem;
    letter-spacing: 0.1rem;
    color: crimson;
  }
  
  .roller #rolltext {  
  animation: slide-mob 5s infinite;  
}
  
  @keyframes slide-mob {
  0%{
    top:0;
  }
  25%{
    top: -2.125rem;    
  }
  50%{
    top: -4.25rem;
  }
  72.5%{
    top: -6.375rem;
  }
}


}

#data{
text-align:center;

}

#data p{
font-size:0.9cm;
font-weight:bold;
color:white;
}
</style>
</head>
<body>
    <div class="main">
        <h1>Welcome To Expense Tracker  <div class="roller">
          <span id="rolltext">Tracking<br/>
          Your<br/>
          Daily Expenses<br/>
          <span id="spare-time"><b> is now very easy !!!</b> </span><br/>
          </div>
          </h1>
          
        </div>
        <br>
<div  id="data">
<p >${message}</p>
<a href="${contextRoot}/expense"  >Add Expense</a>

</div>

<table  class="content-table">
<thead>
<tr>
<th>Expense Name </th>
<th>Amount </th>
<th>Date</th>
<th>Edit Expense</th>
</tr>
</thead>


<c:forEach var="expense" items="${expenses}">

<tr>
            <td>${expense.expense_name}</td>
            <td>&#8377;${expense.amount}</td>
            <td>${expense.created_at}</td>
            <td><a href="${contextRoot}/expense/${expense.id}">Edit</a></td>
            
        </tr>
</c:forEach>
</table>

</body>
</html>