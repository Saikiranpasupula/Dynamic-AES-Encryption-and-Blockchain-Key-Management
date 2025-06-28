package com.file;

import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA256Genearation {

	// Method to calculate SHA-256 hash of a file
	 public static String calculateSHA256(InputStream inputStream) throws NoSuchAlgorithmException, IOException {
	        MessageDigest digest = MessageDigest.getInstance("SHA-256");
	        byte[] buffer = new byte[1024];
	        int bytesRead;
	        while ((bytesRead = inputStream.read(buffer)) != -1) {
	            digest.update(buffer, 0, bytesRead);
	        }
	        byte[] hashBytes = digest.digest();
	        return bytesToHex(hashBytes);
	    }

	    // Convert byte array to hex string
	    private static String bytesToHex(byte[] hashBytes) {
	        StringBuilder hexString = new StringBuilder();
	        for (byte b : hashBytes) {
	            String hex = Integer.toHexString(0xff & b);
	            if (hex.length() == 1) {
	                hexString.append('0');
	            }
	            hexString.append(hex);
	        }
	        return hexString.toString();
	    }
}
