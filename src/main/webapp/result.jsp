<%-- 
    Document   : result
    Created on : Sep 12, 2016, 12:36:21 PM
    Author     : Gladwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area of Rectangle</title>
    </head>
    <body>
        <h1>Area of Rectangle</h1>
        <%
            String area = "0";
            String length = "0";
            String width = "0";
            String resultText = "";
            
            Object areaResp = request.getAttribute("area");
            Object lengthResp = request.getAttribute("length");
            Object widthResp = request.getAttribute("width");
            
            if(areaResp != null){
                area = areaResp.toString();
            } 
            if(lengthResp != null){
                length = lengthResp.toString();
            }
            if(widthResp != null){
                width = widthResp.toString();
            }
            
            
            resultText = "<p>The area of a rectangle with length " + length
                        + " and width " + width + " is " + area + ".</p>";
            
            out.print(resultText);
            
            
                     
            
            
            
       %>
       <p><a href="index.jsp">Back To Index Page</a></p>
    </body>
</html>
