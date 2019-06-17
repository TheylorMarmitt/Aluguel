package br.edu.unoesc.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.model.Carro;

@Service
public class CarroService {
	
	@Autowired
	private CarroDao dao;
	
	public void adiciona(Carro carro) {
		if(carro.getDataDeAquisicao() == null) {
			carro.setDataDeAquisicao(new Date());;
		}
		dao.saveAndFlush(carro);
	}
	
	public void setIndisponivel(Carro carro) {
		
		carro.setDisponivel(false);
		dao.save(carro);
	
	}
	
}

