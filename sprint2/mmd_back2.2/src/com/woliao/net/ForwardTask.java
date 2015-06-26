package com.woliao.net;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.HashMap;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.woliao.constant.Config;
import com.woliao.model.Prop;
import com.woliao.model.User;
import com.woliao.service.QuestionService;
import com.woliao.service.FriendService;
import com.woliao.service.PropService;
import com.woliao.service.UserService;
import com.woliao.util.RandomUtil;

public class ForwardTask extends Task{
	//这个HashMap是用来存放每个Socket连接的
	private static HashMap<String, Socket> map = new HashMap<String, Socket>();
	private String name=null;
	private String ip;
	//输入流
	private BufferedReader in;
	//输出流
	private PrintWriter out;
	//Socket对象
	private Socket socket;
	//用来存放接收的信息
	private JSONObject message;
	//请求类型
	private int requestType;
	//控制run方法里的while循环
	private boolean onWork=true;
	
	//接收一个Socket对象的构造方法
	public ForwardTask(Socket socket){
		this.socket = socket;
		try {
			//初始化输入流和输出流
			in = new BufferedReader(new InputStreamReader(socket.getInputStream(), "UTF-8"));
			out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), "UTF-8")), true);
			ip = socket.getInetAddress().getHostAddress();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void run() {
		
		
		while (onWork) {
			try {
				receiveMessage();
			} catch (Exception e) {
//				e.printStackTrace();
				System.out.println( ip +" Client is close");
				if(name!=null){
					System.out.println(ip+":"+name+"~~退出了！！");
					map.remove(name); 
					new UserService().setStateToNonOnline(name);
				}
				break; //为什么要让receiveMessage方法中的异常抛出来，这个break是重点，当有异常时终止while循环
			}
		}
		try {
			if(socket != null){
				socket.close();
			}
			if(in != null){
				in.close();
			}
			if(out != null){
				out.close();
			}
			socket = null;
			in = null;
			out = null;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void setWorkState(boolean state){
		this.onWork = state;
	}
	
	//接收信息
	public void receiveMessage() {
//		将从输入流中读到的信息封装成JSONObject对象
		try{
			message = new JSONObject(in.readLine());
			System.out.println(ip +":客户端发来的请求是："+message);
			requestType = message.getInt(Config.REQUEST_TYPE);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		switch (requestType) {
		case Config.REQUEST_LOGIN: //处理“登录”请求
			handLogin();
			break;
		case Config.REQUEST_QUICK_LOGIN: //处理“快速登录”请求
			handQuickLogin();
			break;
		case Config.REQUEST_REGISTER: //处理“注册”请求
			handRegister();
			break;
		case Config.REQUEST_EXIT: //处理“退出”请求
			handExit();
			break;
		case Config.REQUEST_GET_PROP: //处理“获取道具”请求
			handGetProp();
			break;
		case Config.REQUEST_MODIFY_PROP: //处理“修改道具”请求
			handModifyProp();
			break;
		case Config.REQUEST_ADD_FRIEND: //处理“增加好友”请求
			handAddFriend();
			break;
		case Config.REQUEST_GET_FRIEND: //处理“获取好友”请求
			handGetFriends();
			break;
		case Config.REQUEST_GET_USERS_ONLINE: //处理“获取在线用户”请求
			handGetOnlineUsers();
			break;
		case Config.REQUEST_GET_SCORES: //处理“获取积分”请求(获取玩家信息)
			handGetScore();
			break;
		case Config.REQUEST_ADD_SCORES: //处理“添加积分”请求
			handModifyProp();
			break;
		case Config.REQUEST_SEND_INVITE://处理“邀战”请求
			handInvite();
			break;
		case Config.REQUEST_INVITE_RESULT://处理“邀战结果”请求
			handInviteResult();
			break;
		case Config.REQUEST_EXIT_GAME://退出游戏界面的请求
			handExitGame();
			break;
		case Config.REQUEST_ADD_PLAYERSCORE:
			handAddPlayerScore();
			break;
		case Config.REQUEST_PK_RESULT:
			handPKRestult();
			break;
		case Config.REQUEST_GET_QUESTION:
			handGetQuestion();
			break;
		default:
			 /* System.out.println("default");
				onWork=false;
				socket.close();
				socket=null;*/
			break;
		}
	}
	//pk结果的发送请求
	private void handPKRestult(){
		System.out.println("客户发送了pk结果的请求！");
		try {
//			String username = message.getString("username");//发送者
			String playername = message.getString("playername");//接受者
			Socket sendSocket = map.get(playername);
			PrintWriter outSend = new PrintWriter(new BufferedWriter(
					new OutputStreamWriter(sendSocket.getOutputStream(),
							"UTF-8")), true);
			JSONObject sendObject = new JSONObject();
			sendObject.put("requestType", Config.REQUEST_PK_RESULT);
//			sendObject.put("result",Config.FAIl);
			outSend.println(sendObject.toString());
			outSend.flush();
			System.out.println(sendObject.toString()+"这是pk结果json");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	//挑战是“添加积分”请求
	private void handAddPlayerScore(){
		try {
			System.out.println("客户发出了挑战时添加积分告诉对方的请求！");
			int num = message.getInt("num");
			String playername = message.getString("playername");
			Socket sendSocket = map.get(playername);
			PrintWriter outSend = new PrintWriter(new BufferedWriter(
					new OutputStreamWriter(sendSocket.getOutputStream(),
							"UTF-8")), true);
			JSONObject sendObject = new JSONObject();
			sendObject.put("requestType", Config.REQUEST_ADD_PLAYERSCORE);
			sendObject.put("num", num);
			outSend.println(sendObject.toString());
			System.out.println(sendObject.toString()+"这是挑战时的添加积分的json");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	//处理获取在线用户请求
	private void handGetOnlineUsers() {
		try {
			System.out.println(ip+":发出了获取在线用户请求");
			JSONObject obj= new UserService().findOnlineUsers();
			String data = obj.toString();
			System.out.println(ip+":获取在线用户成功~~~"+data);
			out.println(data);
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	//获取好友列表
	private void handGetFriends() {
		try {
			String username = message.getString("username");
			System.out.println(ip + "发出了获取好友列表请求");
			JSONObject obj = new JSONObject();
			obj.put(Config.REQUEST_TYPE, Config.REQUEST_GET_FRIEND);
			JSONArray arr = new FriendService().getFriends(username);
			obj.put("list", arr);
			String str = obj.toString();
			System.out.println(ip + "获取好友列表成功"+str);
			out.println(str);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//获取问题列表
		private void handGetQuestion() {
			try {
				int typeMain = message.getInt("typeMain");
				int typeSub = message.getInt("typeSub");
				System.out.println(ip + "发出了获取问题列表请求");
				JSONObject obq = new JSONObject();
				obq.put(Config.REQUEST_TYPE, Config.REQUEST_GET_QUESTION);
				JSONArray arr =new QuestionService().getQuestion(typeMain, typeSub);
				obq.put("list1", arr);
				String str = obq.toString();
				System.out.println(ip + "获取问题成功"+str);
				out.println(str);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	//添加好友
	private void handAddFriend() {
		try {
			String selfName = message.getString("username");
			String friendName = message.getString("playername");
			
			System.out.println(ip+":"+selfName + "发出了添加好友请求");
			JSONObject obj = new JSONObject();
			obj.put(Config.REQUEST_TYPE, Config.REQUEST_ADD_FRIEND);
			if(new FriendService().addFriend(selfName, friendName)){
				obj.put(Config.RESULT, Config.SUCCESS);
				System.out.println(ip+":"+selfName + "添加好友成功");
			}else{
				obj.put(Config.RESULT, Config.FAIl);
				System.out.println(ip+":"+selfName + "添加好友失败");
			}
			out.println(obj.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//修改道具
	private void handModifyProp() {
		try {
			System.out.println(ip + ":发出了修改积分请求");
			String username = message.getString("username");
			String propName = message.getString("propName");
			int num = message.getInt("num");
			new PropService().modifyProp(username, propName, num);
			JSONObject obj = new JSONObject();
			obj.put(Config.REQUEST_TYPE, Config.REQUEST_MODIFY_PROP);
			obj.put(Config.RESULT, Config.SUCCESS);
			out.println(obj.toString());
			System.out.println(ip + ":" + username + "修改积分成功");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//处理获取道具
	private void handGetProp() {
		try {
			System.out.println(ip+":发出了获取道具请求");
			String username = message.getString("username");
			Prop prop = new PropService().getProp(username);
			JSONObject obj = new JSONObject();
			obj.put(Config.REQUEST_TYPE, Config.REQUEST_GET_PROP);
			obj.put("deng", prop.getDeng());
			obj.put("ka", prop.getKa());
			obj.put("score", prop.getScore());
			String data = obj.toString();
			System.out.println(ip + ":" + username + "成功获取道具~~~"+data);
			out.println(data);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//处理获取积分
		private void handGetScore() {
			try {
				System.out.println(ip+"获取玩家信息请求");
				String username = message.getString("username");
				Prop prop = new PropService().getProp(username);
				JSONObject obj = new JSONObject();
				obj.put(Config.REQUEST_TYPE, Config.REQUEST_GET_SCORES);
				obj.put("deng", prop.getDeng());
				obj.put("ka", prop.getKa());
				obj.put("score", prop.getScore());
				String data = obj.toString();
				System.out.println(ip+"获取"+username+"信息请求~~"+data);
				out.println(data);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		

	//快速登录
	private void handQuickLogin(){
		try {
			System.out.println(ip+":客户端发出了快速登录请求");
			JSONObject obj = null;
			boolean flag = true;
			while(flag){
				String username = RandomUtil.getRandomUsername();
				String password = RandomUtil.getRandomPassword();
				name = username;
				obj = new JSONObject();
				obj.put(Config.REQUEST_TYPE, Config.REQUEST_QUICK_LOGIN);
				User user = new User();
				user.setUsername(username);
				user.setPassword(password);
				if(new UserService().register(user)){
//					obj.put(Config.RESULT, Config.SUCCESS);
					obj.put("username", username);
					obj.put("password", password);
					new UserService().setStateToOnline(username);
					System.out.println(ip+":快速登录成功,服务器为你分配的用户名：" + username + ",密码：" + password);
					map.put(username, socket);
					flag = false;
				}
				
			}
			
//			String username = RandomUtil.getRandomUsername();
//			String password = RandomUtil.getRandomPassword();
//			
//			JSONObject obj = new JSONObject();
//			obj.put(Config.REQUEST_TYPE, Config.REQUEST_QUICK_LOGIN);
//			
//			User user = new User();
//			user.setUsername(username);
//			user.setPassword(password);
			
//			if(new UserService().register(user)){
//				obj.put(Config.RESULT, Config.SUCCESS);
//				obj.put("username", username);
//				obj.put("password", password);
//				new UserService().setStateToOnline(username);
//				System.out.println(username + "快速登录成功");
//				map.put(username, socket);
//			}else{
//				obj.put(Config.RESULT, Config.FAIl);
//				System.out.println(username + "快速登录失败");
//			}
			out.println(obj.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//注册
	private void handRegister() {
		try {
			System.out.println(ip+"客户端发出了注册请求");
			
			JSONObject obj = new JSONObject();
			obj.put(Config.REQUEST_TYPE, Config.REQUEST_REGISTER);
			
			User user = new User();
			String name = message.getString("username");
			user.setUsername(name);
			user.setPassword(message.getString("password"));
			
			if(new UserService().register(user)){
				obj.put(Config.RESULT, Config.SUCCESS);
				System.out.println(ip + ":" + name + "注册成功");
			}else{
				obj.put(Config.RESULT, Config.FAIl);
				System.out.println(ip + ":" + name + "注册失败");
			}
			out.println(obj.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//处理“登录”请求
	private void handLogin(){
		try {
			System.out.println(ip + "客户端发出了登录请求");
			
			String username = message.getString("username");
			String password = message.getString("password");
			
			JSONObject obj = new JSONObject();
			obj.put(Config.REQUEST_TYPE, Config.REQUEST_LOGIN);
			
			UserService userService = new UserService();
			boolean result=userService.getUsernameState(username)==Config.USER_STATE_NON_ONLINE;
			if(userService.login(username, password)&&result){
				name = username;
				map.put(username, socket);
				obj.put(Config.RESULT, Config.SUCCESS);
				System.out.println(ip+":"+ username + "登录成功");
			}else{
				obj.put(Config.RESULT, Config.FAIl);
				System.out.println(ip+":"+ username + "登录失败");
			}
			out.println(obj.toString());
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	//处理“邀战”请求
	private void handInvite(){
		try {
			System.out.println("客户发送了邀战的请求！");
			String inviteplayer = message.getString("username");//发送邀请的人
			String rec_inviteplayer = message.getString("playername");//被邀请的人
			int model = message.getInt("model");//游戏模式
			Socket sendSocket = map.get(rec_inviteplayer);
			PrintWriter outSend = new PrintWriter(new BufferedWriter(
					new OutputStreamWriter(sendSocket.getOutputStream(),
							"UTF-8")), true);
			JSONObject sendObject = new JSONObject();
			sendObject.put("requestType", Config.REQUEST_SEND_INVITE);
			sendObject.put("username",inviteplayer);
			sendObject.put("model", model);
			outSend.println(sendObject.toString());
			System.out.println(sendObject.toString()+"这是邀战时的json");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	//处理“邀战结果”请求
	private void handInviteResult(){
		try{
			System.out.println("客户发送邀战结果的请求！");
			int result = message.getInt("result");
			String receivePlayer = message.getString("playername");
			Socket sendSocket = map.get(receivePlayer);
			PrintWriter outSend = new PrintWriter(new BufferedWriter(
					new OutputStreamWriter(sendSocket.getOutputStream(),
							"UTF-8")), true);
			JSONObject sendObject = new JSONObject();
			sendObject.put("result", result);
			sendObject.put("requestType", Config.REQUEST_INVITE_RESULT);
			outSend.println(sendObject.toString());
			System.out.println(sendObject.toString()+"邀战的结果哦！！");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//处理“退出游戏界面”请求！
	private void handExitGame(){
		System.out.println("客户发送了退出游戏界面的请求！");
		try {
			String playername = message.getString("playername");
			String username = message.getString("username");
			Socket sendSocket = map.get(playername);
			PrintWriter outSend = new PrintWriter(new BufferedWriter(
					new OutputStreamWriter(sendSocket.getOutputStream(),
							"UTF-8")), true);
			JSONObject sendObject = new JSONObject();
			sendObject.put("username", username);
			sendObject.put("requestType", Config.REQUEST_EXIT_GAME);
			outSend.println(sendObject.toString());
			System.out.println("退出游戏界面"+sendSocket.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//处理“退出”请求
	private void handExit(){
		try {
			System.out.println(ip+"发出了退出请求");
			String username = message.getString("username");
			//将run方法中的while停止
			setWorkState(false);
			name = null;
			map.remove(username);
			new UserService().setStateToNonOnline(username);
			JSONObject obj = new JSONObject();
			obj.put(Config.REQUEST_TYPE, Config.REQUEST_EXIT);
			obj.put(Config.RESULT, Config.SUCCESS);
			out.println(obj.toString());
			System.out.println(ip + ":" + username + "退出成功"+obj.toString());
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}

	@Override
	protected boolean needExecuteImmediate() {
		// TODO Auto-generated method stub
		return false;
	}
}
