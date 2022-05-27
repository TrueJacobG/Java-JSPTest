package com.github.truejacobg.jsptest.testjsp.database;

import com.github.truejacobg.jsptest.testjsp.component.Clothes;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import java.util.List;

class DBTest {

    @Test
    public void test1(){
        DB db = new DB();
        db.addExamples();
        List<Clothes> clothes = db.getDb();

        for(Clothes c : clothes){
            System.out.println(c);
        }

        Assertions.assertNotNull(db);

    }

}