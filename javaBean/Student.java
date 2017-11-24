package com.acring.pojo;
import java.util.regex.*;

public class Student{
	private String id;
	private String password;
	private String name;
	private int age;
	private String classes;
	public int errorCode = 100;

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

	public boolean checkId(){
		String pattern = "^\\d{10}$";
		if(this.id == null){
			this.errorCode = 101;
			System.out.println("null");
			return false;
		}
		if(!Pattern.matches(pattern, this.id)){
			System.out.println(this.id);	
			this.errorCode = 101;
			return false;
		}else{
			return true;
		}
	}

	public boolean checkPassword(){
		String pattern = "^\\w{6}$";
		if(this.password == null){
			this.errorCode = 102;
			return false;
		}
		if(!Pattern.matches(pattern, this.password)){
			this.errorCode = 102;
			return false;
		}else{
			return true;
		}
	}

}
