package springmvcsearch;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter
{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("This is prehandler");
		
		String name=request.getParameter("name");
		if(name.startsWith("A"))
		{
			response.setContentType("text/html");
			response.getWriter().println("Invalid name");
			return false;
		}
		
		return true;
	}
}
