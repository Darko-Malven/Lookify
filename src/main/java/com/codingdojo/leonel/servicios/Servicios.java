package com.codingdojo.leonel.servicios;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.leonel.modelos.Cancion;
import com.codingdojo.leonel.repositorios.RepositorioCanciones;

@Service
public class Servicios {
	
	@Autowired
	private RepositorioCanciones repoCanciones;
	
	public Cancion guardar(Cancion nuevaCancion) {
		return repoCanciones.save(nuevaCancion);
	}
	
	public List<Cancion> encontrarCancion(){
		return repoCanciones.findAll();
	}
	public void borrarCancion(Long id) {
		repoCanciones.deleteById(id);
	}
	
	public List<Cancion> encontrarArtista(String artista){
		return repoCanciones.findByArtistaStartingWith(artista);
	}
	public List<Cancion> top() {
		return repoCanciones.findTop10ByOrderByCalificacionDesc();
	}
	
	public Cancion buscarId(long id) {
		Optional<Cancion> cancion = repoCanciones.findById(id);
		if(cancion.isPresent()) {
			return cancion.get();
		}else {
			return null;
		}
		
	}
	
}

