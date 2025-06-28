package com.bean;

import java.util.Random;

public class RandomStringGenerator {
	
	
	 public static String generateRandomString(int length) {
	        String characters = "0123456789";  // Customizable character set
	        Random random = new Random();
	        StringBuilder stringBuilder = new StringBuilder(length);

	        for (int i = 0; i < length; i++) {
	            int randomIndex = random.nextInt(characters.length());
	            stringBuilder.append(characters.charAt(randomIndex));
	        }

	        return stringBuilder.toString();
	    }

	   
	    
	    
	    public static String generatepublickey(int length) {
	        String characters = "0123456789abcdefghijklmnopqrstuvwxyz";  // Customizable character set
	        Random random = new Random();
	        StringBuilder stringBuilder = new StringBuilder(length);

	        for (int i = 0; i < length; i++) {
	            int randomIndex = random.nextInt(characters.length());
	            stringBuilder.append(characters.charAt(randomIndex));
	        }

	        return stringBuilder.toString();
	    }
	    
	    
	    public static String generateprivateckey(int length) {
	        String characters = "0123456789abcdefghijklmnopqrstuvwxyz";  // Customizable character set
	        Random random = new Random();
	        StringBuilder stringBuilder = new StringBuilder(length);

	        for (int i = 0; i < length; i++) {
	            int randomIndex = random.nextInt(characters.length());
	            stringBuilder.append(characters.charAt(randomIndex));
	        }

	        return stringBuilder.toString();
	    }

	   
}
