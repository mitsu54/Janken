package com.mitsu.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/top")
public class TopServlet extends JspServlet {
	public TopServlet() {
        super();
     }

	@Override
	protected String view(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		request.setCharacterEncoding("UTF-8");

		String jsp = "/WEB-INF/jsp/top.jsp";
		
		return jsp;
	}
}
