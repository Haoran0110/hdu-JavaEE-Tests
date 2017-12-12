package com.ssh.entity;

/**
 * TUser entity. @author MyEclipse Persistence Tools
 */
public class TUser extends AbstractTUser implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public TUser() {
	}

	/** full constructor */
	public TUser(String name, String password) {
		super(name, password);
	}

}
