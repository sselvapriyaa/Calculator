package edu.wctc.saa.calculator.model;

/**
 *
 * @author Gladwin
 */
public class CircleCalculatorService {

    private final double PI = 3.14159;

    /**
     * Calculates the area of a circle with the given radius.
     *
     * @param radius - Radius of the circle
     * @return The area of the circle.
     */
    public double calcArea(String radius) {
        double rad = 0.0;
        double area = 0.0;
        try {
            rad = new Double(radius);
            area = calcArea(rad);
        } catch (Exception e) {
            area = -1;
        }

        return area;
    }

    /**
     * Calculates the area of a circle with the given radius.
     *
     * @param radius - Radius of the circle
     * @return The area of the circle.
     */
    public double calcArea(double radius) {
        return PI * radius * radius;
    }
}
