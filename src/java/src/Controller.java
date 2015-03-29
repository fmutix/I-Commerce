package src;

import bean.Item;
import bean.ItemList;
import bean.Member;
import bean.ShoppingCart;
import bean.ShoppingCartItem;
import bean.Types;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controller extends HttpServlet {
	
	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
	 * methods.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 * @throws java.lang.ClassNotFoundException
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			  throws ServletException, IOException, ClassNotFoundException {
		String nextPage = "index.jsp";
		String state = request.getParameter("state");
		if(state == null){
			loadCookie(request, response);
			if(!isLogged(request)){
				nextPage = "portal.jsp";
			}else{
				DbManager db = new DbManager();
				db.connect();
				ItemList itemList = new ItemList();
				itemList.setItemList(db.selectItems());
				request.getSession().setAttribute("itemlist", itemList);
				db.close();
			}
			
			HttpSession session = request.getSession();
			
			ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
				if(cart == null){
					cart = new ShoppingCart();
					cart.setShoppingCart(new HashMap<String, ShoppingCartItem>());
				}
			
			RequestDispatcher rd = request.getRequestDispatcher(nextPage);
			rd.forward(request, response);
			return;
		}
		
		DbManager db = new DbManager();
		db.connect();
		db.getType();
		switch(state){
			
			case "signup":{
				Member user = new Member();
				user.setName(request.getParameter("name"));
				String password = request.getParameter("password");
				user.setPassword(Hasher.digest(password));
				user.setEmail(request.getParameter("email"));
				user.setGuild(request.getParameter("guild").equals("Oui"));
				request.getSession().setAttribute("user", user);
				db.insertMember(user);
			}
			break;
				
			case "login":{
				ItemList itemList = new ItemList();
				itemList.setItemList(db.selectItems());
				request.getSession().setAttribute("itemlist", itemList);
				String name = request.getParameter("name");
				String password = request.getParameter("password");
				Member user = db.getMember(name);
				
				if(user != null && user.getPassword().equals(Hasher.digest(password))){
					request.getSession().setAttribute("user", user);
					Cookie userCookie = new Cookie("user", name);
					userCookie.setMaxAge(30*60);
					response.addCookie(userCookie);
				}else{
					nextPage = "portal.jsp";
				}
			}
			break;
				
			case "logout":{
				Cookie userCookie = searchCookie(request.getCookies(), "user");
				if(userCookie != null){
					userCookie.setMaxAge(0);
					response.addCookie(userCookie);
				}
				request.getSession().setAttribute("user", null);
				nextPage = "portal.jsp";
			}
			break;
				
			case "type":{
				String type = request.getParameter("type");
				ItemList itemList = new ItemList();
				itemList.setItemList(db.selectItemsByType(type));
				request.getSession().setAttribute("itemlist", itemList);
			}
			break;
				
			case "category":{
				String category = request.getParameter("category");
				ItemList itemList = new ItemList();
				itemList.setItemList(db.selectItemsByCategory(category));
				request.getSession().setAttribute("itemlist", itemList);
			}
			break;
			
			case "panier":{
				String actionCart = request.getParameter("actioncart");
				if(actionCart == null){
					actionCart = "";
				}
				switch(actionCart){
					case "rmCart":{
						HttpSession session = request.getSession();

						ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
						String itemName = request.getParameter("itemname");
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
				
			}
			break;
			
			case "addCart":{
				HttpSession session = request.getSession();
				
				ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
				String itemName = request.getParameter("itemname");
				if(cart == null){
					cart = new ShoppingCart();
					cart.setShoppingCart(new HashMap<String, ShoppingCartItem>());
				}
				if(!cart.getShoppingCart().containsKey(itemName)){
					Item item = new Item();
					ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
					item = db.getItem(itemName);
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
				HttpSession session = request.getSession();
				
				ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
				String itemName = request.getParameter("itemname");
				if(cart == null){
					cart = new ShoppingCart();
					cart.setShoppingCart(new HashMap<String, ShoppingCartItem>());
				}
				if(cart.getShoppingCart().containsKey(itemName)){
					int quantity = cart.getShoppingCart().get(itemName).getQuantity();
					if(quantity > 0){
						cart.getShoppingCart().get(itemName).setQuantity(quantity-1);
					}
					if(quantity == 0){
						cart.getShoppingCart().remove(itemName);
					}
				}
				session.setAttribute("shoppingcart", cart);
			}
			break;
			
			case "buy":{
				HttpSession session = request.getSession();
				
				ShoppingCart cart = (ShoppingCart) session.getAttribute("shoppingcart");
				if(cart == null){
					cart = new ShoppingCart();
					cart.setShoppingCart(new HashMap<String, ShoppingCartItem>());
				}
				cart.getShoppingCart().clear();
				session.setAttribute("shoppingcart", cart);
				nextPage = "buy.jsp";
			}
			break;
			
			case "browse":{
				ItemList itemList = new ItemList();
				itemList.setItemList(db.selectItems());
				request.setAttribute("itemlist", itemList);
				nextPage = "items.jsp";
			}
		}
		
		Types navBar = db.getType();
		request.getSession().setAttribute("navBar", navBar);
		
		db.close();
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
	}
	/**
	 * load information from cookie to bean
	 * @param request
	 * @param response
	 */
	private void loadCookie(HttpServletRequest request, HttpServletResponse response){
		Cookie cookieList[] = request.getCookies();
		Cookie userCookie = searchCookie(cookieList, "user");
		if(userCookie != null){
			request.getSession().setAttribute("user", new Member());
		}
	}
	
	private Cookie searchCookie(Cookie cookieList[], String cookieName){
		if(cookieList != null){
			for(Cookie cookie : cookieList){
				if(cookie.getName().equals(cookieName)){
					return cookie;
				}
			}
		}
		return null;
	}
	
	private boolean isLogged(HttpServletRequest request){
		return request.getSession().getAttribute("user") != null;
	}
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
		try {
			processRequest(request, response);
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
		}
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
		try {
			processRequest(request, response);
		} catch (ClassNotFoundException ex) {
			Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
		}
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
