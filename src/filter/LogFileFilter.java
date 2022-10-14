package filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
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
import javax.servlet.jsp.jstl.core.Config;

public class LogFileFilter implements Filter{

	PrintWriter writer;
	/*
	 * <filter>
		<filter-name>Filter02_2</filter-name>
		<filter-class>filter.LogFileFilter</filter-class>
		<init-param>
			<param-name>filename</param-name>
			<param-value>C:\logs\JSPBook.log</param-value>
		</init-param>
	</filter>
	 */
	@Override
	public void init(FilterConfig Config) throws ServletException {
		String filename = Config.getInitParameter("filename");
		if(filename == null) {
			throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
		}
		
		try {
			//1)printWriter : byte출력스트림과 문자 출력 스트림을 가지고 객체를 생성할 수 있음
			//				   자동 flush 기능 탑재
			//				   생성자에 FileNotFoundException 예외가 있어, 반드시 예외 처리를 해야 함
			//				  new PrintWriter(Writer out): 자동 플러시 없음
			//				  new PrintWriter(Writer out,true): 자동 플러시 있음
			//fileWriter : 텍스트 데이터를 파일에 저장할때 사용.
			//				문자 단위로 저장하므로 텍스트만 저장가능
			//				new FileWriter(filename) =>덮어쓰기
			//				(new FileWriter(filename, true) =>기존 내용 끝에 추가 쓰기
			writer = new PrintWriter(new FileWriter(filename, true),true);
		}catch (IOException e) {
			throw new ServletException("로그 파일을 열 수 없습니다.");
		}
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		writer.println("접속할 클라이언트 IP: "+ request.getRemoteAddr());
		long start = System.currentTimeMillis();
		writer.println("접근한 URL 경로: "+getUrlPath(request));
		writer.println("요청 처리 시작 시간: "+getCurrentTime());
		String content = response.getContentType();
		if(content == null) {
			content = "파라미터를 넘기는 페이지가 아닙니다";
		}
		writer.println("콘텐트 타입: "+content);
		chain.doFilter(request, response);
		long end = System.currentTimeMillis();
		writer.println("요청 처리 종료 시각: "+getCurrentTime());
		writer.println("요청 처리 소요 시각: "+ (end-start)+" ms ");
		writer.println("====================================================================");
		
	}

	
	@Override
	public void destroy() {
		writer.close();
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
