package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.service.FuncionarioService;

@Controller
@RequestMapping("")
public class IndexController {

	@Autowired
	private FuncionarioService service;
	
	@Autowired
	private CarroDao carroDao;
	
	@RequestMapping(path = { "", "/" })
	public String index() {
		return "index/login";
	}
	
	@RequestMapping(path = "/entrar", method = RequestMethod.POST)
	public ModelAndView entrar(@Param(value = "email") String email, @Param(value = "senha") String senha) {
		if(service.verificaLogin(email, senha)) {
			return new ModelAndView("dashboard/dashboard", "carros", carroDao.findAll());
		}else {
			return new ModelAndView("index/login");
		}
		
	}

}