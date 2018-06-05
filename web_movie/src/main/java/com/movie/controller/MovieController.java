package com.movie.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieController {

	@RequestMapping("/movielist.do")
	public ModelAndView movie(){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("movie/movieList");
		return mo;
	}
		
	
	
}
