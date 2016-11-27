<%@page language="java" import ="java.sql.*" %>
<%@page language="java" import ="java.lang.*" %>
<%! int n;
%>
<%
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
            String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
		   
            String user = "system";
            String pass = "12345";
            conn = DriverManager.getConnection(dbURL, user, pass);
	
	Statement stm=conn.createStatement();
	
	
	String nm=request.getParameter("FLName");
	String add=request.getParameter("Address");
	String city=request.getParameter("City");
	String state=request.getParameter("State");
	String cou=request.getParameter("Country");
	String post=request.getParameter("post");
	String phn=request.getParameter("phone");
	String mail=request.getParameter("Email");
	String id=request.getParameter("Id");
	String prf=request.getParameter("IdProof");
	
	
	
	
	
	String qry="insert into event values("+nm+",'"+add+"','"+city+"','"+state+"','"+cou+"','"+post+"','"+phn+"','"+mail+"','"+id+"','"+prf+"')";
	
	stm.executeUpdate(qry);
	{
%>
		<html>
		
		<script>alert("Updated successfully.")</script>
		</html>
<%	}
%>
		
<%		
	}
	catch(Exception e){out.println("Error :"+e);}
%>