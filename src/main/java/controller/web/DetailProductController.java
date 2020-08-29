package controller.web;

import service.ICategoryService;
import service.IProductService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/product_detail"})
public class DetailProductController extends HttpServlet {

    private static final long serialVersionUID = 2686801510274002166L;
    @Inject
    private ICategoryService categoryService;
    @Inject
    IProductService spService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /*
         * Integer spId=Integer.parseInt(request.getParameter("spId")); SanPhamModel
         * spModel=new SanPhamModel(); CategoryModel categoryModel=new CategoryModel();
         *
         * categoryModel.setListResult(categoryService.findAll());
         * request.setAttribute("categories", categoryModel);
         * spModel.setListResult(spService.findAll(null, null, spId));
         * request.setAttribute(constant.SystemConst.MODEL, spModel);
         */

        RequestDispatcher rd = request.getRequestDispatcher("/views/web/product/product_detail.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}