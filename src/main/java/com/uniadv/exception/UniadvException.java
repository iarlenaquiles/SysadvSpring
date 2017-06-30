package com.uniadv.exception;

public class UniadvException extends Exception {

	private static final long serialVersionUID = 1L;

	private String message;

	public UniadvException(String message) {
		this.message = message;
	}
	
	@Override
	public String getMessage() {
		return this.message;
	}
}
