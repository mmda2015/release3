package com.example.mmda;

import java.util.Timer;
import java.util.TimerTask;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;

import com.network.Conmmunication;

public class LoginActivity extends ActionBarActivity {

	public static Conmmunication con;
	EditText username,password;
	String name, psw;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);// ȫ��
		requestWindowFeature(Window.FEATURE_NO_TITLE);// û�б�����
		setContentView(R.layout.activity_login);
		
		username = (EditText) findViewById(R.id.username);
		password = (EditText) findViewById(R.id.password);
		
		//���ӵ�������
		//con = Conmmunication.newInstance();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.login, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	
	//��½
	public void onLogin(View view) {

		name = username.getText().toString().trim();
		psw = password.getText().toString().trim();
			
		Intent intent = new Intent();
		intent.setClass(LoginActivity.this, OnlineMainActivity.class);
		startActivity(intent);
		//finish();
		
		Timer time = new Timer();
		TimerTask task = new TimerTask() {				
			@Override
			public void run() {
				// TODO Auto-generated method stub
				//con.login(name, psw);
			}
		};
		time.schedule(task, 3000);
	}

	//���ٵ�½
	public void onRegisterq(View view) {

		name = username.getText().toString().trim();
		psw = password.getText().toString().trim();
			
		Intent intent = new Intent();
		intent.setClass(LoginActivity.this, OnlineMainActivity.class);
		startActivity(intent);
		//finish();
		
//		Timer time = new Timer();
//		TimerTask task = new TimerTask() {				
//			@Override
//			public void run() {
//				// TODO Auto-generated method stub
//				//con.login(name, psw);
//			}
//		};
//		time.schedule(task, 3000);
	}
	
	//����ע��
	public void onRegister(View view) {
		Intent intent = new Intent();
		intent.setClass(LoginActivity.this, RegisterActivity.class);
		startActivity(intent);
		//finish();
	}
		
	//��������
	public void onSingle(View view) {
		Intent intent = new Intent();
		intent.setClass(LoginActivity.this, SingleMainActivity.class);
		startActivity(intent);
		//finish();
	}
	
}
