package com.codingdojo.ninjagold.models;


import java.util.Random;

public class RandomNumber {
    public static int minNumber;
    public static int maxNumber;

    public RandomNumber(int minNumber, int maxNumber) {

    }
    public static int getRandomNumber(int minNumber, int maxNumber) {
        Random random = new Random();
        int num = (int)(Math.random() * (maxNumber - minNumber) + minNumber);
        return num;
    }
}
