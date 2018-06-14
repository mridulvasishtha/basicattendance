package com.connection;
	import java.sql.*;
	import java.util.*;

	import java.io.*;
	public class DConnection
	{
		static Connection conn;
		static Statement stmt;
		ResultSet rst;
		InputStream input;
		Properties p1;
		
		public  void connect()  //for connection
		{	
			try
			{
				input = getClass().getClassLoader().getResourceAsStream("config.properties");
				p1=new Properties();
				p1.load(input);
				Class.forName(p1.getProperty("driverclass"));
				//Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(p1.getProperty("url"),p1.getProperty("username"),p1.getProperty("password"));
				//conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","rat");
			}
			catch(IOException e)
			{
				e.printStackTrace();
			}
			catch(ClassNotFoundException e)
			{
				e.printStackTrace();
			}
			catch(SQLException e)
			{
				e.printStackTrace();	
			}
		}
		
		static void close() //for closing connection
		{
			
			try
			{
				stmt.close();
				conn.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
		
		public  int setData(String query)//for insert ,update ,delete
		{
			int cnt=0;
		try
		{
			connect();
			stmt=conn.createStatement();
			cnt=stmt.executeUpdate(query);
			close();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		return cnt;
			
	}

		public  Vector<String[]> getMultipleRows(String query)//for Select multiple records
		{
				Vector<String[]> v1=new Vector<>();  //vector type
			try
			{
				connect();  //connection taken
				stmt=conn.createStatement();
				rst=stmt.executeQuery(query);
				while(rst.next())
				{
					
					ResultSetMetaData rsmd=rst.getMetaData(); //for getting coloumn count
					int n=rsmd.getColumnCount();
					String t[]=new String[n];
					
					for(int i=0;i<n;i++)
					{
						t[i]=rst.getString(i+1);
						
					}
					
					v1.addElement(t);
				}
			
				close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		
			
			return v1;	
		
		}
		
		public Vector<String> getSingleRow(String query)//for Select
		{
			Vector<String> v1=new Vector<>();
			try
			{
				connect();
				stmt=conn.createStatement();
				rst=stmt.executeQuery(query);
				ResultSetMetaData rsmd=rst.getMetaData();
				int n=rsmd.getColumnCount();
				if(rst.next())
				{
					for(int i=0;i<n;i++)
					{
						v1.addElement(rst.getString(i+1));
					}
				}
				close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			return v1;
		}

		public  String[] getAllRowsForSingleColumn(String query)//for Select multiple records
		{
			String[] t = null;
			try
			{
				connect();  //connection taken
				stmt=conn.createStatement();
				rst=stmt.executeQuery(query);
				int cnt=0;
				while(rst.next())
				{
					cnt++;
					
				}
				System.out.println("count is "+cnt);
				t=new String[cnt];
				
				for(int i=0;i<cnt;i++)
				{
					rst.absolute(i+1);
					t[i]=rst.getString(2);
				
				}
				//close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			return t;	
		
		}
		
		public int gettingColumnCount(String query) throws SQLException
		{
			connect();  
			try {
				stmt=conn.createStatement();
			} catch (SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			try {
				rst=stmt.executeQuery(query);
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			int n=0;
			while(rst.next())
			{
				
				ResultSetMetaData rsmd=rst.getMetaData(); //for getting coloumn count
				try {
					n=rsmd.getColumnCount();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				}
			return n;
		}
	
		public  ResultSet getResultSet(String query)//for Select multiple records
		{
			String[] t = null;
			try
			{
				connect();  //connection taken
				stmt=conn.createStatement();
				rst=stmt.executeQuery(query);
				
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			return rst;	
		
		}
		
	}
