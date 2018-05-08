/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author a
 */
public class Quiz {
    private static ArrayList<Question> test;
    public static ArrayList<Question> getTest(){
        if (test==null){
            test = new ArrayList<>();
            test.add(new Question("1+2", "3", new String[] {"1", "2", "3"}));
            test.add(new Question("7+2", "9", new String[] {"5", "9", "1"}));
            test.add(new Question("1+4", "5", new String[] {"3", "5", "6"}));
            test.add(new Question("7-2", "5", new String[] {"9", "0", "5"}));
            test.add(new Question("2+2", "4", new String[] {"4", "0", "2"}));
        }
        return test;
    }
}
