package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.unoesc.dao.FilialDao;

@Controller
@RequestMapping("/filial")
public class FilialController {
		
		@Autowired
		private FilialDao filialdao;
		
		@RequestMapping(path = "/cadastro")
		public String novo(Model model) {			
			return "filial/cadastro";
		}
	
}
