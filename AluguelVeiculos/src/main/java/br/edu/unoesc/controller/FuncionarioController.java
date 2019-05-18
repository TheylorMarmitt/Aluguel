package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.model.Funcionario;
@Controller
@RequestMapping("/funcionario")
public class FuncionarioController {
	@Autowired
	private FuncionarioDao dao;
	
	@RequestMapping(path = "/cadastro")
	public String cadastro() {
		return "funcionario/cadastro";
	}
	@RequestMapping(path = "/cadastro", method= RequestMethod.POST)
	public String cadastro(Funcionario funcionario) {
		dao.save(funcionario);
		return "funcionario/lista";
	}
	@RequestMapping(path="/lista")
	public String lista(Model model) {
		model.addAttribute("lista", dao.findAll());
		return "funcionario/lista";
	}
}
