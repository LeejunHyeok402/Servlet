package ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class InitParamFilter implements Filter{
	private FilterConfig fillterConfig = null;
	
	//fillterConfig <- {"param1":"admin","param2":"1234"}
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter02 초기화..");
		this.fillterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
			String id = request.getParameter("id");
			String passwd = request.getParameter("password");
			
			//web.xml에서 InitParamFilter로 넘어온 값
			String param1 = fillterConfig.getInitParameter("param1");	//admin
			String param2 = fillterConfig.getInitParameter("param2");	//1234
			
			String message;
			//한글이 깨지지 않도록 응답객체에 한글을 인코딩 처리
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=UTF-8");
			
			//jsp에 메시지를 보내주기위해
			PrintWriter writer = response.getWriter();
			if(id.equals(param1)&&passwd.equals(param2)) {
				message = "로그인 성공했습니다";
			}else {
				message = "로그인 실패했습니다.";
			}
			writer.println(message);
			
			chain.doFilter(request, response);
	}


	@Override
	public void destroy() {
		
		System.out.println("Filter02 해제");
	}
}
