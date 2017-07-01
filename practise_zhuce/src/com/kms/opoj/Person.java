package com.kms.opoj;

import java.io.Serializable;

public class Person implements Serializable{
	private String id;
	private String passwd;
	private String sex;
	private String[] hobby;
	private String description;
	public Person(String id,String passwd,String sex,String[] hobby,String description) {
		if (id!=null && id.length()>0) {
			this.id = id;
		}
		this.passwd = passwd;
		this.sex = sex;
		this.hobby = hobby;
		this.description = description;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHobby() {
		String str_hobby = "";
		for(int i=0;i<hobby.length;i++){
			str_hobby += hobby[i];
			if(i!=hobby.length-1) str_hobby+=",";
		}
		return str_hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
