package com.santan.trade.exception;

public class SantanTradeException extends RuntimeException {
	
	public SantanTradeException(){
		super();
	}
	
	public SantanTradeException(String msg) {
		super(msg);
	}
	
	public SantanTradeException(String msg, Throwable ex){
		super(msg,ex);
	}
	
}
