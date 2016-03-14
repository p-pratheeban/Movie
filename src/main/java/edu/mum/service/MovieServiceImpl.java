package edu.mum.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.mum.domain.Movie;
import edu.mum.repository.MovieRepository;

@Service
public class MovieServiceImpl implements MovieService {
	@Resource
	MovieRepository movieRepository;

	@Transactional
	public Movie create(Movie movie) {
		return movieRepository.save(movie);

	}

	@Transactional
	public List<Movie> findAll() {
		return movieRepository.findAll();
	}

	@Transactional
	public Movie findById(int id) {
		return movieRepository.findOne(id);
	}

	@Transactional
	public Movie update(Movie movie) {
		Movie updatedMovie = movieRepository.findOne(movie.getId());
		updatedMovie.setTitle(movie.getTitle());
		updatedMovie.setYear(movie.getYear());
		updatedMovie.setRating(movie.getRating());
		updatedMovie.setGenre(movie.getGenre());
		updatedMovie.setDescription(movie.getDescription());
		updatedMovie.setActor(movie.getActor());
		updatedMovie.setDirector(movie.getDirector());
		movieRepository.save(updatedMovie);
		return updatedMovie;
	}

	@Transactional
	public Movie delete(int id) {
		Movie deletedMovie = movieRepository.findOne(id);
		movieRepository.delete(deletedMovie);
		return deletedMovie;
	}
	@Transactional
	public Movie getMovieByTitle(String title) {
		return movieRepository.findByTitle(title);
	}
}
