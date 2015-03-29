package bean;

import java.io.Serializable;
import java.util.HashMap;

public class Types implements Serializable{
	private HashMap<String,Categorys> list;

	/**
	 * @return the list
	 */
	public HashMap<String,Categorys> getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(HashMap<String,Categorys> list) {
		this.list = list;
	}
}
