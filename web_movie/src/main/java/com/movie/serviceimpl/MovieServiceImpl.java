package com.movie.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.movie.dao.MovieDao;
import com.movie.dto.Movie;
import com.movie.service.MovieService;

@Service("movieService")
public class MovieServiceImpl implements MovieService {

	@Autowired
	MovieDao dao;
	
	@Override
	public Movie checkdate(String daily) {
		
		return dao.checkdate(daily);
	}

		

}
