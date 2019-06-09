package br.edu.unoesc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.FilialDao;
import br.edu.unoesc.model.Filial;

@Service
public class FilialService {
	@Autowired
	private FilialDao dao;

	public void salvaOuAtualiza(Filial filial) {
		
		if(filial.getCodigo() != null) {
			Filial filialBanco = dao.findById(filial.getCodigo()).get();
			filialBanco.setEndereco(filial.getEndereco());
			filialBanco.setNome(filial.getNome());
			filialBanco.setCnpj(filial.getCnpj());
			dao.save(filialBanco);
		} 
		else {
			dao.save(filial);
		}
		
		
	}
}
