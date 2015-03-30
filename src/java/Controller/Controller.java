package Controller;

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
import src.DbManager;
import src.Hasher;

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
			if(searchCookie(request.getCookies(), "user") != null){
				request.setAttribute("state", "login");
				System.err.println(request.getParameter("state"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Returner");
				dispatcher.forward(request, response);
				return;
			}else{
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Anonymous");
				dispatcher.forward(request, response);
				return;
			}
		}
		
		DbManager db = new DbManager();
		db.connect();
		Types navBar = db.getType();
		request.getSession().setAttribute("navBar", navBar);

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
				String name = request.getParameter("name");
				String password = request.getParameter("password");
				Member user = db.getMember(name);
				if(user != null && user.getPassword().equals(Hasher.digest(password))){
					Cookie userCookie = new Cookie("user", name);
					userCookie.setMaxAge(30*60);
					response.addCookie(userCookie);
					RequestDispatcher dispatcher = request.getRequestDispatcher("/Returner");
					dispatcher.forward(request, response);
					return;
				}else{
					RequestDispatcher dispatcher = request.getRequestDispatcher("/Anonymous");
					dispatcher.forward(request, response);
					return;
				}
			}
			
			case "logout":{
				Cookie userCookie = searchCookie(request.getCookies(), "user");
				if(userCookie != null){
					userCookie.setMaxAge(0);
					response.addCookie(userCookie);
				}
				HttpSession session = request.getSession();
				session.setAttribute("shoppingcart", null);
				session.setAttribute("user", null);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Anonymous");
				dispatcher.forward(request, response);
				return;
			}

			case "type":
			case "category":{
				RequestDispatcher dispatcher = request.getRequestDispatcher("/ItemList");
				dispatcher.include(request, response);
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
		db.close();
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
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
			response.setContentType("text/html;charset=UTF-8");
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
			response.setContentType("text/html;charset=UTF-8");
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
