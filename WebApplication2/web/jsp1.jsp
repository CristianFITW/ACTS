<%-- 
    Document   : jsp1
    Created on : 9 mar 2023, 13:10:58
    Author     : alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="jsp1.css">
    </head>
    <body>
        <center>
<div class="barra_separadora">Numero mayo o menor a 50</div>
</center>
    
        <nav class="menuCSS3">
		<ul>
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="jsp1.jsp">Numeros random</a></li>
                    <li><a href="jsp2.jsp">Tabla</a></li>
                    <li><a href="jsp3.jsp">Agregar a tabla</a>
			</li>
		</ul>
	</nav>
    
        <h2><%=request.getParameter("numero") == null? "Sin dato" : request.getParameter("numero") %></h2>
        <%
            
            int x = (int)((Math.random() * 100 ));
            if( x < 50 )
            {
        %>
                <h1>Es menor a 50</h1>
        <%
            }
            else
            {
        %>
                <h1>Es mayor o igual a 50</h1>
        <%
            }
        %>
        <h1>El valor es <%=x%></h1>
    
    </body>
</html>
