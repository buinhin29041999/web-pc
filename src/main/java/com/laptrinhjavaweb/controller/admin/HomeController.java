package com.laptrinhjavaweb.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.model.CategoryModel;
import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.service.ISanPhamService;

import constant.SystemConst;

@WebServlet(urlPatterns = { "/admin-home" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = 2686801510274002166L;
	@Inject
	private ISanPhamService spService;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SanPhamModel model = new SanPhamModel();		
		model.setListResult(spService.findAll(null, null,null));
		request.setAttribute(SystemConst.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/home.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}
