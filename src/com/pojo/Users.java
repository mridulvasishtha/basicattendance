package com.pojo;

import java.sql.SQLException;
import java.util.*;

import com.connection.DConnection;
public class Users 
{
	private int userid;
	private String firstname,lastname,username,email,password;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int insert()
	{
		DConnection dc=new DConnection();
		int cnt=dc.setData("insert into users values('"+userid+"','"+firstname+"','"+lastname+"','"+username+"','"+email+"','"+password+"')");
		return cnt;
	}
	public boolean check()
	{
		DConnection dc=new DConnection();
		Vector<String> v1 =dc.getSingleRow("select * from users where username='"+username+"' and Password='"+password+"' ");
		if(v1.size()==0)
			return false;
		else
		{ 
			userid=Integer.parseInt(v1.elementAt(0));
			firstname=v1.elementAt(1);
			lastname=v1.elementAt(2);
			username=v1.elementAt(3);
			email=v1.elementAt(4);
			password=v1.elementAt(5);
			return true;
		}
	}
	public boolean checkAdmin()
	{
		DConnection dc=new DConnection();
		Vector<String> v1 =dc.getSingleRow("select * from admin where username='"+username+"' and Password='"+password+"' ");
		if(v1.size()==0)
			return false;
		else
		{ 
			username=v1.elementAt(1);
			password=v1.elementAt(2);
			return true;
		}
	}
	
	
	public String[] retrieve()
	{
		DConnection dc=new DConnection();
		String[] arr =dc.getAllRowsForSingleColumn("select firstname from users");	
		//String arr[]=new String[v1.size()];
		
		return arr;
		
	}
	
	public static int gettingUserid(String uname)
	{
		DConnection dc=new DConnection();
		Vector<String> v1 =dc.getSingleRow("select userid from users where firstname='"+uname+"'");
		
			int n=Integer.parseInt(v1.elementAt(0));
			return n;
		
	}
	
	public static String gettingUsername(String uid)
	{
		DConnection dc=new DConnection();
		Vector<String> v1 =dc.getSingleRow("select username from users where userid='"+uid+"'");
		
			String n=v1.elementAt(0);
			return n;
		
	}
	
	public static boolean checkavailable(int uid,int day,int month,int year)
	{
		DConnection dc=new DConnection();
		Vector<String> v1 =dc.getSingleRow("select * from attending where userid='"+uid+"' and day='"+day+"' and month='"+month+"' and year='"+year+"'");
		if(v1.size()==0)
			return true;//kuch nahin toh insert kardo
		else
		{ 
			return false;
		}
	}
	
	public static Vector<String[]> gettingEmpAttendance(String uid)
	{
		DConnection dc=new DConnection();
		Vector<String[]> v1 =dc.getMultipleRows("select * from attending where userid='"+uid+"'");
		return v1;
	}
	public static int getColumnCount(String fname) throws SQLException
	{int i=0;
		DConnection dc=new DConnection();
		 i=dc.gettingColumnCount("select * from attending where firstname='"+fname+"'");
		return i;
	}
}

