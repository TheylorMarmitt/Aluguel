package br.edu.unoesc.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.Base64;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.service.CarroService;
import org.springframework.validation.Errors;

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
	public String cadastro(@Valid Carro carro, Errors erro, MultipartFile file,  Model model) throws ParseException {
		if(erro.hasErrors()) {
			return "carro/cadastro";
		}
		try {
			String img = Base64.getEncoder().encodeToString(file.getBytes());
			carro.setimagem(img);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		this.carroService.adiciona(carro);
		model.addAttribute("carros", carroDao.findByDisponivelTrue());
		return "carro/disponiveis";
	}
	
	@RequestMapping(path = "/atualizar")
	public String atualizar(String filtroPlaca, Model model) {
		model.addAttribute("carro", this.carroDao.findByPlaca(filtroPlaca));
		return "carro/atualizar";
	}
	
	@RequestMapping(path = "/editar", method = RequestMethod.POST)
	public String editar(Carro carro, Model model) throws ParseException {
		this.carroDao.saveAndFlush(carro);
		return "carro/atualizar";
	}
	
	@RequestMapping(path = "/disponiveis")
	public String disponiveis(Model model) {
		model.addAttribute("carros", carroDao.findByDisponivelTrue());
		return "carro/disponiveis";
	}
	
	@RequestMapping(path = "/filtrarDisponivel")
	public String disponiveis(String filtro, Model model) {
		model.addAttribute("carros", this.carroDao.findDisponiveisPlaca(filtro));
		return "carro/disponiveis";
	}
	
}

