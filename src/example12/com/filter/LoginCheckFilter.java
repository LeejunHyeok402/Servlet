package example12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCheckFilter implements Filter{
	
	private FilterConfig fillterConfig = null;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		this.fillterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		HttpServletRequest req = (HttpServletRequest)request;
		
		
		HttpSession session = req.getSession();
	
		String param1 = fillterConfig.getInitParameter("param1");	//admin
		String param2 = fillterConfig.getInitParameter("param2");	//admin1234
		
		String message;
	
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
	
		PrintWriter writer = response.getWriter();
		if(id.length()==0||passwd.length()==0||id.equals("")||passwd.equals("")){
			RequestDispatcher rd = request.getRequestDispatcher("loginForm.jsp");
			rd.forward(request, response);
		}
		if(id.equals(param1)&&passwd.equals(param2)) {
			session.setAttribute("id", id);
			((HttpServletResponse)response).sendRedirect("/example12/login_success.jsp");
		}else {
			message = "로그인 실패했습니다.";
			writer.println(message);
		}
		
		chain.doFilter(request, response);
		
	}

	@Override
	public void destroy() {
		
		
	}

}
