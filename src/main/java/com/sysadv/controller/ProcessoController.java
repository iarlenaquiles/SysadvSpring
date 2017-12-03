package com.sysadv.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sysadv.cache.ProcessoCache;
import com.sysadv.model.Cliente;
import com.sysadv.model.Processo;
import com.sysadv.repository.ProcessoRepository;

@Controller
public class ProcessoController {

	@Autowired
	private ProcessoRepository processoRepository;
	
	@Autowired
	private ProcessoCache processoCache;

	// Chama a lista de processos
	@GetMapping("/processos")
	public String listaProcessos(Model model) {
		Iterable<Processo> lista = processoCache.getAll();
		model.addAttribute("processos", lista);
		return "lista-processos";
	}

	// Vai para tela de adição do processo
	@GetMapping("/processos/add")
	public String insereForm(Model model) {
		model.addAttribute("processo", new Processo());
		model.addAttribute("cliente", new Cliente());
		model.addAttribute("acao", "/processos");
		return "inserir-processo";
	}

	// Atualizar Processo
	@RequestMapping("/processos/{id}/update")
	public String alteraForm(@PathVariable Integer id, Model model) {
		Processo p = processoCache.getProcesso(id);
		model.addAttribute("processo", p);
		model.addAttribute("acao", "/processos");
		return "editar-processo";
	}

	// Salvar processo no banco
	@PostMapping("/processos")
	public String addProcesso(@Valid Processo processo, BindingResult result, Model model,
			RedirectAttributes redirect) {
		if (result.hasErrors()) {
			model.addAttribute("processo", processo);
			model.addAttribute("acao", "/processos");

			if (processo.getId() == null) {
				return "inserir-processo";
			} else {
				return "editar-processo";
			}
		}

		if (processo.getId() == null) {
			processoRepository.save(processo);
			redirect.addFlashAttribute("mensagem", "Processo inserido com sucesso!");
		} else {
			processoRepository.save(processo);
			redirect.addFlashAttribute("mensagem", "Processo atualizado com sucesso!");
		}
		return "redirect:/processos";
	}

	// Deletar processo
	@GetMapping("/processos/{id}/delete")
	public String deleteProcesso(@PathVariable Integer id, RedirectAttributes redirect) {
		Processo processo = new Processo(id);
		processoRepository.delete(processo);
		redirect.addFlashAttribute("mensagem", "Processo removido com sucesso!");
		return "redirect:/processos";
	}

	// Visualizar processo
	@GetMapping("/processos/{id}/view")
	public String viewProcesso(@PathVariable Integer id, Model model) {
		Processo processo = processoCache.getProcesso(id);
		model.addAttribute("processo", processo);
		return "visualizar-processo";
	}

	@RequestMapping("/qtdProcessos")
	public @ResponseBody Long qtdClientes() {
		return processoRepository.count();
	}
}
