package controller.web;

import model.CategoryModel;
import model.UserModel;
import service.ICategoryService;
import service.IProductService;
import service.IUserService;
import utils.FormUtil;
import utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = {"/trang-chu", "/dang-nhap", "/thoat"})
public class HomeController extends HttpServlet {
    @Inject
    private ICategoryService categoryService;

    @Inject
    private IProductService spService;
    @Inject
    IUserService userService;
    private static final long serialVersionUID = 2686801510274002166L;
    ResourceBundle bundle = ResourceBundle.getBundle("message");

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //SanPhamModel model = new SanPhamModel();
        CategoryModel categoryModel = new CategoryModel();
        CategoryModel linhkien = new CategoryModel();
        CategoryModel phukien = new CategoryModel();
        categoryModel.setListResult(categoryService.findAll());
        request.setAttribute("categories", categoryModel);

        linhkien.setListResult(categoryService.findByCode("linh_kien"));
        request.setAttribute("linhkien", linhkien);

        phukien.setListResult(categoryService.findByCode("phu_kien"));
        request.setAttribute("phukien", phukien);

        /*
         * model.setListResult(spService.findNewestSP(9));
         * request.setAttribute(constant.SystemConst.MODEL, model);
         */

        String action = request.getParameter("action");
        if (action != null && action.equals("login")) {
            String alert = request.getParameter("alert");
            String message = request.getParameter("message");
            if (alert != null && message != null) {
                request.setAttribute("alert", alert);
                request.setAttribute("message", bundle.getString(message));
            }
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/login_signup/login.jsp");
            rd.forward(request, response);
        } else if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
            rd.forward(request, response);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action != null && action.equals("login")) {
            UserModel model = FormUtil.toModel(UserModel.class, request);
            model = userService.findByUserAndPassAndStatus(model.getUserName(), model.getPassWord(), 1);
            if (model != null) {
                SessionUtil.getInstance().putValue(request, "USERMODEL", model);
                if (model.getRoleModel().getCode().equals("user")) {
                    response.sendRedirect(request.getContextPath() + "/trang-chu");
                } else if (model.getRoleModel().getCode().equals("admin")) {
                    response.sendRedirect(request.getContextPath() + "/admin-home");
                }
            } else {
                response.sendRedirect(request.getContextPath()
                        + "/dang-nhap?action=login&alert=danger&message=invalid_user_or_password");

            }
        }

    }
}
