package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Funcionario;

public interface FuncionarioDao extends JpaRepository<Funcionario, Long>{

	Funcionario findByCpf(String filtroCPF);

	Funcionario findByCodigo(Long codigo);
	
	Funcionario findByNome(String nome);
	
	@Query("select f from Funcionario f where f.logado = true")
	Funcionario findByLogadoTrue();
	
	@Query("select f from Funcionario f where f.dataDemissao = null")
	List<Funcionario> findAll();
	
	@Query("select f from Funcionario f where f.nome like %?1%")
	List<Funcionario> filtraByNome(String nome);

	@Query("select f from Funcionario f where f.email = ?1 and f.senha = ?2")
	Funcionario login(String email,String senha);

	@Query("select f from Funcionario f where f.email = ?1 and f.dataDemissao = null")
	Funcionario findByEmail(String email);
}

