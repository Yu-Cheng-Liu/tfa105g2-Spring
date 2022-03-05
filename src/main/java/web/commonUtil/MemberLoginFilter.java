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

@WebFilter(urlPatterns = { "/front-end/memberData/my-account-member.jsp" }) //待確認
public class MemberLoginFilter implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		HttpSession session = req.getSession();

		Object user = session.getAttribute("user");
		if (user == null) {
			session.setAttribute("location", req.getRequestURI());  //路徑還要確認
			res.sendRedirect(req.getContextPath() + "/front-end/memberData/login-register-member.jsp");
			return;
		} else {
			chain.doFilter(request, response);
		}
	}	

}
