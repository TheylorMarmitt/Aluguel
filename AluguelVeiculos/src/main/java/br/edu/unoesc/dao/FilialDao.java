package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.Filial;

public interface FilialDao extends JpaRepository<Filial, Long> {

	
}
