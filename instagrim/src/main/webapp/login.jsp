<%-- 
    Document   : login.jsp
    Created on : Sep 28, 2014, 12:04:14 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instatoons.stores.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>instatoons</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />

    </head>
    <body>
        <header>
        	<h1>
            	<a class="header-logo" href="/Instatoons-PMessios">instatoons</a>
            </h1>
        </header>
            <div id="wrapper">
			<div class='ribbon'>
               
                <a href="/Instatoons-PMessios"><span>&#10029;Home</span></a>
                
                    <%
                    LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
        			int logged=0;
                    if (lg != null) {
                        String UserName = lg.getUsername();
                        logged=1;
                        if (logged == 1) {
                            //String UserName = lg.getUsername();
                            if (lg.getlogedin()) {
                    %>
                <a href="/Instatoons-PMessios/Profile"><span>&#10029;Profile</span></a>
                <a href="/Instatoons-PMessios/Upload"><span>&#10029;Upload</span></a>
                <a href="/Instatoons-PMessios/Images/<%=lg.getUsername()%>"><span>&#10029;Your Images</span></a>
                    <%}}
                            }else{
                                %>
                 <a href="/Instatoons-PMessios/Register"><span>&#10029;Register</span></a>
                <a href="/Instatoons-PMessios/Login"><span>&#10029;Login</span></a>
                <%}%>
                   <a href="/Instatoons-PMessios/About"><span>&#10029;About</span></a>
                    
		</div>
		</div>

       
        <article>
            <%if (logged==1){%>
        	<hRed>You are already logged in!</hRed>
        	<%}else{
        		String logType = RegErrors.getLogType();
        		if (logType != null){%>
        		<hRed><%=logType%></hRed>
        		<%}%>
            <h3>Login</h3>
            
            <form method="POST"  action="Login">
               
               <table class="loginTable" width="300" border="0" cellpadding="5">
               
               <tr>
               
               		<td>
					Username:
					</td>
					
               		<td>
					<input type="text" name="username"/>
					</td>
				
				</tr>
				
				<tr>
				
					<td>
					Password:
					</td>
					
               		<td>
					<input type="password" name="password"/>
					</td>
					
					
				</tr>
                </table>
                <br/>
                <input type="submit" value="Login"> 
            </form>
			<br>
			<br>
		<%}%>
        </article>
        <footer>
            <ul>
                <li>&COPY;Paris Messios</li>
            </ul>
        </footer>
    </body>
</html>
