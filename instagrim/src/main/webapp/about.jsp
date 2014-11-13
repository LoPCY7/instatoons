<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instatoons.stores.*" %>
<!DOCTYPE html>
<html>

    <head>
        <title>instatoons</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
    </head>
    
    <body>	
        <header>
            <h1>
            	<a class="header-logo" href="/Instatoons-PMessios">instatoons</a>
            </h1>
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

        </header>
        
		<article>
		<p>This site is used in order to convert a normal picture to a cartoonish one</p>
		<h1><p>References:<br>
		
		Code is based on instatoons: https://github.com/acobley/Instatoons-PMessios<br>
		
		Oil painting tutorial: https://github.com/lindenb/jsandbox/blob/master/src/sandbox/OilPainting.java<br>
		
		logo fonts: http://www.dafont.com/from-cartoon-blocks.font<br>

		bg: http://www.psdgraphics.com/file/cloudy-sky-cartoon.jpg<br>

		logo eyes: http://www.officialpsds.com/cartoon-eyes-PSD65112.html<br>

		bg size: http://css-tricks.com/perfect-full-page-background-image/<br>

		nav bar: http://www.jacklmoore.com/notes/css3-ribbon-menu/<br>

		avatars: http://www.resourcesgraphics.com/vector-graphic/vector-cartoon-vector-graphic/16-funny-faces-cartoon-characters-icons-2.html</p></h1>
		</article>
        <footer>
            <ul>
                <li>&COPY;Paris Messios</li>
            </ul>
        </footer>
    </body>
</html>
