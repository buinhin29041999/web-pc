package com.laptrinhjavaweb.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.model.CategoryModel;
import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.model.UserModel;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.ISanPhamService;
import com.laptrinhjavaweb.service.IUserService;
import com.laptrinhjavaweb.utils.FormUtil;
import com.laptrinhjavaweb.utils.SessionUtil;

@WebServlet(urlPatterns = { "/trang-chu", "/dang-nhap", "/thoat" })
public class HomeController extends HttpServlet {
	@Inject
	private ICategoryService categoryService;

	@Inject
	private ISanPhamService spService;
	@Inject
	IUserService userService;
	private static final long serialVersionUID = 2686801510274002166L;
	ResourceBundle bundle = ResourceBundle.getBundle("message");

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SanPhamModel model = new SanPhamModel();
		CategoryModel categoryModel = new CategoryModel();
		categoryModel.setListResult(categoryService.findAll());
		request.setAttribute("categories", categoryModel);
		model.setListResult(spService.findNewestSP(9));
		request.setAttribute(constant.SystemConst.MODEL, model);

		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			if (alert != null && message != null) {
				request.setAttribute("alert", alert);
				request.setAttribute("message", bundle.getString(message));
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
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
				if (model.getVaiTroModel().getCode().equals("user")) {
					response.sendRedirect(request.getContextPath() + "/trang-chu");
				} else if (model.getVaiTroModel().getCode().equals("admin")) {
					response.sendRedirect(request.getContextPath() + "/admin-home");
				}
			} else {
				response.sendRedirect(request.getContextPath()
						+ "/dang-nhap?action=login&alert=danger&message=invalid_user_or_password");

			}
		}

	}
}
