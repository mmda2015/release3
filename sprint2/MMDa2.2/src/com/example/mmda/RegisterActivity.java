package com.example.mmda;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;

public class RegisterActivity extends ActionBarActivity {

	TextView username, password, repassword;
	String name, pwd, repwd;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);// 全屏
		requestWindowFeature(Window.FEATURE_NO_TITLE);// 没有标题栏
		setContentView(R.layout.activity_register);
		
		username = (TextView) findViewById(R.id.user);
		password = (TextView) findViewById(R.id.pwd);
		repassword = (TextView) findViewById(R.id.repwd);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.register, menu);
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
	
	//登陆
	public void ok(View view) {

		name = username.getText().toString().trim();
		pwd = password.getText().toString().trim();
		repwd = repassword.getText().toString().trim();
			
		Intent intent = new Intent();
		intent.setClass(RegisterActivity.this, OnlineMainActivity.class);
		startActivity(intent);
		finish();
		
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
	
	//登陆
	public void cancel(View view) {		
		Intent intent = new Intent();
		intent.setClass(RegisterActivity.this, LoginActivity.class);
		startActivity(intent);
		finish();
	}
	
}
