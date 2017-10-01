/*
 *==================================================================================
 *== COPYRIGHT HYPERTECH COBRA TEAM. ALL RIGHT RESERVED.							==
 *== HYPERTECH PROPRIETARY/CONFIDENTIAL. USE THIS SUBJECT TO LICENSE TERMS.		==
 *==																				==
 *== VISIT HTTP://COBRAFW.IO FOR MORE INFORMATION									==
 *==================================================================================
 *
 *== File Name: SessionBean.java
 *== Created at: Oct 1, 2017 3:47:05 PM
 *== Created by: duongnguyen
 *== Project: lesson5-el-jstl
 *== Package: io.cobrafw.javaweb.bean
 */
package io.cobrafw.javaweb.bean;

/**
 * Session data bean
 *
 * @author duongnguyen
 */
public class SessionBean {

	/** Session string data */
	private String data;

	/**
	 * Default constructor
	 */
	public SessionBean() {
		super();
	}

	/**
	 * @return the data
	 */
	public String getData() {
		return this.data;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(String data) {
		this.data = data;
	}
}
