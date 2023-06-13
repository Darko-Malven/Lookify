package com.codingdojo.leonel.controladores;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.leonel.modelos.Cancion;
import com.codingdojo.leonel.servicios.Servicios;

@Controller
public class ControladorBase {

	@Autowired
	private Servicios servicio;
	
	@GetMapping("/")
	public String principal() {
		
		return "principal.jsp";
	}
	
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		
		List<Cancion> listaCanciones = servicio.encontrarCancion();
		model.addAttribute("canciones", listaCanciones);
		
		return "dashboard.jsp";	
	}
	
	@GetMapping("/songs/new")
	public String cancionNueva(@ModelAttribute("cancion") Cancion cancion){
		
		
		return "cancionNueva.jsp";
	}
	
	@PostMapping("/songs/new")
	public String añadirCancion(@Valid @ModelAttribute("cancion") Cancion cancion,
								BindingResult result) {
		
		if(result.hasErrors()) {
			return"cancionNueva.jsp";
		}else {
			servicio.guardar(cancion);
			return "redirect:/dashboard";			
		}
		
	}
	
	@GetMapping("/search/topTen")
	public String topCanciones(Model model) {
		
		List<Cancion> cancionesTop = servicio.top();
		model.addAttribute("cancion", cancionesTop);
		
		return "topCanciones.jsp";
	}
	
	@DeleteMapping("/borrar/{id}")
	public String borrarCanciones(@PathVariable("id") Long id) {
		
		servicio.borrarCancion(id);
		
		return "redirect:/dashboard";
	}
	
	@GetMapping("/songs/{id}")
	public String mostrarCancion(@PathVariable("id") Long id,
								 Model model) {
		
		Cancion pathCancion = servicio.buscarId(id);
		model.addAttribute("cancion", pathCancion);
		
		return "mostrarCancion.jsp";
				
	}
	
	@PostMapping("/search")
	public String buscar(@RequestParam("artista") String artista) {
		if(artista.equals("")) {
			return "redirect:/dashboard";
		}
		
		return"redirect:/search/"+artista;
	}
	
	@GetMapping("/search/{artista}")
	public String buscarArtista(@PathVariable("artista")String artista, Model model) {
		model.addAttribute("artista", servicio.encontrarArtista(artista));
		model.addAttribute("art", artista);
		return "artista.jsp";
	}

	
	
}
