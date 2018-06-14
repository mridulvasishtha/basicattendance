package com.pojo;

import com.connection.DConnection;

public class DetailEdit {
	private String empid;
	private String userclick;
	private String data;
	public String getEmpid() {
		return empid;
	}
	public void setEmpid(String empid) {
		this.empid = empid;
	}
	public String getUserclick() {
		return userclick;
	}
	public void setUserclick(String userclick) {
		this.userclick = userclick;
	}
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}

	public int insert()
	{
		DConnection dc=new DConnection();
		int cnt=dc.setData("update users set "+getUserclick()+" ='"+getData()+"' where userid="+Integer.parseInt(getEmpid())+"");
		if(getUserclick().equals("firstname"))
		{dc.setData("update attending set "+getUserclick()+" ='"+getData()+"' where userid="+Integer.parseInt(getEmpid())+"");}
		return cnt;
	}
}
