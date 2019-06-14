package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Funcionario;

public interface FuncionarioDao extends JpaRepository<Funcionario, Long>{

	Funcionario findByCpf(String filtroCPF);

	Funcionario findByNome(String nome);
	
	Funcionario findByLogadoTrue();
	
	@Query("select f from Funcionario f where f.nome like %?1%")
	List<Funcionario> filtraByNome(String nome);

	@Query("select f from Funcionario f where f.email = ?1 and f.senha = ?2")
	Funcionario login(String email,String senha);

	Funcionario findByEmail(String email);
}

