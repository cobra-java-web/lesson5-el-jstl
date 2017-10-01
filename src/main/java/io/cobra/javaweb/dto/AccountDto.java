package io.cobra.javaweb.dto;

import java.util.Date;

/**
 * Account DTO
 *
 * @author duongnguyen.hypertech@gmail.com
 */
public class AccountDto {

	/** Accounts.Id */
	private int id;

	/** Accounts.Account */
	private String account;

	/** Accounts.Password */
	private String password;

	/** Accounts.FullName */
	private String fullName;

	/** Accounts.DateOfBirth */
	private Date dateOfBirth;

	/**
	 *
	 */
	public AccountDto() {
		super();
	}

	/**
	 * @param id
	 * @param account
	 * @param password
	 * @param fullName
	 * @param dateOfBirth
	 */
	public AccountDto(int id, String account, String password, String fullName, Date dateOfBirth) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.fullName = fullName;
		this.dateOfBirth = dateOfBirth;
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
	 * @return the password
	 */
	public String getPassword() {
		return this.password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
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
	 * @return the dateOfBirth
	 */
	public Date getDateOfBirth() {
		return this.dateOfBirth;
	}

	/**
	 * @param dateOfBirth the dateOfBirth to set
	 */
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
}
