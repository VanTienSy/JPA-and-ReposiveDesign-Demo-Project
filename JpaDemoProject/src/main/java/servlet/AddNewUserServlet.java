package servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import model.UserApp;
import service.UserAppImpl;

/**
 * Servlet implementation class AddNewUserServlet
 */
@WebServlet("/AddNewUserServlet")
public class AddNewUserServlet extends HttpServlet {


	private static final long serialVersionUID = 1L;
	private UserAppImpl userAppImpl = new UserAppImpl();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		UserApp userApp = new UserApp();
		try {
			BeanUtils.populate(userApp, request.getParameterMap());

			//userApp.setId(index+1);
			System.out.println(userApp.getEmail());
			System.out.println(userApp.getUsername());

			userAppImpl.insert(userApp);
			System.out.println("Redirecting to UserServlet");
			
			request.getRequestDispatcher("UserServlet").forward(request, response);

		} catch (IllegalAccessException | InvocationTargetException e) {

			e.printStackTrace();

		}

	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
