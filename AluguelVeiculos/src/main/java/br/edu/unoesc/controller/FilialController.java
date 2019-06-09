package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sun.xml.bind.v2.TODO;

import br.edu.unoesc.dao.FilialDao;
import br.edu.unoesc.model.Filial;
import br.edu.unoesc.service.FilialService;

@Controller
@RequestMapping("/filial")
public class FilialController {

	@Autowired
	private FilialDao dao;
	
	@Autowired
	private FilialService service;
	
	
	@RequestMapping(path= "/nova")
	public String nova() {
	
		return "filial/nova";
	
	}
	
	@RequestMapping(path= {"/nova", "/atualizar/{codigo}"}, method=RequestMethod.POST)
	public ModelAndView nova(Model model, Filial filial) {
		
		service.salvaOuAtualiza(filial);
		model.addAttribute("filiais", dao.findAll());
		
		return new ModelAndView("filial/lista");
	
	}
	
	@RequestMapping(path="/lista")
	public ModelAndView lista(Model model) {
		
		model.addAttribute("filiais", dao.findAll());
	
		return new ModelAndView("filial/lista");
	
	}
	
	@RequestMapping(path="/atualizar/{codigo}")
	public ModelAndView visualiza(Model model, Filial filial) {
		
		model.addAttribute("filial", dao.findById(filial.getCodigo()).get());
		
		return new ModelAndView("filial/nova");
	
	}
	
}
