package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.unoesc.dao.AluguelDao;

@Controller
@RequestMapping("/aluguel")
public class AluguelController {

	@Autowired
	private AluguelDao aluguelDao;

	@RequestMapping(path = "/cadastro")
	public String novo() {
		return "aluguel/cadastro";
	}
	
	@RequestMapping(path = "/ativos")
	public String ativos() {
		return "aluguel/ativos";
	}
	
	@RequestMapping(path = "/filtrar")
	public String ativosFiltrados(String filtro, Model model) {
		model.addAttribute("alugueis", this.aluguelDao.findAtivoPlaca(filtro));
		return "aluguel/ativos";
	}

}
