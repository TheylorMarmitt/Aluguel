package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.email.EmailUtil;
import br.edu.unoesc.model.Funcionario;
import br.edu.unoesc.service.FuncionarioService;

@Controller
@RequestMapping("")
public class IndexController {

	@Autowired
	private FuncionarioService service;
	
	@Autowired
	private CarroDao carroDao;
	
	@Autowired
	private FuncionarioDao funcionarioRepository;
	
	@RequestMapping(path = { "", "/" })
	public ModelAndView index() {
		Funcionario f = this.funcionarioRepository.findByLogadoTrue();
		if(f == null) {
			return new ModelAndView("index/login");
		}else {
			return new ModelAndView("dashboard/dashboard", "carros", carroDao.findTodosApropriados());
		}
		
	}
	
	@RequestMapping(path = { "", "/sair" })
	public String sair() {
		Funcionario funcionario = this.funcionarioRepository.findByLogadoTrue();
		if(funcionario != null) {
			funcionario.setLogado(false);
			this.funcionarioRepository.saveAndFlush(funcionario);
		}
		return "index/login";
	}
	
	@RequestMapping(path = { "", "/recuperarsenha" })
	public String recuperarSenha() {
		return "index/recuperarSenha";
	}
	
	@RequestMapping(path = "/entrar", method = RequestMethod.POST)
	public ModelAndView entrar(@Param(value = "email") String email, @Param(value = "senha") String senha) {
		if(service.verificaLogin(email, senha)) {
			return new ModelAndView("dashboard/dashboard", "carros", carroDao.findTodosApropriados());
		}else {
			return new ModelAndView("index/login");
		}
	}
	
	@RequestMapping(path = "/recuperar", method = RequestMethod.POST)
	public ModelAndView recuperar(@Param(value = "email") String email) {
		Funcionario funcionario = this.funcionarioRepository.findByEmail(email); 
		if(funcionario == null) {
			return new ModelAndView("index/recuperarSenha");
		}else {
			try {
				funcionario.setSenha(EmailUtil.enviarEmail(funcionario.getEmail()));
				this.funcionarioRepository.saveAndFlush(funcionario);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return new ModelAndView("index/login");
		}
		
	}

}