package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.AluguelDao;
import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.service.AluguelService;

@Controller
@RequestMapping("/aluguel")
public class AluguelController {

	@Autowired
	private AluguelDao aluguelDao;
	
	@Autowired
	private AluguelService serviceDao;

	@RequestMapping(path = "/cadastro")
	public String novo(Model model) {
		model.addAttribute("carros", this.aluguelDao.findByCarroDisponivelTrue());
		return "aluguel/cadastro";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String cadastrar(Aluguel aluguel, String cpfFuncionario, String cpfCliente, Model model) {
		aluguel.setCliente(this.aluguelDao.findByClienteCpf(cpfCliente));
		aluguel.setFuncionario(this.aluguelDao.findByFuncionarioCpf(cpfFuncionario));
		
		this.serviceDao.adiciona(aluguel);
		model.addAttribute("alugueis", this.aluguelDao.findByAtivoTrue());
		return "aluguel/ativos";
	}
	
	@RequestMapping(path = "/ativos")
	public String ativos(Model model) {
		model.addAttribute("alugueis", this.aluguelDao.findByAtivoTrue());
		return "aluguel/ativos";
	}
	
	@RequestMapping(path = "/filtrar")
	public String ativosFiltrados(String filtro, Model model) {
		model.addAttribute("alugueis", this.aluguelDao.findAtivoPlaca(filtro));
		return "aluguel/ativos";
	}

}
