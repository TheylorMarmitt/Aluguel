package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Funcionario;

public interface FuncionarioDao extends JpaRepository<Funcionario, Long>{

	Funcionario findByCpf(String filtroCPF);

	@Query("select f from Funcionario f where f.dataDemissao = null and email = :email")
	Funcionario verificaEmail(String email);
	
}
