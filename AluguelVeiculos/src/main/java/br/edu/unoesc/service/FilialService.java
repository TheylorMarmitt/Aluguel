package br.edu.unoesc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.ConfiguracoesDao;
import br.edu.unoesc.dao.FilialDao;
import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.model.Filial;

@Service
public class FilialService {
	@Autowired
	private FilialDao dao;
	@Autowired
	private ConfiguracoesDao configuracoesDao;
	@Autowired
	private FuncionarioDao funcionarioDao;

	public void salvaOuAtualiza(Filial filial) {
		
		if(filial.getCodigo() != null) {
			Filial filialBanco = dao.findById(filial.getCodigo()).get();
			filialBanco.setEndereco(filial.getEndereco());
			filialBanco.setNome(filial.getNome());
			filialBanco.setCnpj(filial.getCnpj());
			dao.save(filialBanco);
		} 
		else {
			configuracoesDao.save(filial.getConfiguracoes());
			dao.save(filial);
		}
		
		
	}
}
