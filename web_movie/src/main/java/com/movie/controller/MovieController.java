package com.movie.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MovieController {

	@RequestMapping("/movielist.do")
	public ModelAndView movie(){
		ModelAndView mo = new ModelAndView();
		mo.setViewName("movie/movieList");
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String today = df.format(date);
		int yesterday = Integer.parseInt(today)-1;
		String result = String.valueOf(yesterday);
		mo.addObject("today", result);
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
