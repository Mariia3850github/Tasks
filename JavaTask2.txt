package com.company;
import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        System.out.print("Enter the text: ");
        Scanner in = new Scanner(System.in);
        String Str = in.nextLine();
        Verification(Str);
    }
    static void Verification(String StrVer) {
        int StrVerLength = StrVer.length();
        boolean StrCheck = true;
        for (int i = 0; i < StrVerLength; i++) {
            if (StrVer.charAt(i)!=StrVer.charAt(StrVerLength-1-i)) {
                System.out.println("The string is not a palindrome.");
                StrCheck = false;
                break;
            }
        }
        if (StrCheck) {
            System.out.println("The string is a palindrome.");
        }
    }
}
