/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import java.util.HashMap;

/**
 *
 * @author mute
 */
public class ItemList implements Serializable{
    private HashMap<String,Item> itemList;

    /**
     * @return the itemList
     */
    public HashMap<String,Item> getItemList() {
        return itemList;
    }

    /**
     * @param itemList the itemList to set
     */
    public void setItemList(HashMap<String,Item> itemList) {
        this.itemList = itemList;
    }
}
