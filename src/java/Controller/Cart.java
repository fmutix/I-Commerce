package Controller;

import bean.Item;
import bean.ShoppingCart;
import bean.ShoppingCartItem;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import src.DbManager;

/**
 *
 * @author yami
 */
@WebServlet(name = "Cart", urlPatterns = {"/Cart"})
public class Cart extends HttpServlet {
	
	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String itemName = request.getParameter("itemname");
		HttpSession session = request.getSession();
		DbManager db = new DbManager();
		try {
			db.connect();
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(Cart.class.getName()).log(Level.SEVERE, null, ex);
		}
		switch(action){
			case "addCart":{
				ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
				if(cart == null){
					cart = new ShoppingCart();
					cart.setShoppingCart(new HashMap<String, ShoppingCartItem>());
				}
				if(!cart.getShoppingCart().containsKey(itemName)){
					ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
					Item item = db.getItem(itemName);
					shoppingCartItem.setItem(item);
					shoppingCartItem.setQuantity(1);
					cart.getShoppingCart().put(itemName, shoppingCartItem);
				}
				else{
					int quantity = cart.getShoppingCart().get(itemName).getQuantity();
					cart.getShoppingCart().get(itemName).setQuantity(quantity+1);
				}
				session.setAttribute("shoppingcart", cart);
			}
			break;
				
			case "minusCart":{
				ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
				if(cart == null){
					cart = new ShoppingCart();
					cart.setShoppingCart(new HashMap<String, ShoppingCartItem>());
				}
				if(cart.getShoppingCart().containsKey(itemName)){
					int quantity = cart.getShoppingCart().get(itemName).getQuantity();
					cart.getShoppingCart().get(itemName).setQuantity(quantity-1);
					quantity = cart.getShoppingCart().get(itemName).getQuantity();
					if(quantity <= 0){
						cart.getShoppingCart().remove(itemName);
					}
				}
				session.setAttribute("shoppingcart", cart);
			}
			break;
				
			case "rmCart":{
				ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
				if(cart == null){
					cart = new ShoppingCart();
					cart.setShoppingCart(new HashMap<String, ShoppingCartItem>());
				}
				if(cart.getShoppingCart().containsKey(itemName)){
					cart.getShoppingCart().remove(itemName);
				}
				session.setAttribute("shoppingcart", cart);
			}
			break;
		}
		db.close();
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.html?state=panier");
		dispatcher.forward(request, response);
	}
	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		processRequest(request, response);
	}
	
	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		processRequest(request, response);
	}
	
	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>
	
}
