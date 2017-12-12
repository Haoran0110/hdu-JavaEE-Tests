package com;

public class Computer implements Usb{
		
	private Usb usb;//依赖usb，不单独建立u盘和M盘对象
	
	public void setUsb(Usb usb){
		this.usb=usb;
	}
	public void read(){
		usb.read();
	}
	public void write() {
		usb.write();
	}
	public void test(){
		usb.read();
		usb.write();
	}
}
