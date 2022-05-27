package com.github.truejacobg.jsptest.testjsp.component;

public class Tshirt extends Clothes{
    private CoolColor color;

    public Tshirt(String name, int size, CoolColor color){
        super(name, size);
        this.color = color;
    }

    @Override
    public String toString() {
        return super.toString() + " " + color;
    }
}
