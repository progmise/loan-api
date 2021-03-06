package com.example.loanapi.payload;

import java.io.Serializable;

import org.springframework.http.HttpStatus;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonPropertyOrder({"success", "message"})
public class ApiResponse implements Serializable {

	@JsonIgnore
	private static final long serialVersionUID = 8517185101599824123L;

	private Boolean success;
	private String message;

	@JsonIgnore
	private HttpStatus status;

	public ApiResponse() { }

	public ApiResponse(Boolean success, String message) {
		
		this.success = success;
		this.message = message;
	}

	public ApiResponse(Boolean success, String message, HttpStatus httpStatus) {
		
		this.success = success;
		this.message = message;
		this.status = httpStatus;
	}

	public Boolean getSuccess() {
		
		return success;
	}

	public void setSuccess(Boolean success) {
		
		this.success = success;
	}

	public String getMessage() {
		
		return message;
	}

	public void setMessage(String message) {
		
		this.message = message;
	}

	public HttpStatus getStatus() {
		
		return status;
	}

	public void setStatus(HttpStatus status) {
		
		this.status = status;
	}
}