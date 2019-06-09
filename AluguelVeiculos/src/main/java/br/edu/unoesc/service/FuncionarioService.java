<<<<<<< HEAD
package br.edu.unoesc.service;

import java.util.Date;
import java.util.HashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.FilialDao;
import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.model.Filial;
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
=======
package br.edu.unoesc.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.model.Funcionario;

@Service
public class FuncionarioService {

	@Autowired
	private FuncionarioDao repository;
	
	public void adiciona(Funcionario funcionario) {
		if(funcionario.getDataAdmissao() == null) {
			funcionario.setDataAdmissao(new Date());
		}
		repository.save(funcionario);
	}
	
	public boolean verificaLogin(String email, String senha) {
		Funcionario funcionarioLogando = repository.login(email, senha);
		if(funcionarioLogando == null) {
			return false;
		}else {
			if(funcionarioLogando.getSenha().contentEquals(senha)){
				return true;
			}
		}
		return false;
	}
}
>>>>>>> 4ddf61de2c66996166351240298878635713b8c6
