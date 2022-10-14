package filter;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class LogFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("BookMarket 초기화....");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//클라이언트 IP
		System.out.println("접속할 클라이언트 IP: "+ request.getRemoteAddr());
		//접근한 URL 경로
		HttpServletRequest req;
		String currntPath ="";
		String queryString = "";
		//instanceof: 어떤 클래스를 상속받았는지 확인할 때 사용 상속 받았다면 true,아니면 false
		//HttpServletRequest가 request의 타입과 같은 타입 이거나,
		//HttpServletRequest가 request의 타입과을 상속 받았다면 true
		if(request instanceof HttpServletRequest) {
			req = (HttpServletRequest)request;
			//접근한 URI 경로				//http://localhost/ch12/test.jsp
			currntPath = req.getRequestURI();
			//요청 파라미터(있거나 없거나)   	//?id=1234&password=1234
			queryString = req.getQueryString();
			//삼항연산자
			queryString = queryString == null ? "" : "?"+queryString;
		}
		System.out.println("접근한 URL 경로: "+(currntPath+queryString));
		long start = System.currentTimeMillis();
		//요청 처리 시작 시간
		System.out.println("요청 처리 시작 시간: "+getCurrentTime());
		
		chain.doFilter(request, response);
		
		long end = System.currentTimeMillis();
		//요청 처리 종료 시각
		System.out.println("요청 처리 종료 시각: "+getCurrentTime());
		//요청 처리 소요 시각
		System.out.println("요청 처리 소요 시각: "+ (end-start)+" ms ");
		System.out.println("===========================================");
	}



	@Override
	public void destroy() {
		
	}
	
	private String getUrlPath(ServletRequest request) {
		HttpServletRequest req;
		String currentPath="";
		String queryString="";
		if(request instanceof HttpServletRequest) {
			req = (HttpServletRequest)request;
			currentPath = req.getRequestURI();
			queryString = req.getQueryString();
			queryString = queryString == null ? "" : "?"+queryString;
			}
		return currentPath+queryString;
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		
		return formatter.format(calendar.getTime());
	}


}
