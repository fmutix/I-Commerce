package bean;

import java.io.Serializable;
import java.util.List;

public class Categorys implements Serializable{
	private List<String> list;

	/**
	 * @return the list
	 */
	public List<String> getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(List<String> list) {
		this.list = list;
	}
}
