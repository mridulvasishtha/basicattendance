package com.pojo;

import java.util.Vector;

import com.connection.DConnection;

public class Admins {

	private String username;
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean checkAdmin()
	{
		DConnection dc=new DConnection();
		Vector<String> v1 =dc.getSingleRow("select * from admin where username='"+username+"' and Password='"+password+"' ");
		if(v1.size()==0)
			return false;
		else
		{ 
			username=v1.elementAt(0);
			password=v1.elementAt(1);
			return true;
		}
	}
	public static int updateAdmin(String choice,String change)
	{
		DConnection dc=new DConnection();
		int v1 =dc.setData("update admin set "+choice+"='"+change+"'");
		return v1;
		
	}
	
}
