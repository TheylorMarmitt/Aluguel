package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Configuracoes;

public interface ConfiguracoesDao extends JpaRepository<Configuracoes, Long> {
	
	@Query("select f.configuracoes from Filial f where f.codigo = ?1")
	Configuracoes findByFilial(Long codFilial);
	
	
}
