package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.unoesc.dao.FuncionarioDao;
@Controller
@RequestMapping("/funcionario")
public class FuncionarioController {
	@Autowired
	private FuncionarioDao dao;
	
	@RequestMapping(path = "/cadastro")
	public String cadastro() {
		return "funcionario/cadastro";
	}
}
