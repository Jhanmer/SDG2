<%-- 
    Document   : Consulta.jsp
    Created on : 14/09/2022, 10:15:56 PM
    Author     : ADMIN
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection miConexionCN = DriverManager.getConnection("jdbc:mysql://localhost/pluton","root","");
  Statement declararObjetoBdSt = miConexionCN.createStatement();
  ResultSet datosObenitdosRS = declararObjetoBdSt.executeQuery("Select * from plu_usuario");
  out.print("<div class='table-responsive'><table border=1  class='table'>");
  out.print("<thead class='thead-dark'><tr><th>ItemAi</th><th>IdUsuario</th><th>CodUsuario</th><th>Usuario</th><th>Password</th><th>Nombres</th><th>Apellidos</th><th>Email</th><th>Permisos</th><th>Estado</th><th>Enlinea</th><th>Num_Ingresos</th><th>Fec_Creacion</th><th>Fec_Eliminacion</th><th>Fec_Modificacion</th><th>Fec_UltimoAcceso</th><th>Creado_Por</th><th>Modificado_Por</th><th>Eliminado_Por</th><th>Hora_Creacion</th><th>Hora_Modificacion</th><th>Hora_Eliminacion</th><th>Hora_UltimoAcceso</th></tr></thead>");
    while(datosObenitdosRS.next()){
        out.print("<tbody><tr>");
        out.print("<td>");
        out.print(datosObenitdosRS.getString("ItemAi"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("idUsuario"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("CodUsuario"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Usuario"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Password"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Nombres"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Apellidos"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Email"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Permisos"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("estado"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("EnLinea"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Num_ingresos"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Fec_Creacion"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Fec_Eliminacion"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Fec_Modificacion"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Fec_UltimoAcceso"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Creado_Por"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Modificado_Por"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Eliminado_Por"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Hora_Creacion"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Hora_Modificacion"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Hora_Eliminacion"));
        out.print("</td><td>");
        out.print(datosObenitdosRS.getString("Hora_UltimoAcceso"));
        out.print("</td>");
        out.print("</tr>");
    }
     out.print("</tbody></table></div>");
datosObenitdosRS.close();
declararObjetoBdSt.close();
miConexionCN.close();
%>
