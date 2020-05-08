package com.springMVC;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.data.Data;
import com.data.Question;


@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String bundesland_1() {
		return "index";
	}
	
	@RequestMapping("/selectland")
	public String selectland() {
		return "selectland";
	}
	
	@RequestMapping("/quiz")
	public String quiz(HttpServletRequest request, Model model) {
		ArrayList<Question> questions = (ArrayList<Question>) Data.quiz(Integer.parseInt(request.getParameter("subject")));
		request.getSession().setAttribute("questions", questions);
		return "quiz";
	}
	
	@SuppressWarnings("unchecked")
	@PostMapping("/solution")
	public String solution(HttpServletRequest request, Model model) {
		ArrayList<Question> questions = (ArrayList<Question>) request.getSession().getAttribute("questions");
		for (int i=0 ; i<33 ; i++) {		
			if (request.getParameter("radio"+(i+1))!=null) {
				questions.get(i).setStudentAnswer(request.getParameter("radio"+(i+1)));
			}
		}
		int trueAnswer=0;
		int falseAnswer=0;
		int emptyAnswer=0;
		for (Question question : questions) {
			if (question.getTrueAnswer().equals(question.getStudentAnswer())) {
				trueAnswer++;
			} else if(question.getStudentAnswer()==null) {
				emptyAnswer++;
			} else falseAnswer++;
		}
		request.setAttribute("trueAnswer", String.valueOf(trueAnswer));
		request.setAttribute("falseAnswer", String.valueOf(falseAnswer));
		request.setAttribute("emptyAnswer", String.valueOf(emptyAnswer));
		request.setAttribute("questions", questions);
		model.addAttribute("questions", questions);
		return "solution";
	}
}
