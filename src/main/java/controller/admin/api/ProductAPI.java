package controller.admin.api;

import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;


import model.ProductModel;
import model.UserModel;
import service.IProductService;
import utils.HttpUtil;
import utils.SessionUtil;

@WebServlet(urlPatterns = { "/api-admin-product" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
maxFileSize = 1024 * 1024 * 50, // 50MB
maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ProductAPI extends HttpServlet {

	@Inject
	private IProductService productService;

	private static final long serialVersionUID = -5974394312796154954L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ProductModel spModel = HttpUtil.of(request.getReader()).toModel(ProductModel.class);
		spModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
		
		
	//	spModel.setImage("data:image/png;base64,"+StringUtils.newStringUtf8(Base64.encodeBase64(newsAvatar.getBytes(),false)));

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
	
	/*
	 * public static String encodeToString(BufferedImage image, String type) {
	 * String imageString = null; ByteArrayOutputStream bos = new
	 * ByteArrayOutputStream();
	 * 
	 * try { ImageIO.write(image, type, bos); byte[] imageBytes = bos.toByteArray();
	 * 
	 * BASE64Encoder encoder = new BASE64Encoder(); imageString =
	 * encoder.encode(imageBytes);
	 * 
	 * bos.close(); } catch (IOException e) { e.printStackTrace(); } return
	 * imageString; }
	 */
}
