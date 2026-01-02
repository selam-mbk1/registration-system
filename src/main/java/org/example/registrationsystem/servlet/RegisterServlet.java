package org.example.registrationsystem.servlet;

import org.example.registrationsystem.dao.StudentDAO;
import org.example.registrationsystem.model.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private StudentDAO studentDAO = new StudentDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String year = request.getParameter("year");

        Student student = new Student();
        student.setName(name);
        student.setEmail(email);
        student.setYear(year);

        try {
            studentDAO.insertStudent(student);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("students");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("register.jsp"); // show form on GET
    }
}
