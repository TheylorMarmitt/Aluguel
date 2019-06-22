package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.model.Devolucao;

public interface DevolucaoDao extends JpaRepository<Devolucao, Long> {
	
	Aluguel findByAluguelCarroPlaca(String placa);
}
