package controller.web;

import constant.SystemConst;
import model.CategoryModel;
import model.ProductModel;
import service.ICategoryService;
import service.IProductService;
import utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/product"})
public class ProductController extends HttpServlet {
    @Inject
    IProductService productService;
    @Inject
    ICategoryService categoryService;
    private static final long serialVersionUID = 2686801510274002166L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProductModel model = FormUtil.toModel(ProductModel.class, request);
        model.setListResult(productService.findByCateIdAndOrName(model.getCategoryId(), model.getName()));

        CategoryModel categoryModel = new CategoryModel();
        categoryModel.setListResult(categoryService.findAll());
        request.setAttribute("categories", categoryModel);
		/*
		 * 
		 * CategoryModel categoryModel = new CategoryModel();
		 * 
		 * Integer id=Integer.parseInt(request.getParameter("cateId"));
		 * request.setAttribute("cateId", id); Pageble pageble=new
		 * PageRequest(model.getPage(), model.getMaxPageItem(), new
		 * Sorter(model.getSortname(), model.getSortBy()));
		 * 
		 /* model.setListResult(sanPhamService.findAll(pageble,id,null));
		 * model.setTotalItem(sanPhamService.getTotalItem()); model.setTotalPage((int)
		 * Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
		 * 
		 * 
		 * categoryModel.setListResult(categoryService.findAll());
		 * request.setAttribute("categories", categoryModel);
		 */
        request.setAttribute(SystemConst.MODEL, model);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/product/product.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}