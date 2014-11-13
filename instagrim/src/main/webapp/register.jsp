<%-- 
    Document   : register.jsp
    Created on : Sep 28, 2014, 6:29:51 PM
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
        <hRed>You are already registered!</hRed>
        <%}else{
        		String regType = RegErrors.getRegType();
        		if (regType != null){%>
        		<hRed><%=regType%></hRed>
        		<%}%>
            <h3>Register as user</h3>
            <form method="POST"  action="Register">
            
               <table class="registerTable" width="300" border="0" cellpadding="5">
               
               <tr>
               
               		<td>
					Name:
					</td>
					
               		<td>
					<input type="text" name="name"/>
					</td>
				
				</tr>
               
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
				
				<tr>
				
					<td>
					Confirm Password:
					</td>
					
               		<td>
					<input type="password" name="confirmPassword"/>
					</td>
					
				</tr>
				
				<tr>
				
					<td>
					Date of Birth:
					</td>
					
               		<td>
					<input type="text" name="birth"/>
					</td>
					
					
				</tr>
				
				<tr>
				
					<td>
					E-mail:
					</td>
					
               		<td>
					<input type="text" name="email"/>
					</td>
					
					
				</tr>
				
                </table>
                
                <br/>
                <br>
                            <table class="avatars" width="500" border="0" cellpadding="5">

			<tr>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/1.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="1" id="q1" checked="checked"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/2.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="2" id="q2"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/3.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="3" id="q3"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/4.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="4" id="q4"/>
			</td>

			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/5.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="5" id="q5"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/6.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="6" id="q6"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/7.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="7" id="q7"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/8.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="8" id="q8"/>
			</td>
			
			</tr>
			
			<tr>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/9.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="9" id="q9"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/10.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="10" id="q10"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/11.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="11" id="q11"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/12.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="12" id="q12"/>
			</td>
			
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/13.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="13" id="q13"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/14.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="14" id="q14"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/15.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="15" id="q15"/>
			</td>
			
			<td align="center" valign="center">
			<img src="/Instatoons-PMessios/Pictures/Avatars/16.png" alt="description here" />
			<br />
			<input type="radio" name="radQ3" value="16" id="q16"/>
			</td>
			
			</tr>
			
			</table>
                <input type="submit" value="Register">
                <br>
                <br>
            </form>
		<%}%>
        </article>
        <footer>
            <ul>
                <li>&COPY;Paris Messios</li>
            </ul>
        </footer>
    </body>
</html>
