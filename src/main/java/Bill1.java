

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Bill1
 */
public class Bill1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//Getting bill number from user
		int bill_number=Integer.parseInt(request.getParameter("bill_number"));
		int units=Integer.parseInt(request.getParameter("bill_units"));
		//for output printing
		PrintWriter pw=response.getWriter();
		float bill=0;
		if(units<=30)
			bill=units*1.90f;
		else if(units>30 && units<=75)
			bill=units*3.00f;
		else if(units>75 && units<=125)
			bill=units*4.50f;
		else if(units>125 && units<=225)
			bill=units*6.00f;
		else if(units>225 && units<=400)
			bill=units*8.75f;
		else
			bill=units*9.75f;
		request.setAttribute("bill_number",bill_number);
		request.setAttribute("units",units);
		request.setAttribute("bill",bill);
		
		request.getRequestDispatcher("result.html").forward(request, response);
	}

}
