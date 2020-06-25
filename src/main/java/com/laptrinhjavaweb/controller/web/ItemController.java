package com.laptrinhjavaweb.controller.web;

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
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.ISanPhamService;

@WebServlet(urlPatterns = { "/item" })
public class ItemController extends HttpServlet {

	private static final long serialVersionUID = 2686801510274002166L;
	@Inject
	private ICategoryService categoryService;
	@Inject
	ISanPhamService spService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Integer spId=Integer.parseInt(request.getParameter("spId"));
		SanPhamModel spModel=new SanPhamModel();
		CategoryModel categoryModel=new CategoryModel();
		
		categoryModel.setListResult(categoryService.findAll());
		request.setAttribute("categories", categoryModel);
		spModel.setListResult(spService.findAll(null, null, spId));
		request.setAttribute(constant.SystemConst.MODEL, spModel);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop_items.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}