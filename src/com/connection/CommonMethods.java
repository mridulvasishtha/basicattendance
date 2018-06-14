package com.connection;

import java.util.*;

public class CommonMethods 
{
	public static void createAllTables()
	{
		DConnection d1=new DConnection();
		d1.setData("create database if not exists attendance");
		d1.setData("create table if not exists admin(username varchar(255),password varchar(255))");
		Vector<String[]> v1=d1.getMultipleRows("select * from admin");
		if(v1.size()==0)
			d1.setData("insert into admin values('admin','admin')");
		d1.setData("create table if not exists users(userid int Not Null auto_increment,Firstname varchar(255),Lastname varchar(255),Username varchar(255) Not Null,Email varchar(255) Not Null,Password varchar(255) Not Null,Primary Key (userid))");
		//d1.setData("create table if not exists qvotes(userid int,qid int,vote int)");
		d1.setData("create table if not exists attending(userid int ,attend varchar(255),day int,month int,year int,firstname varchar(255),Primary Key (userid,day,month,year))");
	
	}
}

