package br.edu.unoesc.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.model.Funcionario;

public interface AluguelDao extends JpaRepository<Aluguel, Long>{

	List<Aluguel> findByAtivoTrue();
	
	List<Carro> findByCarroDisponivelTrue();
	
	Funcionario findByFuncionarioCpf(String cpf);

	@Query("select a from Aluguel a where a.ativo = true and a.carro.placa like ?1%")
	List<Aluguel> findAtivoPlaca(String filtro);
	
	Aluguel findByCarroCodigo(long codigo);
	
	@Query("select a from Aluguel a where carro.placa = ?1")
	Aluguel findByCarroPlaca(String placa);
}
