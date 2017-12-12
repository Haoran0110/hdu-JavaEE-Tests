package com.ssh.entity;

/**
 * AbstractTUser entity provides the base persistence definition of the TUser
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractTUser implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String password;

	// Constructors

	/** default constructor */
	public AbstractTUser() {
	}

	/** full constructor */
	public AbstractTUser(String name, String password) {
		this.name = name;
		this.password = password;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}