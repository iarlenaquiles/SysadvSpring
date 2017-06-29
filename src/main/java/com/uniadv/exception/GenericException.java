package com.uniadv.exception;

public class GenericException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	private String cod_erro;

	private String msg_erro;

	public GenericException(String cod_erro, String msg_erro) {
		this.cod_erro = cod_erro;
		this.msg_erro = msg_erro;
	}

	public String getCod_erro() {
		return cod_erro;
	}

	public void setCod_erro(String cod_erro) {
		this.cod_erro = cod_erro;
	}

	public String getMsg_erro() {
		return msg_erro;
	}

	public void setMsg_erro(String msg_erro) {
		this.msg_erro = msg_erro;
	}

}
