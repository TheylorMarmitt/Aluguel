package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Filial;

public interface FilialDao extends JpaRepository<Filial, Long>{
	
	@Query("select f from Filial f where f = ?1")
	Filial findOne(Filial filial);
}
