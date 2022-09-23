<%-- 
    Document   : Consulta.jsp
    Created on : 14/09/2022, 10:15:56 PM
    Author     : ADMIN
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
  Class.forName("com.mysql.jdbc.Driver");
  Connection miConexionCN = DriverManager.getConnection("jdbc:mysql://localhost/pluton","root","");
  Statement declararObjetoBdSt = miConexionCN.createStatement();
  ResultSet datosObenitdosRS = declararObjetoBdSt.executeQuery("Select * from plu_usuario");
  
    while(datosObenitdosRS.next()){
        out.print(datosObenitdosRS.getString("ItemAi"));
        out.print(datosObenitdosRS.getString("idUsuario"));
        out.print(datosObenitdosRS.getString("CodUsuario"));
        out.print(datosObenitdosRS.getString("Usuario"));
        out.print(datosObenitdosRS.getString("Password"));
        out.print(datosObenitdosRS.getString("Nombres"));
        out.print(datosObenitdosRS.getString("Apellidos"));
        out.print(datosObenitdosRS.getString("Email"));
        out.print(datosObenitdosRS.getString("Permisos"));
        out.print(datosObenitdosRS.getString("estado"));
        out.print(datosObenitdosRS.getString("EnLinea"));
        out.print(datosObenitdosRS.getString("Num_ingresos"));
        out.print(datosObenitdosRS.getString("Fec_Creacion"));
        out.print(datosObenitdosRS.getString("Fec_Eliminacion"));
        out.print(datosObenitdosRS.getString("Fec_Modificacion"));
        out.print(datosObenitdosRS.getString("Fec_UltimoAcceso"));
        out.print(datosObenitdosRS.getString("Creado_Por"));
        out.print(datosObenitdosRS.getString("Modificado_Por"));
        out.print(datosObenitdosRS.getString("Eliminado_Por"));
        out.print(datosObenitdosRS.getString("Hora_Creacion"));
        out.print(datosObenitdosRS.getString("Hora_Modificacion"));
        out.print(datosObenitdosRS.getString("Hora_Eliminacion"));
        out.print(datosObenitdosRS.getString("Hora_UltimoAcceso"));
        
        out.print("<br>");
    }

datosObenitdosRS.close();
declararObjetoBdSt.close();
miConexionCN.close();
%>
