package br.edu.unoesc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.unoesc.dao.AluguelDao;
import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.dao.ConfiguracoesDao;
import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.model.Configuracoes;
import br.edu.unoesc.vo.ValoresTaxaVO;

@Service
public class AluguelService {

	@Autowired
	private AluguelDao aluguelDao;
	@Autowired
	private CarroDao carroDao;
	
	@Autowired
	private ConfiguracoesDao configuracoesDao;
	
	public void adiciona(Aluguel aluguel) {
		if(!aluguel.isAtivo()) {
			aluguel.setAtivo(true);
		}
		this.aluguelDao.save(aluguel);
	}
	
	public ValoresTaxaVO calculaValorTaxaEPorKm(Carro carro) {
		
		if(carro.getValor() == null) {

			carro = carroDao.findByCodigo(carro.getCodigo());
		
		}
		
		Configuracoes configFilial = configuracoesDao.findByFilial(1l);
		
		return new ValoresTaxaVO(carro.getValor(), configFilial);
		
	}
}
