package com.ibm.action;

import com.ibm.pojo.Person;
import com.ibm.util.DButil;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{
	private Person persona = new Person();

	public Person getPersona() {
		return persona;
	}

	public void setPersona(Person persona) {
		this.persona = persona;
	}

	@Override
	public String execute() throws Exception {
		DButil dbutil = new DButil();
		String sql="insert into person(name,password,email) values(?,?,?)";
		int executeUpdate = dbutil.executeUpdate(sql,persona.getName(),persona.getPassword(),persona.getEmail());
		if(executeUpdate==1){
			dbutil.close();
			return SUCCESS;
		}else {
			dbutil.close();
			return ERROR;
		}
	}
}