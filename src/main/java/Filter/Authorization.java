package Filter;

import constant.SystemConst;
import model.UserModel;
import utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
                if (model.getRoleModel().getCode().equals(SystemConst.ADMIN)) {
                    filterChain.doFilter(request, response);
                } else if (model.getRoleModel().getCode().equals(SystemConst.USER)) {
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
