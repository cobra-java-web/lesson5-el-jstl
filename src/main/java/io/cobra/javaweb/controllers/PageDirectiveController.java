package io.cobra.javaweb.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import io.cobra.javaweb.dto.AccountDto;
import io.cobra.javaweb.model.AccountModel;

/**
 * Servlet implementation class PageDirectiveController
 *
 * @author duongnguyen.hypertech@gmail.com
 */
public class PageDirectiveController extends HttpServlet {

	/** Serial Version UID */
	private static final long serialVersionUID = 1L;

	/** Account Model */
	AccountModel accountModel;

	/**
	 * @see GenericServlet#init(ServletConfig config)
	 */
	@Override
	public void init(ServletConfig config) throws ServletException {

		System.out.println("Initial servler: " + PageDirectiveController.class.getName());

		// Initial Model
		this.accountModel = new AccountModel(config.getInitParameter("db-driver"),
				config.getInitParameter("db-connection"),
				config.getInitParameter("db-username"),
				config.getInitParameter("db-password"));
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageDirectiveController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Get list account
		List<AccountDto> accountDtoList = this.accountModel.selectAccount();

		// Store info to the request attribute before forwarding.
		request.setAttribute("accountDtoList", accountDtoList);

		// Get show action
		String[] showPrm = request.getParameterValues("show");
		String showAction = "/views/pageDirective/listAccount.jsp";
		if (showPrm != null && showPrm.length == 1) {
			showAction = showPrm[0];
			showAction = showAction.equals("xml") ? "/views/pageDirective/xmlAccount.jsp"
					: "/views/pageDirective/excelAccount.jsp";
		}

		// Forward to JSP page
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(showAction);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see GenericServlet#destroy()
	 */
	@Override
	public void destroy() {

		System.out.println("Destroy servler: " + PageDirectiveController.class.getName());
	}
}
