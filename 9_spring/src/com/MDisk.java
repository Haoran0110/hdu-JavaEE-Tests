package com;

public class MDisk implements Usb{
	public void read(){
		System.out.println("M盘读数据");
	}
	public void write() {
		System.out.println("M盘写数据");
	}
}