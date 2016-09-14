/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.wctc.saa.calculator.model;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Gladwin
 */
public class ListService {
    private String userName ="Priya";
    private List<String> shoppingList;
    
    public ListService(){
        shoppingList = new ArrayList<>();
        shoppingList.add("Chocolate");
         shoppingList.add("Nuts");
          shoppingList.add("Icecream");
    }

    public List<String> getShoppingList() {
        return shoppingList;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
