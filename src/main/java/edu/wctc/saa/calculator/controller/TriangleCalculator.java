package edu.wctc.saa.calculator.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.wctc.saa.calculator.model.TriangleCalculatorService;

/**
 *
 * @author Gladwin
 */
@WebServlet(name = "TriangleCalculator", urlPatterns = {"/TriangleCalculator"})
public class TriangleCalculator extends HttpServlet {

    private final String RESULT_PAGE = "geometryCalculators.jsp";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String sideA = request.getParameter("side1");
        String sideB = request.getParameter("side2");
        double sideC = 0.0;

        TriangleCalculatorService tcs = new TriangleCalculatorService();
        sideC = tcs.getLegC(sideA, sideB);

        request.setAttribute("sideC", sideC);
        request.setAttribute("sideA", sideA);
        request.setAttribute("sideB", sideB);

        RequestDispatcher view = request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);

        /*try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
 /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TriangleCalculator</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TriangleCalculator at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        //}
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
