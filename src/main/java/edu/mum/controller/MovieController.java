package edu.mum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.mum.domain.Movie;
import edu.mum.service.MovieService;

@Controller
public class MovieController {
	@Autowired
	MovieService movieService;

	@RequestMapping("/")
	public String redirectRoot() {
		return "redirect:/movies";
	}

	@RequestMapping(value = "/movie", method = RequestMethod.GET)
	public String newMoviePage(Model model) {
		model.addAttribute("movieValues", new Movie());
		return "addMovie";
	}

	@RequestMapping(value = "/movies", method = RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("movies", movieService.findAll());
		return "movieList";
	}

	@RequestMapping(value = "/movie/create", method = RequestMethod.POST)
	public String addMovie(@ModelAttribute("movieValues") Movie movie) {
		movieService.create(movie);
		return "redirect:/movies";
	}

	@RequestMapping(value = "/movie/edit/{id}", method = RequestMethod.GET)
	public String get(@PathVariable int id, Model model) {
		Movie movie = movieService.findById(id);
		System.out.println(movie.getTitle());
		model.addAttribute("movieDetails", movie);
		return "movieDetail";
	}
	@RequestMapping(value = "/movie/edit/{id}", method = RequestMethod.POST)
	public String update(@ModelAttribute("movieDetails") Movie movie,@PathVariable int id) {
		movieService.update(movie);
		return "redirect:/movies";
	}
	@RequestMapping(value = "/movie/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		movieService.delete(id);
		return "redirect:/movies";
	}
	@RequestMapping(value = "/getmovie", method = RequestMethod.GET)
	public String getByTitlePage() {
		return "getMovie";
	}
	@RequestMapping(value = "movie/getbytitle", method = RequestMethod.GET)
	public String getByTitle(@RequestParam("title") String title, Model model) {
		System.out.println(title);
		model.addAttribute("movies", movieService.getMovieByTitle(title));
		return "movieList";
	}
}
