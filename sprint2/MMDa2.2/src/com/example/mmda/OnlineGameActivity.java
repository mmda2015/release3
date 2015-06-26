package com.example.mmda;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;

public class OnlineGameActivity extends ActionBarActivity {

	private int quesNum = 0;
	private int rightNum = 1;///////////////////////Ӧ����0 ��������1
	private ImageButton ans1, ans2, ans3, ans4;
	private ImageView star, card;
	private ImageView cmptImage1, cmptImage2;
	private int cmptResult = -1;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);// ȫ��
		requestWindowFeature(Window.FEATURE_NO_TITLE);// û�б�����
		setContentView(R.layout.activity_online_game);
		
		ans1 = (ImageButton) findViewById(R.id.ans1);
		ans2 = (ImageButton) findViewById(R.id.ans2);
		ans3 = (ImageButton) findViewById(R.id.ans3);
		ans4 = (ImageButton) findViewById(R.id.ans4);
		
		star = (ImageView) findViewById(R.id.rightStar);
		card = (ImageView) findViewById(R.id.faultCard);
		
		cmptImage1 = (ImageView) findViewById(R.id.competitor1);
		cmptImage2 = (ImageView) findViewById(R.id.competitor2);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.online_game, menu);
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
	
	//�����һ����
		public void onAns1(View view) {
			switch (rightNum){
			case 1:
				ans1.setBackgroundResource(R.drawable.choice_right);
				break;
			case 2:
				ans2.setBackgroundResource(R.drawable.choice_right);
				break;
			case 3:
				ans3.setBackgroundResource(R.drawable.choice_right);
				break;
			case 4:
				ans4.setBackgroundResource(R.drawable.choice_right);
				break;
			default:
					break;
			}
			if (rightNum != 1){
				ans1.setBackgroundResource(R.drawable.choice_fault);
			} else {
				//����÷�
			}
			quesNum++;
			if (quesNum == 1){
				//�ȽϽ��, ӮΪ1�� ��Ϊ0
				
				if (cmptResult == 1){
					Intent intent = new Intent();
					intent.setClass(OnlineGameActivity.this, OnlineWinActivity.class);
					startActivity(intent);
					finish();
				} else if (cmptResult == 0){
					Intent intent = new Intent();
					intent.setClass(OnlineGameActivity.this, OnlineLoseActivity.class);
					startActivity(intent);
					finish();
				} else {
					Intent intent = new Intent();
					intent.setClass(OnlineGameActivity.this, OnlineLoseActivity.class);//////ƽ��
					startActivity(intent);
					finish();
				}
				
			} else{
				//ȡ��һ����
			}
		}
		
		public void onRightStar(View view) {
			
		}
		
		public void faultCard(View view) {
			
		}
}
