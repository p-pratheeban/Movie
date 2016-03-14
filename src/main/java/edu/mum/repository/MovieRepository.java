package edu.mum.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.mum.domain.Movie;

public interface MovieRepository extends JpaRepository<Movie, Integer> {
	Movie save(Movie movie);
	List<Movie> findAll();
	Movie findOne(Integer id);
	Movie findByTitle(String title);
}
