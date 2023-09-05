package com.company;
import java.util.Scanner;
public class Main{
    public static void main(String[] args){
        Scanner in = new Scanner(System.in);
        System.out.print("Enter an integer a: ");
        int a = in.nextInt();
        System.out.print("Enter an integer b: ");
        int b = in.nextInt();
        System.out.println("Before the exchange: a = " + a + " and b= " + b);
        a = a ^ b;
        b = a ^ b;
        a = a ^ b;
        System.out.println("After the exchange: a = " + a + " and b= " + b);
    }
}
