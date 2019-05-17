package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import br.edu.unoesc.model.Cliente;

public interface ClienteDao extends JpaRepository<Cliente, Long> {
	
	List<Cliente> findByNome(String nome);

	Cliente findByCpf(String filtroCPF);

}
