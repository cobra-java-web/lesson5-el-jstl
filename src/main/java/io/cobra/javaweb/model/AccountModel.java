package io.cobra.javaweb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import io.cobra.javaweb.dto.AccountDto;

/**
 * Account Model
 *
 * @author duongnguyen.hypertech@gmail.com
 */
public class AccountModel {

	/** DB Driver class name */
	private String dbDriverClass;

	/** DB Connection information */
	private String dbConnection;

	/** DB Username */
	private String dbUsername;

	/** DB Password */
	private String dbPassword;

	/** DB Connection */
	private Connection connection;

	/** DB Statement */
	private Statement statement;

	/**
	 * Default constructor
	 */
	public AccountModel() {
		super();
	}

	/**
	 * Constructor with full properties
	 *
	 * @param dbDriverClass
	 * @param dbConnection
	 * @param dbUsername
	 * @param dbPassword
	 */
	public AccountModel(String dbDriverClass, String dbConnection, String dbUsername, String dbPassword) {
		super();
		this.dbDriverClass = dbDriverClass;
		this.dbConnection = dbConnection;
		this.dbUsername = dbUsername;
		this.dbPassword = dbPassword;
	}

	public List<AccountDto> selectAccount() {

		// Declare list result
		List<AccountDto> accountDtoList = new ArrayList<>();

		try {

			// Open DB connection & create statement
			this.openDBConnection();

			// Create query string
			String queryStr = "SELECT * FROM ACCOUNTS";

			// Create query string
			ResultSet resultSet = this.statement.executeQuery(queryStr);

			// Transform result set to DTO
			while(resultSet.next()) {
				AccountDto accountDto = new AccountDto();
				accountDto.setId(resultSet.getInt("Id"));
				accountDto.setAccount(resultSet.getString("Account"));
				accountDto.setFullName(resultSet.getString("FullName"));
				accountDto.setDateOfBirth(resultSet.getDate("DateOfBirth"));
				accountDtoList.add(accountDto);
			}

		} catch (SQLException e) {

			System.out.println("Cannot select data from DB.");
			e.printStackTrace();
		} finally {

			// Close DB connection & statement
			this.closeDBConnection();
		}

		// Return result list
		return accountDtoList;
	}

	/**
	 * Open DB connection & create statement
	 */
	private void openDBConnection() {

		try {

			// Load driver
			Class.forName(this.dbDriverClass);

			// Open connection
			this.connection = DriverManager.getConnection(this.dbConnection, this.dbUsername, this.dbPassword);

			// Create statement
			this.statement = this.connection.createStatement();

		} catch (ClassNotFoundException e) {
			System.out.println("Cannot load driver class: " + this.dbDriverClass);
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("Cannot connect to DB: " + this.dbConnection);
			e.printStackTrace();
		}


	}

	/**
	 * Close DB connection & statement
	 */
	private void closeDBConnection() {

		try {

			// Close statement
			if (this.statement != null) {
				this.statement.close();
			}

		} catch (SQLException e) {
			System.out.println("Cannot close statement");
			e.printStackTrace();
		}

		try {

			// Close DB connection
			if (this.connection != null && !this.connection.isClosed()) {
				this.connection.close();
			}

		} catch (SQLException e) {
			System.out.println("Cannot close connection with DB");
			e.printStackTrace();
		}
	}
}
