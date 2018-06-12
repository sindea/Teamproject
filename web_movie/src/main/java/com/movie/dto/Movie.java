package com.movie.dto;

import org.apache.ibatis.type.Alias;

@Alias("Movie")
public class Movie {

	private int mSeq;
	private String mDaily;
	private int mRank;
	private	String mTitle;
	private int mChanges;
	
	public int getmSeq() {
		return mSeq;
	}
	public void setmSeq(int mSeq) {
		this.mSeq = mSeq;
	}
	public String getmDaily() {
		return mDaily;
	}
	public void setmDaily(String mDaily) {
		this.mDaily = mDaily;
	}
	public int getmRank() {
		return mRank;
	}
	public void setmRank(int mRank) {
		this.mRank = mRank;
	}
	public String getmTitle() {
		return mTitle;
	}
	public void setmTitle(String mTitle) {
		this.mTitle = mTitle;
	}
	public int getmChanges() {
		return mChanges;
	}
	public void setmChanges(int mChanges) {
		this.mChanges = mChanges;
	}
	
	@Override
	public String toString() {
		return "Movie [mSeq=" + mSeq + ", mDaily=" + mDaily + ", mRank=" + mRank + ", mTitle=" + mTitle + ", mChanges="
				+ mChanges + "]";
	}
	
}
