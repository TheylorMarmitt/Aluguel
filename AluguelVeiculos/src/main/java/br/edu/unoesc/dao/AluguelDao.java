package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Aluguel;

public interface AluguelDao extends JpaRepository<Aluguel, Long>{

	List<Aluguel> findByAtivoTrue();

	@Query("select a from Alugeul a where a.ativo = true and a.carro.placa like ?1%")
	List<Aluguel> findAtivoPlaca(String filtro);
	
//	@Query("select a from Aluguel a where codCarro = ?1%")
//	Aluguel buscaPorCarro(String filtro);
}
