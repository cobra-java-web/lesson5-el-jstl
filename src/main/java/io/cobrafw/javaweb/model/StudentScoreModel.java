/*
 *==================================================================================
 *== COPYRIGHT HYPERTECH COBRA TEAM. ALL RIGHT RESERVED.							==
 *== HYPERTECH PROPRIETARY/CONFIDENTIAL. USE THIS SUBJECT TO LICENSE TERMS.		==
 *==																				==
 *== VISIT HTTP://COBRAFW.IO FOR MORE INFORMATION									==
 *==================================================================================
 *
 *== File Name: StudentScoreModel.java
 *== Created at: Oct 1, 2017 4:22:26 PM
 *== Created by: duongnguyen
 *== Project: lesson5-el-jstl
 *== Package: io.cobrafw.javaweb.model
 */
package io.cobrafw.javaweb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import io.cobrafw.javaweb.dto.StudentScoreDto;

/**
 * Student Score Model
 *
 * @author duongnguyen
 */
public class StudentScoreModel {

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
	public StudentScoreModel() {
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
	public StudentScoreModel(String dbDriverClass, String dbConnection, String dbUsername, String dbPassword) {
		super();
		this.dbDriverClass = dbDriverClass;
		this.dbConnection = dbConnection;
		this.dbUsername = dbUsername;
		this.dbPassword = dbPassword;
	}

	/**
	 * Select all student score
	 *
	 * @return List StudentScoreDto
	 */
	public List<StudentScoreDto> selectStudentScore() {

		// Declare list result
		List<StudentScoreDto> accountDtoList = new ArrayList<>();

		try {

			// Open DB connection & create statement
			this.openDBConnection();

			// Create query string
			String queryStr = "SELECT * FROM STUDENTSCORE";

			// Create query string
			ResultSet resultSet = this.statement.executeQuery(queryStr);

			// Transform result set to DTO
			while(resultSet.next()) {
				StudentScoreDto studentScoreDto = new StudentScoreDto();
				studentScoreDto.setId(resultSet.getInt("Id"));
				studentScoreDto.setAccount(resultSet.getString("Account"));
				studentScoreDto.setFullName(resultSet.getString("FullName"));
				studentScoreDto.setQuiz1(resultSet.getFloat("Quiz1"));
				studentScoreDto.setQuiz2(resultSet.getFloat("Quiz2"));
				studentScoreDto.setQuiz3(resultSet.getFloat("Quiz3"));
				accountDtoList.add(studentScoreDto);
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
