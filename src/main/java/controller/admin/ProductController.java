package controller.admin;

import constant.SystemConst;
import model.ProductModel;
import service.IBrandService;
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

@WebServlet(urlPatterns = {"/admin-item"})
public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 2686801510274002166L;
    @Inject
    private IProductService spService;

    @Inject
    ICategoryService cateService;

    @Inject
    IBrandService brandService;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductModel model = FormUtil.toModel(ProductModel.class, request);
        String view = "";
        if (model.getType().equals(SystemConst.LIST)) {
            model.setListResult(spService.findAll(null, null, null));
            view = "/views/admin/item.jsp";
        } else if (model.getType().equals(SystemConst.EDIT)) {
            if (model.getId() != null) {
                model = spService.fineOne(model.getId());
            }
            request.setAttribute("suppliers", brandService.findAll());
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