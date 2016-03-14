package edu.mum.service;

import java.util.List;

import edu.mum.domain.Movie;

public interface MovieService {
	Movie create(Movie movie);
	List<Movie> findAll();
	Movie findById(int id);
	Movie update(Movie movie);
	Movie delete(int id); 
	Movie getMovieByTitle(String title);
}
