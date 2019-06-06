package br.edu.unoesc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.ClienteDao;
import br.edu.unoesc.model.Cliente;

@Controller
@RequestMapping("/cliente")
public class ClienteController {
	
	@Autowired
	private ClienteDao clienteDao;

	@RequestMapping(path = "/cadastro")
	public String novo() {
		return "cliente/cadastro";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String lista(@Valid Cliente cliente, Errors erro,  Model model){
		if(erro.hasErrors()) {
			return "cliente/cadastro";
		}
		this.clienteDao.saveAndFlush(cliente);
		return "index/login";
	}
	
	@RequestMapping(path = "/atualizar")
	public String atualizar(String filtroCPF, Model model) {
		model.addAttribute("cliente", this.clienteDao.findByCpf(filtroCPF));
		return "cliente/atualizar";
	}
	
	@RequestMapping(path = "/editar", method = RequestMethod.POST)
	public String editar(@Valid Cliente cliente, Errors erro, Model model, String filtroCPF) {
		if(erro.hasErrors()) {
			model.addAttribute("cliente", this.clienteDao.findByCpf(filtroCPF));
			return "cliente/atualizar";
		}
		this.clienteDao.saveAndFlush(cliente);
		return "index/login";
	}
}
