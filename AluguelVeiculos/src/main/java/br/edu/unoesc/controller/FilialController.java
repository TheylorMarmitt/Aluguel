package br.edu.unoesc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.xml.bind.v2.TODO;

import br.edu.unoesc.dao.FilialDao;
import br.edu.unoesc.model.Filial;

@Controller
@RequestMapping("/filial")
public class FilialController {

	@Autowired
	private FilialDao dao;
	
	@RequestMapping(path="/nova")
	public String nova() {
		return "filial/nova";
	}
	
	@RequestMapping(path="/nova", method=RequestMethod.POST)
	public String nova(Filial filial) {
		
		//TODO pensar no que fazer
		dao.save(filial);
		return "";
	}
}
