package br.edu.unoesc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.AluguelDao;
import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.dao.DevolucaoDao;
import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.model.Devolucao;

@Controller
@RequestMapping("/devolucao")
public class DevolucaoController {

	@Autowired
	private DevolucaoDao devolucaoDao;
	
	@Autowired
	private AluguelDao aluguelDao;
	
	@Autowired
	private CarroDao carroDao;
	
	@RequestMapping(path = "/devolucao")
	public String novo() {
		return "devolucao/devolver";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String lista(@Valid Devolucao devolucao, Errors erro, String placa, Model model) {
		if(erro.hasErrors()) {
			return "devolucao/devolver";
		}
		
		// impementar calculo em model
		devolucao.calculaValor();
		devolucaoDao.saveAndFlush(devolucao);
		devolucao.disponibilizaCarro();
		
		Aluguel a = this.devolucaoDao.findByAluguelCarroPlaca(placa);
		a.setAtivo(false);
		this.aluguelDao.saveAndFlush(a);
		
		Carro c = a.getCarro();
		this.carroDao.saveAndFlush(c);
		
		model.addAttribute("devolucao", devolucao);
		return "devolucao/devolvido";
	}
	
	// somente para teste
	@RequestMapping(path = "/devolvido")
	public String teste() {
		return "devolucao/devolvido";
	}
}
