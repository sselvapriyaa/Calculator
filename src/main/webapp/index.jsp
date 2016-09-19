<%-- 
    Document   : index
    Created on : Sep 14, 2016, 11:50:31 AM
    Author     : Gladwin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
This web page allows the user to input the length and width of a rectangle
so that the area of the rectangle can be calculated.
-->
<html>
    <head>
        <title>Area Calculator</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <div id="head">
            <h1>Geometry Calculators</h1>
        </div>
        <div id="wrapper">


            <div class="block">

                <h1>Area of a Rectangle</h1>
                <image src ="http://images.tutorvista.com/cms/images/102/area-of-rectangle.png">
                <p>Area of a rectangle is calculated with the following formula:<br>
                    <code>Area = length * width</code> 
                </p>
                
               <form name="rectange" method="POST" action="RectangleCalculator">
                    <div class="inputarea">
                        <label for="length">Length:</label><input type="text" id="length" name="length" /><br>
                    </div>
                    <div class="inputarea">
                        <label for="width">Width:</label><input type="text" id="width" name="width" /><br>
                    </div>
                    <input type="submit" name="sumbitRect" value="Calculate Area"/>
                </form>
                <div class="block">
                    <h2>Area of Circle</h2>
                      <image src ="https://qph.ec.quoracdn.net/main-qimg-5a525b797f34958f73eee877b4b5a04e?convert_to_webp=true">
                    <p>Area of a circle is calculated with the following formula: <br>
                        <code>Area = 2 * pi * radius</code>
                    </p>
                     <form name="circle" method="POST" action="CircleCalculator">
                        <div class="inputarea">
                            <label for="radius">Radius:</label><input type="text" id="radius" name="radius" /><br>
                        </div>
                        <input type="submit" name="sumbitCirc" value="Calculate Area"/>
                    </form>
                </div> 

                <div class="block">
                    <h2>Pythagorean Theorem</h2>
                    <img src="http://images.tutorvista.com/cms/images/102/right-triangle.PNG">
                    <p>Given two legs of a right triangle, the length of the third leg can 
                        be found using the Pythagorean Theorem:<br>
                        <code>a^2 + b^2 = c^2</code>
                    </p>
                    <form name="triangle" method="POST" action="TriangleCalculator">
                        <div class="inputarea">
                            <label for="side1">Side 1:</label><input type="text" id="side1" name="side1" /><br>
                        </div>
                        <div class="inputarea">
                            <label for="side2">Side 2:</label><input type="text" id="side2" name="side2" /><br>
                        </div>
                        <input type="submit" id="sumbitTriangle" value="Find c"/>
                    </form>
                </div>
                
            </div>
            
       <!-- <c:out value="${rectangleResults}" default=""></c:out>
        <c:out value="${circleResults}" default=""></c:out>
        <c:out value="${triangleResults}" default=""></c:out>-->
         </body>
</html>
