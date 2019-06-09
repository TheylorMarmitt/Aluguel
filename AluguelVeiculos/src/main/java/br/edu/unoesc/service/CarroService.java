<<<<<<< HEAD
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
		dao.save(carro);
	}
}
=======
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
}
>>>>>>> 4ddf61de2c66996166351240298878635713b8c6
