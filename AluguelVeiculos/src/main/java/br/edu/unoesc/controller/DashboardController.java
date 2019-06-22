package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.unoesc.dao.CarroDao;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {
	
	@Autowired
	CarroDao carroDao;
	
	@RequestMapping(path = {"/", ""})
	public String dashboard(Model model) {
		model.addAttribute("carros", carroDao.findAll());
		return "dashboard/dashboard";
	}
	
}
