<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean class="order.Order" id="theOrder" scope="session"/>

<jsp:setProperty name="theOrder" property="name" value="${param.name}"/>
<jsp:setProperty name="theOrder" property="address" value="${param.address}"/>


<html>
  <body>
    <img alt="Logo" src="logo.gif">
    <h2>Confirmation</h2>
    <p>
      Size: ${theOrder.size}
    </p>
    <c:if test="${theOrder.mushrooms eq 'true' or theOrder.beef eq 'true' or theOrder.sausage eq 'true'}">
      <h3>
        Extra ingredients:
      </h3>
      <ul>
	      <c:if test="${theOrder.mushrooms eq 'true'}">
	        <li>Mushrooms</li>
	      </c:if>    
	      <c:if test="${theOrder.beef eq 'true'}">
	        <li>Beef</li>
	      </c:if>    
	      <c:if test="${theOrder.sausage eq 'true'}">
	        <li>Sausage</li>
	      </c:if>    
      </ul>
    </c:if>    
    <p>
      Price for selected ingredients: ${theOrder.price}
    </p>
    <p>
      Name: ${theOrder.name}
    </p>
    <p>
      Address: ${theOrder.address}
    </p>
  </body>
</html>