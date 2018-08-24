package br.com.fiap.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.jpa.dao.BebidaDAO;
import br.com.fiap.spring.model.Bebida;

@Controller
@RequestMapping("/bebida")
public class BebidaController {
	
	@Autowired
	private BebidaDAO bebidaDAO;
	
	@GetMapping("cadastrar")
	public String abrirForm() {
		return "bebida/cadastrar";
	}
	
	@GetMapping("listar")
	public ModelAndView listar(Bebida bebida) {
		ModelAndView retorno = new ModelAndView("bebida/lista");
		List<Bebida> bebidas = new ArrayList<>();
		bebidas.addAll(bebidaDAO.list());
		retorno.addObject("bebidas", bebidas);
		return retorno;
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView processarForm(Bebida bebida, RedirectAttributes r) {
									//Redirect envia para uma URL
		ModelAndView retorno = new ModelAndView("redirect:/bebida/cadastrar");
		bebidaDAO.create(bebida);
		r.addFlashAttribute("bebida", bebida);
		r.addFlashAttribute("msg", "Bebida cadastrada!!!!");
		return retorno;
	}
	
	@GetMapping("editar/{id}")
	public ModelAndView abrirEdicao(@PathVariable("id") int codigo) {
		return new ModelAndView("bebida/editar").addObject("bebida", bebidaDAO.read(codigo));
	}

	
}
