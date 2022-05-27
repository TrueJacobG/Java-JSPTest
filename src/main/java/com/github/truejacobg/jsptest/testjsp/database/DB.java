package com.github.truejacobg.jsptest.testjsp.database;


import com.github.truejacobg.jsptest.testjsp.component.Clothes;
import com.github.truejacobg.jsptest.testjsp.component.CoolColor;
import com.github.truejacobg.jsptest.testjsp.component.Tshirt;

import java.util.ArrayList;
import java.util.List;

public class DB {
    private static List<Clothes> db = new ArrayList<>();

    public static void addExamples(){
        db.add(new Tshirt("hawai tshirt", 30, CoolColor.BLUE));
        db.add(new Tshirt("fisherman tshirt", 27, CoolColor.GREEN));
        db.add(new Tshirt("basketball tshirt", 29, CoolColor.WHITE));
    }

    public static List<Clothes> getDb(){
        return db;
    }

}
