package br.edu.unoesc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import br.edu.unoesc.dao.AluguelDao;
import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.dao.ClienteDao;
import br.edu.unoesc.dao.ConfiguracoesDao;
import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.model.Configuracoes;
import br.edu.unoesc.model.Funcionario;
import br.edu.unoesc.vo.ValoresTaxaVO;

@Service
public class AluguelService {

	@Autowired
	private AluguelDao dao;
	@Autowired
	private CarroDao carroDao;
	@Autowired
	private ClienteDao clienteDao;
	@Autowired
	private CarroService carroService;
	
	@Autowired
	private ConfiguracoesDao configuracoesDao;

//	public void adiciona(Aluguel aluguel) {
//		
//		Aluguel novoAluguel = ajustaReferencias(aluguel);
//		
//		dao.save(novoAluguel);
//		carroService.setIndisponivel(novoAluguel.getCarro());
//		
//	}
	
	public void adiciona(Aluguel aluguel) {
		if(!aluguel.isAtivo()) {
			aluguel.setAtivo(true);
		}
		this.dao.save(aluguel);
	}

	private Aluguel ajustaReferencias(Aluguel aluguel) {
		
		Aluguel novoAluguel = new Aluguel();
		novoAluguel.setCarro(carroDao.findByCodigo(aluguel.getCarro().getCodigo()));
		novoAluguel.setCliente(clienteDao.findByCpf(aluguel.getCliente().getCpf()));
		novoAluguel.setValor(aluguel.getValor());
		novoAluguel.setAtivo(true);
		novoAluguel.setTaxa(aluguel.getTaxa());
		novoAluguel.setDataAluguel(aluguel.getDataAluguel());
		novoAluguel.setKmSaida(aluguel.getKmSaida());
		
		Funcionario funcionario = new Funcionario();
		funcionario.setCodigo(2l);
		novoAluguel.setFuncionario(funcionario);
		
		return novoAluguel;
	
	}
	
	public ValoresTaxaVO calculaValorTaxaEPorKm(Carro carro) {

		if (carro.getValor() == null) {

			carro = carroDao.findByCodigo(carro.getCodigo());

		}

		Configuracoes configFilial = configuracoesDao.findByFilial(1l);

		return new ValoresTaxaVO(carro.getValor(), configFilial);

	}
}
