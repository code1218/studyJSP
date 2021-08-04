package jspEx;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BorderDtl
 */
@WebServlet("/jspEx/borderdtl")
public class BorderDtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int border_code = 0;
		if(request.getParameter("border_code") != null) {
			border_code = Integer.parseInt(request.getParameter("border_code"));
		}
		int page = 0;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		BorderMgrPool borderMgrPool = new BorderMgrPool();
		BorderDtlBean contentBean = borderMgrPool.getContent(border_code);
		BorderDtlBean preBean = borderMgrPool.getPreBorderCode(border_code);
		BorderDtlBean nextBean = borderMgrPool.getNextBorderCode(border_code);
		
		request.setAttribute("page", page);
		request.setAttribute("contentBean", contentBean);
		request.setAttribute("preBean", preBean);
		request.setAttribute("nextBean", nextBean);
		
		HttpSession session = request.getSession();
		UserBean sessionBean = (UserBean)session.getAttribute("userBean");
		if(sessionBean == null) {
			request.getRequestDispatcher("header_login.jsp").include(request, response);
		}else {
			request.setAttribute("name", sessionBean.getUser_name());
			request.getRequestDispatcher("header_logout.jsp").include(request, response);
		}
		request.getRequestDispatcher("borderdtl.jsp").include(request, response);
		request.getRequestDispatcher("footer.jsp").include(request, response);
	}

}
