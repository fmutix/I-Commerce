package bean;

import java.io.Serializable;
import java.util.List;

public class Categorys implements Serializable{
	private List<Types> list;

	/**
	 * @return the list
	 */
	public List<Types> getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(List<Types> list) {
		this.list = list;
	}
}
