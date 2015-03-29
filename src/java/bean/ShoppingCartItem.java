package bean;

import java.io.Serializable;

public class ShoppingCartItem implements Serializable{
	private Item name;
	private int quantity;

	/**
	 * @return the name
	 */
	public Item getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(Item name) {
		this.name = name;
	}

	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}
