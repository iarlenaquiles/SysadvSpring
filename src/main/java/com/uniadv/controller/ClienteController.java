package com.uniadv.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uniadv.model.Cliente;
import com.uniadv.service.ClienteService;

@Controller
public class ClienteController {

	@Autowired
	private ClienteService service; // Injeta a classe de serviços

	// Vai para tela principal do CRUD onde são listados todos os clientes
	@RequestMapping("/")
	public String findAll(Model model) {
		model.addAttribute("clientes", service.findAll());
		return "lista-clientes";
	}

	// Vai para tela de adição do cliente
	@GetMapping("/clientes/add")
	public String add() {
		return "inserir-cliente";
	}

	// Salva o cliente
	@RequestMapping(value = "/clientes/salvar", method = RequestMethod.POST)
	@ResponseBody
	public String addCliente(@RequestParam(value = "nome") String nome) {
		Cliente novo = new Cliente();
		novo.setNome(nome);
		service.save(novo);
		return "Inserido com sucesso";
	}
	
	//Atualiza o cliente
	@RequestMapping(value = "/clientes/editar", method = RequestMethod.POST)
	@ResponseBody
	public String updateCliente(@RequestParam(value = "id") Integer id, @RequestParam(value = "nome") String nome) {
		service.save(service.findOne(id));
		return "Atualizado com sucesso";
	}

	// Exclui um cliente por seu ID 
	@GetMapping("/clientes/{id}")
	@ResponseBody
	public String delete(@PathVariable("id") Integer id) {
		service.delete(id);
		return "Removido com sucesso";
	}
	
	//Visualiza o cliente
	@GetMapping("/clientes/{id}/view")
	public String viwCliente(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("cliente", service.findOne(id));
		return "visualizar-cliente";
	}

	//Redireciona para o form de edição
	@GetMapping("/clientes/{id}/update")
	public String editar(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("cliente", service.findOne(id));
		return "editar-cliente";
	}

}
