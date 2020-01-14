package controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/helloWorld")
public class HelloWorldController {
	
	static String[][] pessoas = {
			{"Gean", "25"},
			{"André", "30"},
			{"Leticia", "18"}
	};
 
	@RequestMapping(value="/welcome/{i}", method = RequestMethod.GET)
	public String printWelcome(@PathVariable String i, ModelMap model) {
		
		int index = 0;
		try {
			index = Integer.min(Integer.parseInt(i), pessoas.length-1);
			index = Integer.max(index, 0);
		} catch (NumberFormatException ex) {
			model.addAttribute("mensage", ex.getMessage());
			return "erro";
		}
		
		model.addAttribute("nome", pessoas[index][0]);
		model.addAttribute("idade", pessoas[index][1]);
		return "index";
 
	}
	
	@RequestMapping(value="/welcome/", method = RequestMethod.GET)
	public String nomeCompleto(@RequestParam("nome") String nome,
									@RequestParam("sobrenome") String sobrenome, ModelMap model) {
		
		model.addAttribute("nome", nome);
		model.addAttribute("sobrenome", sobrenome);
		
		return "nomeCompleto";
 
	} 
}
