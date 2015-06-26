package com.network;

import android.content.Context;

public class Conmmunication {
	
	Context context;
	private NetWorker netWorker;
	public static Conmmunication instance;
	
	//生成Conmmunication通信类的实例
	public static Conmmunication newInstance() {
		if (instance == null) {
			instance = new Conmmunication();
			System.out.println("连接到服务器");
		}
		return instance;
	}
	
	//将构造函数私有化，使其不能生成多个实例，防止多次连接服务器
	private Conmmunication() {
		netWorker = new NetWorker();
		netWorker.start();
	}
	
	//登陆
	public void login(String userName, String password) {
		netWorker.login(userName, password);
	}
	//注册
	public void register(String userName, String password, int headID) {
		netWorker.register(userName, password,headID);
	}
	//发送退出游戏请求
	public void exitGame() {
		netWorker.exitGame();
	}
	//快速登录
	public void registerq() {
		netWorker.registerq();
	}
	//商品
	public void getshop(String name) {
		netWorker.getshop(name);
	}
	//道具
	public void changshop(String prpoName, int num) {
		netWorker.changshop(prpoName, num);
	}
	//时间
		public void changtime( int stime) {
			netWorker.changtime( stime);
		}
	//玩家列表
	public void getPlayerList() {
		netWorker.getPlayerList();
	}
	//好友列表
	public void getFriendList() {
		netWorker.getFriendList();
	}
	//添加玩家为好友
	public void addFriend(String friendname) {
		netWorker.addFriend(friendname);
	}
	//邀请好友挑战
	public void yaoZhan(String playername, String username, int zfdmModel) {
		netWorker.yaoZhan(playername, username, zfdmModel);
	}
	//是否接受请求
	public void inviteResult(String playername, int result) {
		netWorker.inviteResult(playername, result);
	}
	//发送成语请求
	public void getChengYu(int num,int level) {
		netWorker.getChengYu(num,level);
	}
	//pk中发送的分数
	public void addPlayerScore(String username, int flag1) {
		netWorker.addPlayerScore(username, flag1);
	}
	//发送获取玩家积分
	public void getScore(String name) {
		netWorker.getScore(name);
	}
	//添加积分请求
	public void addScore(int num) {
		netWorker.addScore(num);
	}
	//发送pk值
	public void sendPKResult(String playername) {
		netWorker.sendPKResult(playername);
	}
	//发送退出游戏请求
	public void exitGameActivity(String playername, String username) {
		netWorker.exitGameAcitvity(playername, username);
	}
	
	//发送充值请求
	public void addMoney(String userName, int moneyInt) {
		// TODO Auto-generated method stub
		netWorker.addMoney(userName, moneyInt);	
	}
	
	//退出链接，清空资源
	public void clear() {
		netWorker.setOnWork(false);
		instance = null;
	}

	public void deletefriend(String string) {
		// TODO Auto-generated method stub
		netWorker.deletefriend(string);	
	}

	public void modifyinfo(String newnameStr, String newpsd) {
		// TODO Auto-generated method stub
		netWorker.modifyinfo(newnameStr,newpsd);
	}


	
}

