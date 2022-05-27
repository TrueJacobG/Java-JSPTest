package com.github.truejacobg.jsptest.testjsp.component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@ToString
public class Clothes {
    private String name;
    private int size;

    Clothes(){
        name = "Empty?";
        size = 0;
    }
}
