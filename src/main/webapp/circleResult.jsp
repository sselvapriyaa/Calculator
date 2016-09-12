<%-- 
    Document   : circleResult
    Created on : Sep 12, 2016, 12:41:37 PM
    Author     : Gladwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Circle Calculator</title>
    </head>
    <body>
        <h1>Circle Area</h1>
        <p>
            <%
                
                Object area = request.getAttribute("area");
                
                if(area != null){
                    out.print("Area is " + area.toString());
                } else {
                    out.print("There was a problem computing the area of the circle. :(");
                }
                                         
                                        
                
            %>
            
            
            
            
            
        </p>
        
        
    </body>
</html>
