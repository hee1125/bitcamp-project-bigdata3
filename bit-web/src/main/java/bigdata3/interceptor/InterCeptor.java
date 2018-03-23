package bigdata3.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class InterCeptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler) throws Exception {
		HttpSession session = req.getSession();

		if (session.getAttribute("email") == null) {
			res.sendRedirect(req.getContextPath() + "/auth/form");
			return false;
		} else {
			session.setMaxInactiveInterval(30 * 60);
			return true;
		}
	}
}
