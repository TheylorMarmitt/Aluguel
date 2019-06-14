package br.edu.unoesc.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import br.edu.unoesc.dao.AluguelDao;
import br.edu.unoesc.dao.CarroDao;
import br.edu.unoesc.dao.ClienteDao;
import br.edu.unoesc.model.Aluguel;
import br.edu.unoesc.model.Carro;
import br.edu.unoesc.service.AluguelService;
import br.edu.unoesc.util.Util;

@Controller
@RequestMapping("/aluguel")
public class AluguelController {

	@Autowired
	private AluguelDao aluguelDao;
	@Autowired
	private CarroDao carroDao;
	@Autowired
	private ClienteDao clienteDao;
	@Autowired
	private AluguelService serviceDao;

	@RequestMapping(path = "/cadastro")
	public String novo(Model model) {

		List<Carro> carros = this.carroDao.findByDisponivelTrue();
		
		model.addAttribute("carros", carros);
		model.addAttribute("valoresTaxas", serviceDao.calculaValorTaxaEPorKm(carros.get(0)));
		
		return "aluguel/cadastro";
		
	}

	@RequestMapping(path = "/cadastrar/{codigo}")
	public String cadastrar(Carro carro, Model model) {

		Carro carroBanco = this.carroDao.findByCodigo(carro.getCodigo());

		model.addAttribute("carro", carroBanco);
		model.addAttribute("valoresTaxas", serviceDao.calculaValorTaxaEPorKm(carro));

		return "aluguel/cadastro";

	}

	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String cadastrar(@Valid Aluguel aluguel, String carroId, String clienteCPF, Errors erro, Model model) {
		Carro carroAlugando = this.carroDao.findByCodigo(Long.parseLong(carroId)); 

		aluguel.setCarro(carroAlugando);
		aluguel.setCliente(this.clienteDao.findByCpf(clienteCPF));	
		
		if (erro.hasErrors()) {
			return "aluguel/cadastro";
		}
		
		carroAlugando.setDisponivel(false);
		this.carroDao.saveAndFlush(carroAlugando);
		aluguel.setFuncionario(Util.funcionarioLogado);
		this.serviceDao.adiciona(aluguel);
		
		model.addAttribute("alugueis", this.aluguelDao.findByAtivoTrue());
		return "aluguel/ativos";

	}

	@RequestMapping(path = "/ativos")
	public String ativos(Model model) {
		model.addAttribute("alugueis", this.aluguelDao.findByAtivoTrue());
		return "aluguel/ativos";
	}

	@RequestMapping(path = "/filtrar")
	public String ativosFiltrados(String filtro, Model model) {
		model.addAttribute("alugueis", this.aluguelDao.findAtivoPlaca(filtro));
		return "aluguel/ativos";
	}

	@RequestMapping(path = "/atualizaValores")
	public @ResponseBody String getValores(Long codCarro) {
		
		Carro carro = new Carro();
		carro.setCodigo(codCarro);
		
		Gson json = new Gson();

		return json.toJson(serviceDao.calculaValorTaxaEPorKm(carro));

	}

}
