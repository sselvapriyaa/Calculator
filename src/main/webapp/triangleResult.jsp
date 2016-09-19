<%-- 
    Document   : triangleResult
    Created on : Sep 12, 2016, 12:44:31 PM
    Author     : Gladwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Triangle Result</title>
    </head>
    <body>
        <h1>Leg C of Triangle</h1>
        
        <p>
            <%
                Object legC = request.getAttribute("sideC");
                
                if(legC != null){
                    out.print("Length of leg C: " + legC.toString());
                } else {
                    out.print("There was a problem calculating the third leg. :(");
                }
                
                               
                
            %>
            
             <p><a href="index.jsp">Back To Index Page</a></p>                       
        </p>
    </body>
</html>
