package com.servlet;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entity.NewReg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;



@MultipartConfig(
	    maxFileSize = 20971520,  
	    maxRequestSize = 20971520 
	    )
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings({ "deprecation" })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			response.getWriter().append("Served at: ").append(request.getContextPath());
			Configuration configuration = new Configuration();
			configuration.configure("hibernate.cfg.xml");
			SessionFactory sf = configuration.buildSessionFactory();
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String text = request.getParameter("text");
		String experience = request.getParameter("experience");
		Part filePart = request.getPart("resume");
		String password = request.getParameter("password");
		byte[] resumeData = null;

		if (filePart != null) {
            try (InputStream resumeInputStream = filePart.getInputStream();
                 ByteArrayOutputStream buffer = new ByteArrayOutputStream()) {

                byte[] temp = new byte[4096];
                int bytesRead;
                while ((bytesRead = resumeInputStream.read(temp)) != -1) {
                    buffer.write(temp, 0, bytesRead);
                }
                resumeData = buffer.toByteArray();
            }
        }


		NewReg newreg = new NewReg();
		newreg.setname(name);
		newreg.setEmail(email);
		newreg.setphone(phone);
		newreg.setText(text);
		newreg.setExperience(experience);
		newreg.setResume(resumeData);
		newreg.setPassword(password);

		session.save(newreg);
	    tx.commit();
	    
        response.sendRedirect("login.jsp");

	     session.close();
	     sf.close();
	}
	
}