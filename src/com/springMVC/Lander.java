package com.springMVC;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.data.Data;
import com.data.Question;

@Controller
public class Lander {
	
	@RequestMapping("/Baden-Wurttemberg")
	public String badenWurttemberg(Model model) {
		List<Question> questions = Data.fragenLand(300);
		model.addAttribute("questions", questions);
		return "countries/Baden-Wurttemberg";
	}	
	
	@RequestMapping("/Bayern")
	public String bayern(Model model) {
		List<Question> questions = Data.fragenLand(310);
		model.addAttribute("questions", questions);
		return "countries/Bayern";
	}
	
	@RequestMapping("/Berlin")
	public String berlin(Model model) {
		List<Question> questions = Data.fragenLand(320);
		model.addAttribute("questions", questions);
		return "countries/Berlin";
	}
	
	@RequestMapping("/Brandenburg")
	public String brandenburg(Model model) {
		List<Question> questions = Data.fragenLand(330);
		model.addAttribute("questions", questions);
		return "countries/Brandenburg";
	}
	
	@RequestMapping("/Bremen")
	public String bremen(Model model) {
		List<Question> questions = Data.fragenLand(340);
		model.addAttribute("questions", questions);
		return "countries/Bremen";
	}
	
	@RequestMapping("/Hamburg")
	public String hamburg(Model model) {
		List<Question> questions = Data.fragenLand(350);
		model.addAttribute("questions", questions);
		return "countries/Hamburg";
	}
	
	@RequestMapping("/Hessen")
	public String hessen(Model model) {
		List<Question> questions = Data.fragenLand(360);
		model.addAttribute("questions", questions);
		return "countries/Hessen";
	}
	
	@RequestMapping("/Mecklenburg-Vorpommern")
	public String mecklenburgVorpommern(Model model) {
		List<Question> questions = Data.fragenLand(370);
		model.addAttribute("questions", questions);
		return "countries/Mecklenburg-Vorpommern";
	}
	
	@RequestMapping("/Niedersachsen")
	public String niedersachsen(Model model) {
		List<Question> questions = Data.fragenLand(380);
		model.addAttribute("questions", questions);
		return "countries/Niedersachsen";
	}
	
	@RequestMapping("/Nordrhein-Westfalen")
	public String nordrheinWestfalen(Model model) {
		List<Question> questions = Data.fragenLand(390);
		model.addAttribute("questions", questions);
		return "countries/Nordrhein-Westfalen";
	}
	
	@RequestMapping("/Rheinland-Pfalz")
	public String rheinlandPfalz(Model model) {
		List<Question> questions = Data.fragenLand(400);
		model.addAttribute("questions", questions);
		return "countries/Rheinland-Pfalz";
	}
	
	@RequestMapping("/Saarland")
	public String saarland(Model model) {
		List<Question> questions = Data.fragenLand(410);
		model.addAttribute("questions", questions);
		return "countries/Saarland";
	}
	
	@RequestMapping("/Sachsen")
	public String sachsen(Model model) {
		List<Question> questions = Data.fragenLand(420);
		model.addAttribute("questions", questions);
		return "countries/Sachsen";
	}
	
	@RequestMapping("/Sachsen-Anhalt")
	public String sachsenAnhalt(Model model) {
		List<Question> questions = Data.fragenLand(430);
		model.addAttribute("questions", questions);
		return "countries/Sachsen-Anhalt";
	}
	
	@RequestMapping("/Schleswig-Holstein")
	public String schleswigHolstein(Model model) {
		List<Question> questions = Data.fragenLand(440);
		model.addAttribute("questions", questions);
		return "countries/Schleswig-Holstein";
	}
	
	@RequestMapping("/Thuringen")
	public String thuringen(Model model) {
		List<Question> questions = Data.fragenLand(450);
		model.addAttribute("questions", questions);
		return "countries/Thuringen";
	}
}
