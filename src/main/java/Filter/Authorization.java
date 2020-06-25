package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.model.UserModel;
import com.laptrinhjavaweb.utils.SessionUtil;

import constant.SystemConst;

public class Authorization implements Filter {

	@SuppressWarnings("unused")
	private ServletContext context;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		String url = request.getRequestURI();
		if (url.startsWith("/webpc/admin")) {
			UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
			if (model != null) {
				if (model.getVaiTroModel().getCode().equals(SystemConst.ADMIN)) {
					filterChain.doFilter(request, response);
				}
				else if (model.getVaiTroModel().getCode().equals(SystemConst.USER)) {
					response.sendRedirect(
							request.getContextPath() + "/dang-nhap?action=login&alert=danger&message=not_permission");
				}
			} else {
				response.sendRedirect(
						request.getContextPath() + "/dang-nhap?action=login&alert=danger&message=not_login");
			}
		} else {
			filterChain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {

	}

}
