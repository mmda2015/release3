package com.example.mmda;

import com.until.Constant;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;


public class SingleGameActivity extends ActionBarActivity {

	private int quesNumber = 0;
	private int rightNumber = 1;///////////////////////Ӧ����0 ��������1
	private ImageButton answer1, answer2, answer3, answer4;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
				WindowManager.LayoutParams.FLAG_FULLSCREEN);// ȫ��
		requestWindowFeature(Window.FEATURE_NO_TITLE);// û�б�����
		setContentView(R.layout.activity_single_game);
		
		answer1 = (ImageButton) findViewById(R.id.answer1);
		answer2 = (ImageButton) findViewById(R.id.answer2);
		answer3 = (ImageButton) findViewById(R.id.answer3);
		answer4 = (ImageButton) findViewById(R.id.answer4);
		//������������ȷ��ѡ����
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.single_game, menu);
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
	public void onAnswer1(View view) {
		switch (rightNumber){
		case 1:
			answer1.setBackgroundResource(R.drawable.choice_right);
			break;
		case 2:
			answer2.setBackgroundResource(R.drawable.choice_right);
			break;
		case 3:
			answer3.setBackgroundResource(R.drawable.choice_right);
			break;
		case 4:
			answer4.setBackgroundResource(R.drawable.choice_right);
			break;
		default:
				break;
		}
		if (rightNumber != 1){
			answer1.setBackgroundResource(R.drawable.choice_fault);
		} else {
			Constant.singleScore += 20;////////////////////////�ȼ��趼�Ǽ�20
		}
		quesNumber++;
		if (quesNumber == 6){
			Intent intent = new Intent();
			intent.setClass(SingleGameActivity.this, SingleScoreActivity.class);
			startActivity(intent);
			finish();
		} else{
			//ȡ��һ����
		}
	}
	
	//����ڶ�����
		public void onAnswer2(View view) {
			switch (rightNumber){
			case 1:
				answer1.setBackgroundResource(R.drawable.choice_right);
				break;
			case 2:
				answer2.setBackgroundResource(R.drawable.choice_right);
				break;
			case 3:
				answer3.setBackgroundResource(R.drawable.choice_right);
				break;
			case 4:
				answer4.setBackgroundResource(R.drawable.choice_right);
				break;
			default:
					break;
			}
			if (rightNumber != 2){
				answer2.setBackgroundResource(R.drawable.choice_fault);
			} else {
				Constant.singleScore += 20;////////////////////////�ȼ��趼�Ǽ�20
			}
			quesNumber++;
			if (quesNumber == 1){////////////////////////////������1��ʵ�ʿ�������6,8
				Intent intent = new Intent();
				intent.setClass(SingleGameActivity.this, SingleScoreActivity.class);
				startActivity(intent);
				finish();
			} else{
				//ȡ��һ����
			}
		}
		
		//�����������
		public void onAnswer3(View view) {
			switch (rightNumber){
			case 1:
				answer1.setBackgroundResource(R.drawable.choice_right);
				break;
			case 2:
				answer2.setBackgroundResource(R.drawable.choice_right);
				break;
			case 3:
				answer3.setBackgroundResource(R.drawable.choice_right);
				break;
			case 4:
				answer4.setBackgroundResource(R.drawable.choice_right);
				break;
			default:
					break;
			}
			if (rightNumber != 3){
				answer3.setBackgroundResource(R.drawable.choice_fault);
			} else {
				Constant.singleScore += 20;////////////////////////�ȼ��趼�Ǽ�20
			}
			quesNumber++;
			if (quesNumber == 1){
				Intent intent = new Intent();
				intent.setClass(SingleGameActivity.this, SingleScoreActivity.class);
				startActivity(intent);
				finish();
			} else{
				//ȡ��һ����
			}
		}
		
		//������ĸ���
		public void onAnswer4(View view) {
			switch (rightNumber){
			case 1:
				answer1.setBackgroundResource(R.drawable.choice_right);
				break;
			case 2:
				answer2.setBackgroundResource(R.drawable.choice_right);
				break;
			case 3:
				answer3.setBackgroundResource(R.drawable.choice_right);
				break;
			case 4:
				answer4.setBackgroundResource(R.drawable.choice_right);
				break;
			default:
					break;
			}
			if (rightNumber != 4){
				answer4.setBackgroundResource(R.drawable.choice_fault);
			} else {
				Constant.singleScore += 20;////////////////////////�ȼ��趼�Ǽ�20
			}
			quesNumber++;
			if (quesNumber == 1){
				Intent intent = new Intent();
				intent.setClass(SingleGameActivity.this, SingleScoreActivity.class);
				startActivity(intent);
				finish();
			} else{
				//ȡ��һ����
			}
		}
	
}
