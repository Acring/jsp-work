package com.acring.pojo;

public class Student{
	private String id;
	private String password;
	private String name;
	private int age;
	private String classes;

	public void setId(String id){
		this.id = id;
	}
	public void setPassword(String password){
		this.password = password;
	}

	public void setName(String name){
		this.name = name;
	}
	public void setAge(int age){
		this.age = age;
	}
	public void setClasses(String classes){
		this.classes = classes;
	}

	public String getId(){
		return this.id ;
	}
	public String getPassword(){
		return this.password;
	}

	public String getName(){
		return this.name;
	}
	public int getAge(){
		return this.age ;
	}
	public String getClasses(){
		return this.classes;
	}

}