package com.mitsu.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jankenStage")
public class JankenStage extends JspServlet{
	public JankenStage() {
        super();
    }

	protected String view(
			HttpServletRequest request, 
			HttpServletResponse response
		)throws Exception {
		String jsp = "";
		int stage = Integer.parseInt(request.getParameter("stage"));
		
		if(stage == 1) {
			jsp = "WEB-INF/jsp/janken_game.jsp";
		}
		else if(stage == 2) {		
			jsp = "WEB-INF/jsp/janken_even.jsp";
		}
		
		return jsp;
	}
}
