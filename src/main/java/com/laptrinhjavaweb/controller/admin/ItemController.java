package com.laptrinhjavaweb.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.ISanPhamService;
import com.laptrinhjavaweb.service.ISupplierService;
import com.laptrinhjavaweb.utils.FormUtil;

import constant.SystemConst;

@WebServlet(urlPatterns = { "/admin-item" })
public class ItemController extends HttpServlet {

	private static final long serialVersionUID = 2686801510274002166L;
	@Inject	private ISanPhamService spService;
	
	@Inject ICategoryService cateService;
	
	@Inject ISupplierService suppService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SanPhamModel model = FormUtil.toModel(SanPhamModel.class, request);
		String view = "";
		if (model.getType().equals(SystemConst.LIST)) {
			model.setListResult(spService.findAll(null, null, null));
			view = "/views/admin/item.jsp";
		} else if (model.getType().equals(SystemConst.EDIT)) {
			if (model.getId() != null) {
				model = spService.fineOne(model.getId());	
			} else {
				
			}
			request.setAttribute("suppliers", suppService.findAll());
			request.setAttribute("categories", cateService.findAll());
			view = "/views/admin/modifyItem.jsp";
		}
		request.setAttribute(SystemConst.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher(view);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}