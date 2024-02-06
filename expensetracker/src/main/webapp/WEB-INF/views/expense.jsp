<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   <c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <style>
 

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

#formm{
    margin:auto;
    width: 50%;
  padding: 10px;
  border: 3px solid rgb(5, 32, 5);
  border-radius: 30px;

}
label{
display: inline-block;
  width: 120px;
  text-align: right;
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
        
        
<div id="formm">
   <h1 text-align:centre>Add Expense </h1>
<form:form action="${contextRoot}/expense" method="post" modelAttribute="expense">
<form:hidden path="id"/>
<label for="expense_name">Expense Name :</label>  
<form:input path="expense_name" placeholder="Enter Expense name " name="expense_name"/><br><br>
<label for="amount">Amount :</label>  
<form:input path="amount" placeholder="Enter Expense Amount " name="amount"/><br><br>
<label for="note">Note :</label>  
<form:textarea path="note" placeholder="Enter note (optional) " name="note"/><br><br>
<label for="created_at">Created At :</label>  
<input type="date" class="date_picker" name="created_at" /><br><br>
<button type="submit">Add Expense</button>
<br>
<a href="${contextRoot}/expense/${expense.id}/delete">Delete</a>


</form:form>
</div>
</body>
</html>