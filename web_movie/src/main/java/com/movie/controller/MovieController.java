package com.movie.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.movie.service.MovieService;

@Controller
public class MovieController {

	@Autowired
	MovieService mS;
	
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
	
	@RequestMapping("/moviedata.do")
	public void moviedata(@RequestParam HashMap<String, String> params){
		String daily = params.get("daily");
		mS.checkdate(daily);
		for(int i=0; i<10; i++) {
			String rank = params.get("data[boxOfficeResult][dailyBoxOfficeList]["+i+"][rank]");
			String mtitle = params.get("data[boxOfficeResult][dailyBoxOfficeList]["+i+"][movieNm]");
			System.out.print(rank);
			System.out.println(" " + mtitle);
		}
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
