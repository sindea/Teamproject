package com.movie.dto;

import org.apache.ibatis.type.Alias;

@Alias("CustomerDto")
public class CustomerDto {

	private int Useq;
	private String name;
	private String Nname;
	private String id;
	private String pw;
	private String birth;
	
	public int getUseq() {
		return Useq;
	}
	public void setUseq(int useq) {
		Useq = useq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNname() {
		return Nname;
	}
	public void setNname(String nname) {
		Nname = nname;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	@Override
	public String toString() {
		return "CustomerDto [Useq=" + Useq + ", name=" + name + ", Nname=" + Nname + ", id=" + id + ", pw=" + pw
				+ ", birth=" + birth + "]";
	}
}
