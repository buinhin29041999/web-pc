package com.laptrinhjavaweb.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.laptrinhjavaweb.model.SanPhamModel;
import com.laptrinhjavaweb.model.UserModel;
import com.laptrinhjavaweb.service.ISanPhamService;
import com.laptrinhjavaweb.utils.HttpUtil;
import com.laptrinhjavaweb.utils.SessionUtil;

@WebServlet(urlPatterns = { "/api-admin-sanpham" })
public class SanphamAPI extends HttpServlet {

	@Inject
	private ISanPhamService sanPhamService;

	private static final long serialVersionUID = -5974394312796154954L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		SanPhamModel spModel = HttpUtil.of(request.getReader()).toModel(SanPhamModel.class);
		spModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		spModel = sanPhamService.save(spModel);
		ObjectMapper mapper = new ObjectMapper();
		// Chuyển string > json
		mapper.writeValue(response.getOutputStream(), spModel);
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		SanPhamModel spUpdate = HttpUtil.of(request.getReader()).toModel(SanPhamModel.class);
		spUpdate.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		spUpdate = sanPhamService.update(spUpdate);
		mapper.writeValue(response.getOutputStream(), spUpdate);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		SanPhamModel sp = HttpUtil.of(request.getReader()).toModel(SanPhamModel.class);
		sanPhamService.delete(sp.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}

}
