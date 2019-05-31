package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.Configuracoes;

public interface ConfiguracoesDao extends JpaRepository<Configuracoes, Long> {
	
}
