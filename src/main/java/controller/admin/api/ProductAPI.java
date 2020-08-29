package controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import model.ProductModel;
import model.UserModel;
import service.IProductService;
import utils.HttpUtil;
import utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.File;
import java.io.IOException;

@WebServlet(urlPatterns = { "/api-admin-product" })
public class ProductAPI extends HttpServlet {

	@Inject
	private IProductService productService;

	private static final long serialVersionUID = -5974394312796154954L;
	private static final String SAVE_DIR = "resources";

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ProductModel spModel = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
		spModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());

		/*
		 * // Save image to server String savePath =
		 * this.getFolderUpload().getAbsolutePath() + File.separator + SAVE_DIR; for
		 * (Part part : request.getParts()) { String fileName = extractFileName(part);
		 * 
		 * // refines the fileName in case it is an absolute path fileName = new
		 * File(fileName).getName(); part.write(savePath + File.separator + fileName);
		 * spModel.setThumbnail(fileName); }
		 */
		spModel = productService.save(spModel);
		ObjectMapper mapper = new ObjectMapper();
		// Chuyển string > json
		mapper.writeValue(response.getOutputStream(), spModel);
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ProductModel spUpdate = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
		spUpdate.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		spUpdate = productService.update(spUpdate);
		mapper.writeValue(response.getOutputStream(), spUpdate);
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ProductModel sp = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
		productService.delete(sp.getIds());
		mapper.writeValue(response.getOutputStream(), "{}");
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}

	public File getFolderUpload() {
		File folderUpload = new File(System.getProperty("user.home") + "/Documents/webpc/src/main/webapp");
		if (!folderUpload.exists()) {
			folderUpload.mkdirs();
		}
		return folderUpload;
	}

}
