package com.uniadv.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.uniadv.model.Cliente;
import com.uniadv.repository.ClienteRepository;

@Controller
public class ClienteController {

	@Autowired
	private ClienteRepository clienteRepository; // Injeta a classe repositorio

	// Chama a lista dos clientes
	@GetMapping("/clientes")
	public String listaClientes(Model model) {
		Iterable<Cliente> lista = clienteRepository.findAll(new Sort(new Sort.Order(Sort.Direction.ASC, "nome")));
		model.addAttribute("clientes", lista);
		return "lista-clientes";
	}

	// Vai para tela de adição do cliente
	@GetMapping("/clientes/add")
	public String insereForm(Model model) {
		model.addAttribute("cliente", new Cliente());
		model.addAttribute("acao", "/clientes");
		return "inserir-cliente";
	}

	// Atualizar cliente
	@RequestMapping("/clientes/{id}/update")
	public String alteraForm(@PathVariable Integer id, Model model) {
		Cliente c = clienteRepository.findOne(id);
		model.addAttribute("cliente", c);
		model.addAttribute("acao", "/clientes");
		return "editar-cliente";
	}

	// Salvar cliente no banco
	@PostMapping("/clientes")
	public String addCliente(@Valid Cliente cliente, BindingResult result, Model model, RedirectAttributes redirect) {
		if (result.hasErrors()) {
			model.addAttribute("cliente", cliente);
			model.addAttribute("acao", "/clientes");
			if (cliente.getId() == null) {
				return "inserir-cliente";
			} else {
				return "editar-cliente";
			}
		}

		if (cliente.getId() == null) {
			clienteRepository.save(cliente);
			redirect.addFlashAttribute("mensagem", "Cliente inserido com sucesso!");
		} else {
			clienteRepository.save(cliente);
			redirect.addFlashAttribute("mensagem", "Cliente atualizado com sucesso!");
		}
		return "redirect:/clientes";
	}

	// Deletar cliente
	@GetMapping("/clientes/{id}/delete")
	public String deleteCliente(@PathVariable Integer id, RedirectAttributes redirect) {
		Cliente cliente = new Cliente(id);
		clienteRepository.delete(cliente);
		redirect.addFlashAttribute("mensagem", "Cliente removido com sucesso!");
		return "redirect:/clientes";
	}

	// Visualizar cliente
	@GetMapping("/clientes/{id}/view")
	public String viewCliente(@PathVariable Integer id, Model model) {
		Cliente cliente = clienteRepository.findOne(id);
		model.addAttribute("cliente", cliente);
		return "visualizar-cliente";
	}

	@RequestMapping("/getClientes")
	public @ResponseBody List<Cliente> getClientes() {
		List<Cliente> todos = clienteRepository.findAll();
		return todos;
	}
	
	@RequestMapping("/qtdClientes")
	public @ResponseBody Long qtdClientes(){
		return clienteRepository.count();
	}

}
