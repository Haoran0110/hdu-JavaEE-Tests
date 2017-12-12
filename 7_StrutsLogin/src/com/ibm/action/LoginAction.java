package com.ibm.action;

import java.sql.ResultSet;

import com.ibm.pojo.Person;
import com.ibm.util.DButil;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private Person persona = new Person();

	public Person getPersona() {
		return persona;
	}

	public void setPersona(Person persona) {
		this.persona = persona;
	}

	@Override
	public String execute() throws Exception {
		DButil dButil = new DButil();
		ResultSet rs = null;
		String sql = "select * from person p where p.name=? and p.password=?";
		rs = dButil.executeQuery(sql, persona.getName(),persona.getPassword());
		if(rs.next()){
			dButil.close();
			return SUCCESS;
		}else{
			dButil.close();
			return ERROR;
		}
	}
}
