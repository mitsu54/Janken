package com.mitsu.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JspServlet")
public abstract class JspServlet extends HttpServlet {
	
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) 
    		throws ServletException, IOException {
    	try {
    		action(request, response);
       	}
    	catch(Exception e) {
    		throw new ServletException(e);
    	}
    }
    	
    protected void action(
    		HttpServletRequest request,
    		HttpServletResponse response
        ) throws Exception {
    	request.setCharacterEncoding("UTF-8");		
		String jsp = this.view(request, response);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(jsp);
		dispatcher.forward(request, response);
	}
    
    protected abstract String view(
    		HttpServletRequest request,
    		HttpServletResponse response
    	)throws Exception;
}
