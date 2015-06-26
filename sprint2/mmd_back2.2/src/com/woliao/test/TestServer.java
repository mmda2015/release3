package com.woliao.test;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

import com.woliao.net.ForwardTask;
import com.woliao.net.ThreadPool;

public class TestServer {
	public static void main(String[] args) {
		try {
			ServerSocket serverSocket = new ServerSocket(8898);
			ThreadPool threadPool = ThreadPool.getInstance();
			while(true){
				Socket socket = serverSocket.accept();
				System.out.println();
				System.out.println();
				System.out.println("aass");
				System.out.println(socket.toString());
				ForwardTask task = new ForwardTask(socket);
				threadPool.addTask(task);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
