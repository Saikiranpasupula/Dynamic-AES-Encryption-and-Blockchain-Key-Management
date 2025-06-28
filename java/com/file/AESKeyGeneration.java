package com.file;

import java.security.NoSuchAlgorithmException;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

public class AESKeyGeneration {

	public static SecretKey generateAESKey(int keySize) {
        try {
           
            KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
            
            
            keyGenerator.init(keySize);  
            
            
            return keyGenerator.generateKey();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    
    public static String bytesToHex(byte[] byteArray) {
        StringBuilder hexString = new StringBuilder();
        for (byte b : byteArray) {
            hexString.append(String.format("%02x", b));
        }
        return hexString.toString();
    }

    public static void main(String[] args) {

        SecretKey secretKey = generateAESKey(256);  

        if (secretKey != null) {
            System.out.println("AES Key generated successfully:");
            System.out.println("Algorithm: " + secretKey.getAlgorithm());
            System.out.println("Format: " + secretKey.getFormat());

           
            String hexKey = bytesToHex(secretKey.getEncoded());
            System.out.println("Hexadecimal Encoded AES Key: " + hexKey.substring(0, 16));
        } else {
            System.out.println("Error generating AES key");
        }
    }
}
