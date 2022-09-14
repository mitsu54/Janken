package com.mitsu.model;

import java.util.List;

public class Hantei {
	
	public static Integer checkNum(List<Integer> answers) {  
		int ans = 0;	
		for(int i = 0; i < answers.size(); i++) {
			if(answers.get(i) == 0) {	
				ans++;
			}
		}
		return ans;	
	}
	
	public static int shuffleCom(int num) {
		num = (int)Math.floor(Math.random() * 3 + 1);
		
		return num;
	}
	
	public static String playJanken(int player, int com) {
		String result = null;
		
		if(com == 1) {
			switch(player) {
				case 1: result = "even";
				break;
				case 2: result = "lose";
				break;
				case 3: result = "win";
				break;
			}
		}
		else if(com == 2) {
			switch(player) {
				case 1: result = "win";
				break;
				case 2: result = "even";
				break;
				case 3: result = "lose";
				break;
			}
		}
		else if(com == 3) {
			switch(player) {
				case 1: result = "lose";
				break;
				case 2: result = "win";
				break;
				case 3: result = "even";
				break;
			}
		}
		
		return result;
	}
}