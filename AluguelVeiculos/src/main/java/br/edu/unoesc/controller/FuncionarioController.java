package br.edu.unoesc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.model.Funcionario;
import br.edu.unoesc.service.FuncionarioService;


@Controller
@RequestMapping("/funcionario")
public class FuncionarioController {
	@Autowired
	private FuncionarioDao dao;
	@Autowired
	private FuncionarioService service;
	
	@RequestMapping(path = "/cadastro")
	public String cadastro() {
		return "funcionario/cadastro";
	}
	@RequestMapping(path = "/enviar", method= RequestMethod.POST)
	public String cadastro(@Valid Funcionario funcionario, Errors erro, Model model) {
		service.adiciona(funcionario);
		model.addAttribute("funcionarios", dao.findAll());
		return "funcionario/lista";
	}
	
	@RequestMapping(path="/lista")
	public String lista(Model model) {
		model.addAttribute("funcionarios", dao.findAll());
		return "funcionario/lista";
	}
	
	@RequestMapping(path = "/filtrar")
	public String disponiveis(String filtro, Model model) {
		model.addAttribute("funcionarios", dao.findByNome(filtro));
		return "funcionario/lista";
	}
	
	@RequestMapping(path = "/atualizar")
	public String atualizar(String filtroCPF, Model model) {
		model.addAttribute("funcionario", dao.findByCpf(filtroCPF));
		return "funcionario/atualizar";
	}
	
	@RequestMapping(path = "/editar", method = RequestMethod.POST)
	public String editar(@Valid Funcionario funcionario, Errors erro, Model model) {
		this.dao.saveAndFlush(funcionario);
		model.addAttribute("funcionarios", dao.findAll());
		return "funcionario/lista";
	}
}
