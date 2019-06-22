package br.edu.unoesc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import br.edu.unoesc.dao.ConfiguracoesDao;
import br.edu.unoesc.dao.FilialDao;
import br.edu.unoesc.model.Configuracoes;
import br.edu.unoesc.model.Filial;

@Controller
@RequestMapping("/configuracoes")
public class ConfiguracoesController {

	@Autowired
	private ConfiguracoesDao dao;
	@Autowired
	private FilialDao filialDao;

	@RequestMapping(path = "/aluguel")
	public String index(Model model) {
		
		List<Filial> filiais = filialDao.findAll();
		
		Configuracoes configFilialPadrao = filiais.get(0).getConfiguracoes();

		model.addAttribute("filial", filiais);	
		model.addAttribute("filialConfig", configFilialPadrao);
		
		return "configuracoesAluguel/aluguel";
	
	}

	@RequestMapping(path = "/aluguel", method = RequestMethod.POST)
	public String index(Configuracoes configuracoes) {		
		
		configuracoes.setFilial(filialDao.findByCodigo(configuracoes.getFilial().getCodigo()));
		
		Filial filialBanco = configuracoes.getFilial();
		filialBanco.setConfiguracoes(configuracoes);
		
		dao.save(configuracoes);
		filialDao.save(filialBanco);
		
		return "configuracoesAluguel/aluguel";
	}
	
	@RequestMapping(path= "/configuracoes", produces = "application/json")
	public  @ResponseBody String getConfiguracoes(Long codFilial) {
		
		Gson json = new Gson();
		
		return  json.toJson(dao.findByFilial(codFilial));
		
	}
}
