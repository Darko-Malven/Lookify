package com.codingdojo.emilio.repositorios;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.emilio.modelos.Cancion;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion,Long>{

	Cancion save(Cancion nuevaCancion);
	//Mostrar la lista d todas las canciones
	List<Cancion> findAll();
	//Borrar una cancion por su id
	void deleteById(Long id);
	//Encontrar todas las canciones de un artista
	List<Cancion> findByArtistaStartingWith(String Artista);
	//Mostrar toda la info de una cancion
	Optional<Cancion> findById(Long id);
	List<Cancion> findTop10ByOrderByCalificacionDesc();
	
}
