package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Carro;

public interface CarroDao extends JpaRepository<Carro, Long>{

	List<Carro> findByDisponivelTrue();

	@Query("select c from Carro c where c.placa like ?1% and c.dataDeDesapropriacao is null")
	Carro findByPlacaApropriado(String filtroPlaca);
	
	@Query("select c from Carro c where c.dataDeDesapropriacao is null")
	List<Carro> findTodosApropriados();
	
	Carro findByPlaca(String filtroPlaca);

	@Query("select c from Carro c where c.disponivel = true and c.placa like ?1%")
	List<Carro> findDisponiveisPlaca(String filtro);

	Carro findByCodigo(Long codigo);
	
	
	
	// caso não der certo
	//select * from Carro c where c.dataDesapropriacao IS null and disponivel = true
}
