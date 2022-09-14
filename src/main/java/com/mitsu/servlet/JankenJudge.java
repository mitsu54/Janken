package com.mitsu.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mitsu.model.Hantei;

@WebServlet("/judge")
public class JankenJudge extends JspServlet {
	public JankenJudge() {
        super();
    }

	protected String view(
			HttpServletRequest request, 
			HttpServletResponse response
		)throws Exception {
		
		String jsp = "";
		int turn = Integer.parseInt(request.getParameter("turn"));
		int player = Integer.parseInt(request.getParameter("janken"));
		String word = request.getParameter("word");
		int num = 0;
		int com = Hantei.shuffleCom(num);
				
		if(turn == 1) {
			String result = Hantei.playJanken(player, com);
			
			request.setAttribute("player", player);
			request.setAttribute("com", com);
			request.setAttribute("result", result);
			request.setAttribute("word", word);
			
		    jsp = "WEB-INF/jsp/janken_result.jsp";
		}
		else if(turn == 2) {			
			jsp = "/WEB-INF/jsp/janken_gameover.jsp";				
		}
		
		return jsp;
	}
}
