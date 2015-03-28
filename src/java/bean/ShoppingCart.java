package bean;

import java.util.HashMap;

public class ShoppingCart {
	private HashMap<String,ShoppingCartItem> shoppingCart;

	/**
	 * @return the shoppingCart
	 */
	public HashMap<String,ShoppingCartItem> getShoppingCart() {
		return shoppingCart;
	}

	/**
	 * @param shoppingCart the shoppingCart to set
	 */
	public void setShoppingCart(HashMap<String,ShoppingCartItem> shoppingCart) {
		this.shoppingCart = shoppingCart;
	}
}
