package br.edu.unoesc.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String lista(Cliente cliente, String dataNasc,  Model model) throws ParseException {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = format.parse(dataNasc);
		cliente.setDataNascimento(parsed);
		this.clienteDao.saveAndFlush(cliente);
		return "index/login";
	}
	
}
