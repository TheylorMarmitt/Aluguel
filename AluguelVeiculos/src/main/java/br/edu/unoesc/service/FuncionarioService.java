package br.edu.unoesc.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.FuncionarioDao;
import br.edu.unoesc.model.Funcionario;
import br.edu.unoesc.util.Util;

@Service
public class FuncionarioService {

	@Autowired
	private FuncionarioDao dao;
	
	
	public void atualiza(Funcionario funcionario) {
		
		Funcionario funcionarioBanco = dao.findById(funcionario.getCodigo()).get();
		
		funcionarioBanco.setCpf(funcionario.getCpf());
		funcionarioBanco.setDataAdmissao(funcionario.getDataAdmissao());
		funcionarioBanco.setDataDemissao(funcionario.getDataDemissao());
		funcionarioBanco.setDataNascimento(funcionario.getDataNascimento());
		funcionarioBanco.setEmail(funcionario.getEmail());
		funcionarioBanco.setFilial(funcionario.getFilial());
		funcionarioBanco.setNome(funcionario.getNome());
		funcionarioBanco.setSenha(funcionario.getSenha());
		funcionarioBanco.setSobrenome(funcionario.getSobrenome());
		funcionarioBanco.setTelefone(funcionario.getTelefone());
		
		dao.save(funcionarioBanco);
		
	}
	
	public void adiciona(Funcionario funcionario) {
		
		if(funcionario.getDataAdmissao() == null) {
			funcionario.setDataAdmissao(new Date());
		}
		
		dao.save(funcionario);
	}
	
	public boolean verificaLogin(String email, String senha) {
		if(dao.findAll().isEmpty()) {
			if(email.equals("admin") && senha.equals("admin")) {
				return true;
			}
		}else {
			Funcionario funcionarioLogando = dao.login(email, senha);
			if(funcionarioLogando == null) {
				return false;
			}else {
				if(funcionarioLogando.getSenha().contentEquals(senha)){
					Util.funcionarioLogado = funcionarioLogando; 
					return true;
				}
			}
		}
		return false;
	}
}
