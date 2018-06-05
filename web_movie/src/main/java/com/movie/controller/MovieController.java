package com.movie.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.movie.dto.ViewingTime;

@Controller
public class MovieController {

	@RequestMapping("/movielist.do")
	public ModelAndView movie(){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("movie/movieList");
		return mo;
	}
		
	@RequestMapping("/movieReservation.do")
	public ModelAndView movieReservation() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("movie/movieReservation");
		return mv;
	}
	
//	@RequestMapping("/chkSeat.do")
//	public List<ViewingTime> chkSeat() {
//		
//		List<ViewingTime> result = 
//		
//		return 
//	}
	
}
