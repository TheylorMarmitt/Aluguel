package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Funcionario;

public interface FuncionarioDao extends JpaRepository<Funcionario, Long>{

	@Query("select * from Funcionario f where f.dataDemissao is null and email = ?1%")
	Funcionario verificaEmail(String filtro);
	
}
