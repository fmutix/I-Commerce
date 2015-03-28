/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;

/**
 *
 * @author mute
 */
public class Item implements Serializable{
    private String name;
    private String type;
    private String category;
    private int price;
    private int attack;
    private int defense;
    private int magic;
    private int resistance;
    private int speed;
    private int move;
    private int jump;
    private int evasion;
    private String path;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the category
     */
    public String getCategory() {
        return category;
    }

    /**
     * @param category the category to set
     */
    public void setCategory(String category) {
        this.category = category;
    }

    /**
     * @return the price
     */
    public int getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(int price) {
        this.price = price;
    }

    /**
     * @return the attack
     */
    public int getAttack() {
        return attack;
    }

    /**
     * @param attack the attack to set
     */
    public void setAttack(int attack) {
        this.attack = attack;
    }

    /**
     * @return the defense
     */
    public int getDefense() {
        return defense;
    }

    /**
     * @param defense the defense to set
     */
    public void setDefense(int defense) {
        this.defense = defense;
    }

    /**
     * @return the magic
     */
    public int getMagic() {
        return magic;
    }

    /**
     * @param magic the magic to set
     */
    public void setMagic(int magic) {
        this.magic = magic;
    }

    /**
     * @return the resistance
     */
    public int getResistance() {
        return resistance;
    }

    /**
     * @param resistance the resistance to set
     */
    public void setResistance(int resistance) {
        this.resistance = resistance;
    }

    /**
     * @return the speed
     */
    public int getSpeed() {
        return speed;
    }

    /**
     * @param speed the speed to set
     */
    public void setSpeed(int speed) {
        this.speed = speed;
    }

    /**
     * @return the move
     */
    public int getMove() {
        return move;
    }

    /**
     * @param move the move to set
     */
    public void setMove(int move) {
        this.move = move;
    }

    /**
     * @return the jump
     */
    public int getJump() {
        return jump;
    }

    /**
     * @param jump the jump to set
     */
    public void setJump(int jump) {
        this.jump = jump;
    }

    /**
     * @return the evasion
     */
    public int getEvasion() {
        return evasion;
    }

    /**
     * @param evasion the evasion to set
     */
    public void setEvasion(int evasion) {
        this.evasion = evasion;
    }

    /**
     * @return the path
     */
    public String getPath() {
        return path;
    }

    /**
     * @param path the path to set
     */
    public void setPath(String path) {
        this.path = path;
    }
}
