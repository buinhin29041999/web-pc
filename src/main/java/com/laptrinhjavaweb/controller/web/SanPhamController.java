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
import com.laptrinhjavaweb.paging.PageRequest;
import com.laptrinhjavaweb.paging.Pageble;
import com.laptrinhjavaweb.service.ICategoryService;
import com.laptrinhjavaweb.service.ISanPhamService;
import com.laptrinhjavaweb.utils.FormUtil;

import Sort.Sorter;
import constant.SystemConst;

@WebServlet(urlPatterns = { "/web-sanpham" })
public class SanPhamController extends HttpServlet {
	@Inject
	ISanPhamService sanPhamService;
	@Inject
	ICategoryService categoryService;
	private static final long serialVersionUID = 2686801510274002166L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SanPhamModel model = FormUtil.toModel(SanPhamModel.class, request);
		CategoryModel categoryModel = new CategoryModel();
		
		Integer id=Integer.parseInt(request.getParameter("cateId"));
		request.setAttribute("cateId", id);
		Pageble pageble=new PageRequest(model.getPage(), model.getMaxPageItem(), new Sorter(model.getSortname(), model.getSortBy()));
		
		model.setListResult(sanPhamService.findAll(pageble,id,null));
		model.setTotalItem(sanPhamService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
		request.setAttribute(SystemConst.MODEL, model);
				
		categoryModel.setListResult(categoryService.findAll());
		request.setAttribute("categories", categoryModel);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/sanpham/list.jsp");
		
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
}