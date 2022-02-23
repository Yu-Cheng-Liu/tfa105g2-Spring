package web.commonUtil;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebFilter(value= {"/front-end/compData/comp-index.jsp"}
			)
public class CompLoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		HttpSession session = req.getSession();
		
		Object compAccount = session.getAttribute("compAccount");
		if(compAccount==null) {
			res.sendRedirect(req.getContextPath()+"/front-end/compData/comp-login-register.jsp");
			return;
		}else {
			chain.doFilter(request, response);
		}
		
	}

}
