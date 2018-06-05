package com.movie.dao;

import java.util.List;

import com.movie.dto.ViewingTime;

public interface ViewingTimeDao {
	public List<ViewingTime> chkSeat(String title);
}
