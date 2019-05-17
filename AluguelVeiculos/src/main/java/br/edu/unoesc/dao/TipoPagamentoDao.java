package br.edu.unoesc.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.unoesc.model.TipoPagamento;

public interface TipoPagamentoDao extends JpaRepository<TipoPagamento, Long>{

}
