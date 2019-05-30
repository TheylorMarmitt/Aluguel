package br.edu.unoesc.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.model.Funcionario;

@Service
public class FuncionarioService {

	@Autowired
	private FuncionarioDao dao;
	
	public void adiciona(Funcionario funcionario) {
		if(funcionario.getDataAdmissao() == null) {
			funcionario.setDataAdmissao(new Date());
		}
		dao.save(funcionario);
	}
}
