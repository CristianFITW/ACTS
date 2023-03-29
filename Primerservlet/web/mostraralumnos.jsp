
<%@page import="java.util.List"%>
<%@page import="clases.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ALumnis</title>
    </head>
    <body>
        <h1>Alumnos registrados</h1>
        <%
            List<Alumno> listaAlumno = (List) request.getSession().getAttribute("listaAlumno");
            int cont = 1;
            for(Alumno usu  : listaAlumno){
            %>
            <p><b>Alumno <%=cont %></b></p>
            <p>Nombre <%= usu.getNombre()%></p>
            <p>1er apellido <%= usu.getApellidop()%></p> 
            <p>2do apellido <%= usu.getApellidom()%></p>
            <p>Telefono <%= usu.getTelefono()%></p>
            <p>Grupo <%= usu.getGrupo()%></p>
            <p>Especialidad <%= usu.getEspecialidad()%></p>
            <p>Boleta <%= usu.getBoleta()%></p>
            <p>Salon <%= usu.getSalon()%></p>
            <p>-------------------------------------------</p>
            <% cont = cont +1;%>
            
            <%
            }
            %>
    </body>
</html>
