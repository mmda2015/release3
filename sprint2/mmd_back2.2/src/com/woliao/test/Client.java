package com.woliao.test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;

import org.json.JSONException;
import org.json.JSONObject;

import com.woliao.constant.Config;

public class Client {
	private Socket socket;
	private static final String IP_SERVER = "192.168.56.1";
	private static final int PORT_SERVER = 8898;
	private PrintWriter out;
	private BufferedReader in;
	
	public Client(){
		try {
			socket = new Socket(IP_SERVER, PORT_SERVER);
			in = new BufferedReader(new InputStreamReader(socket.getInputStream(), "UTF-8"));
			out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), "UTF-8")), true);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] args) {
		JSONObject jObject = new JSONObject();
		try {
			jObject.put("requestType", Config.REQUEST_LOGIN);
			System.out.println("aaaaaaaa");
			jObject.put("username", "boiwnl");
			jObject.put("password", "278364");
		} catch (JSONException e) {
			e.printStackTrace();
		}
		Client client = new Client();
		while(true){
		client.out.println(jObject.toString());
		}
	}
}
