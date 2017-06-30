package com.sysadv.exception;

public class SysadvException extends Exception {

	private static final long serialVersionUID = 1L;

	private String message;

	public SysadvException(String message) {
		super(message);
	}
	
	@Override
	public String getMessage() {
		return this.message;
	}
}
