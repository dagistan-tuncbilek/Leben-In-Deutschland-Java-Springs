package com.springMVC;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.data.Data;
import com.data.Question;

@Controller
@RequestMapping("/bundesland")
public class BundeslandFragen {
	
	@RequestMapping("/fragen_1")
	public String bundeslandFragen_1(Model model) {
		List<Question> questions = Data.fragen300(0);
		model.addAttribute("questions", questions);
		return "fragen_1";
	}	
	
	@RequestMapping("/fragen_2")
	public String bundeslandFragen_2(Model model) {
		List<Question> questions = Data.fragen300(25);
		model.addAttribute("questions", questions);
		return "fragen_2";
	}
	
	@RequestMapping("/fragen_3")
	public String bundeslandFragen_3(Model model) {
		List<Question> questions = Data.fragen300(50);
		model.addAttribute("questions", questions);
		return "fragen_3";
	}
	
	@RequestMapping("/fragen_4")
	public String bundeslandFragen_4(Model model) {
		List<Question> questions = Data.fragen300(75);
		model.addAttribute("questions", questions);
		return "fragen_4";
	}
	
	@RequestMapping("/fragen_5")
	public String bundeslandFragen_5(Model model) {
		List<Question> questions = Data.fragen300(100);
		model.addAttribute("questions", questions);
		return "fragen_5";
	}
	
	@RequestMapping("/fragen_6")
	public String bundeslandFragen_6(Model model) {
		List<Question> questions = Data.fragen300(125);
		model.addAttribute("questions", questions);
		return "fragen_6";
	}
	
	@RequestMapping("/fragen_7")
	public String bundeslandFragen_7(Model model) {
		List<Question> questions = Data.fragen300(150);
		model.addAttribute("questions", questions);
		return "fragen_7";
	}
	
	@RequestMapping("/fragen_8")
	public String bundeslandFragen_8(Model model) {
		List<Question> questions = Data.fragen300(175);
		model.addAttribute("questions", questions);
		return "fragen_8";
	}
	
	@RequestMapping("/fragen_9")
	public String bundeslandFragen_9(Model model) {
		List<Question> questions = Data.fragen300(200);
		model.addAttribute("questions", questions);
		return "fragen_9";
	}
	
	@RequestMapping("/fragen_10")
	public String bundeslandFragen_10(Model model) {
		List<Question> questions = Data.fragen300(225);
		model.addAttribute("questions", questions);
		return "fragen_10";
	}
	
	@RequestMapping("/fragen_11")
	public String bundeslandFragen_11(Model model) {
		List<Question> questions = Data.fragen300(250);
		model.addAttribute("questions", questions);
		return "fragen_11";
	}
	
	@RequestMapping("/fragen_12")
	public String bundeslandFragen_12(Model model) {
		List<Question> questions = Data.fragen300(275);
		model.addAttribute("questions", questions);
		return "fragen_12";
	}
}
