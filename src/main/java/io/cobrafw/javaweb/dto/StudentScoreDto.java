/*
 *==================================================================================
 *== COPYRIGHT HYPERTECH COBRA TEAM. ALL RIGHT RESERVED.							==
 *== HYPERTECH PROPRIETARY/CONFIDENTIAL. USE THIS SUBJECT TO LICENSE TERMS.		==
 *==																				==
 *== VISIT HTTP://COBRAFW.IO FOR MORE INFORMATION									==
 *==================================================================================
 *
 *== File Name: StudentScoreDto.java
 *== Created at: Oct 1, 2017 4:23:01 PM
 *== Created by: duongnguyen
 *== Project: lesson5-el-jstl
 *== Package: io.cobrafw.javaweb.dto
 */
package io.cobrafw.javaweb.dto;

/**
 * StudentScore DTO
 *
 * @author duongnguyen
 */
public class StudentScoreDto {

	/** StudentScore.Id */
	private int id;

	/** StudentScore.Account */
	private String account;

	/** StudentScore.FullName */
	private String fullName;

	/** StudentScore.Quiz1 */
	private float quiz1;

	/** StudentScore.Quiz2 */
	private float quiz2;

	/** StudentScore.Quiz3 */
	private float quiz3;

	/**
	 * Default Constructor
	 */
	public StudentScoreDto() {
		super();
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return this.id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the account
	 */
	public String getAccount() {
		return this.account;
	}

	/**
	 * @param account the account to set
	 */
	public void setAccount(String account) {
		this.account = account;
	}

	/**
	 * @return the fullName
	 */
	public String getFullName() {
		return this.fullName;
	}

	/**
	 * @param fullName the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	/**
	 * @return the quiz1
	 */
	public float getQuiz1() {
		return this.quiz1;
	}

	/**
	 * @param quiz1 the quiz1 to set
	 */
	public void setQuiz1(float quiz1) {
		this.quiz1 = quiz1;
	}

	/**
	 * @return the quiz2
	 */
	public float getQuiz2() {
		return this.quiz2;
	}

	/**
	 * @param quiz2 the quiz2 to set
	 */
	public void setQuiz2(float quiz2) {
		this.quiz2 = quiz2;
	}

	/**
	 * @return the quiz3
	 */
	public float getQuiz3() {
		return this.quiz3;
	}

	/**
	 * @param quiz3 the quiz3 to set
	 */
	public void setQuiz3(float quiz3) {
		this.quiz3 = quiz3;
	}

	/**
	 * @return the quiz3
	 */
	public float getAverage() {
		return (this.quiz1 + this.quiz2 + this.quiz3) / 3;
	}
}
