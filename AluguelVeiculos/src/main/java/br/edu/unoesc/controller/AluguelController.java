package br.edu.unoesc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import br.edu.unoesc.dao.AluguelDao;
import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.service.AluguelService;

@Controller
@RequestMapping("/aluguel")
public class AluguelController {

	@Autowired
	private AluguelDao aluguelDao;
	
	@Autowired
	private CarroDao carroDao;
	
	@Autowired
	private AluguelService serviceDao;

	@RequestMapping(path = "/cadastro")
	public String novo(Model model) {
		model.addAttribute("carros", this.carroDao.findByDisponivelTrue());
		
		return "aluguel/cadastro";
	}
	
	@RequestMapping(path = "/cadastrar/{codigo}")
	public String cadastrar(@PathVariable(value = "codigo")long codigo, Model model) {
		
		Carro carro = this.carroDao.findByCodigo(codigo);
		
		model.addAttribute("carro", carro);
		model.addAttribute("valoresTaxas", serviceDao.calculaValorTaxaEPorKm(carro));
		
		return "aluguel/alugarCarro";
		
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String cadastrar(@Valid Aluguel aluguel, Errors erro, Model model) {
		if(erro.hasErrors()) {
			return "aluguel/cadastro";
		}
		aluguel.setCliente(this.aluguelDao.findByClienteCpf(aluguel.getCliente().getCpf()));
		aluguel.setFuncionario(this.aluguelDao.findByFuncionarioCpf(aluguel.getFuncionario().getCpf()));
		
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
	
	@RequestMapping(path= "/atualizaValores/{codigo}")
	public String getValores(Carro carro) {
		
		Gson json = new Gson();
	
		return	json.toJson(serviceDao.calculaValorTaxaEPorKm(carro));
		
	}
	

}
