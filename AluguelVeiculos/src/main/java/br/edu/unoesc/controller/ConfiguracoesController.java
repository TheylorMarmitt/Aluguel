package br.edu.unoesc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	public String index(Configuracoes configuracao) {

		Filial filialBanco = filialDao.findOne(configuracao.getFilial());
		filialBanco.setConfiguracoes(configuracao);

		dao.save(configuracao);
		filialDao.saveAndFlush(filialBanco);
		
		return "configuracoesAluguel/aluguel";
	}
}
