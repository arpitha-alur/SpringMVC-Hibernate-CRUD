<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Customers</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Customer List</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Customer -->
		
			<!--  add our html table here -->
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
				    
				    <c:url var="updateLink" value="/customer/showFormForUpdate">
				        <c:param name="customerId" value="${tempCustomer.id}" />
				    </c:url>
				    
				    
				     <c:url var="deleteLink" value="/customer/delete">
				        <c:param name="customerId" value="${tempCustomer.id}" />
				    </c:url>
				    
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
						<td><a href="${updateLink}">Update</a>
						-
						<a href="${deleteLink}" 
						 onClick="if(!(confirm('You sure want to delete?'))) return false">Delete</a></td>
					</tr>
				
				</c:forEach>
						
			</table>
			
			<input type="button" value="Add Customer"
				   onclick="window.location.href='showFormAdd'; return false;"
				   class="add-button"
			/>
				
		</div>
	
	</div>
	

</body>

</html>









