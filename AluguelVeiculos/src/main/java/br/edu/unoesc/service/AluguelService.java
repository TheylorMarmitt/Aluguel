package br.edu.unoesc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.AluguelDao;
import br.edu.unoesc.model.Aluguel;

@Service
public class AluguelService {

	@Autowired
	private AluguelDao aluguelDao;
	
	public void adiciona(Aluguel aluguel) {
		if(!aluguel.isAtivo()) {
			aluguel.setAtivo(true);
		}
		this.aluguelDao.save(aluguel);
	}
}
