package br.edu.unoesc.controller;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.service.CarroService;

@Controller
@RequestMapping("/carro")
public class CarroController {

	@Autowired
	private CarroDao carroDao;

	@Autowired
	private CarroService carroService;
	
	@RequestMapping(path = "/cadastro")
	public String novo() {
		return "carro/cadastro";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String cadastro(Carro carro,  Model model) throws ParseException {
		this.carroService.adiciona(carro);
		return "index/login";
	}
}
