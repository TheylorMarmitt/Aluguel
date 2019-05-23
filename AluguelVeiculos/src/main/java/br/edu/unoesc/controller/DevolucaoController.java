package br.edu.unoesc.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String lista(Devolucao devolucao, String placa, String dataChegada,  Model model) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = format.parse(dataChegada);
		devolucao.setDataChegada(parsed);
		// impementar calculo em model
		devolucao.setValorTotal(0.0);
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
