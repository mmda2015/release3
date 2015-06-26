package com.woliao.service;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.woliao.dao.FriendDAO;
import com.woliao.dao.PropDAO;
import com.woliao.dao.QuestionDAO;

public class QuestionService {
	
	public JSONArray getQuestion(int typeMain,int typeSub) throws JSONException{
		List<String> questions = new QuestionDAO().getQuestion(typeMain, typeSub);
		//PropDAO propDAO = new PropDAO();
		JSONArray arr = new JSONArray();
		for(int i = 0; i < questions.size();){
			JSONObject obq = new JSONObject();
			String question = questions.get(i);
			String answer1 = questions.get(i+1);
			String answer2 = questions.get(i+2);
			String answer3 = questions.get(i+3);
			String answer4 = questions.get(i+4);
			String right = questions.get(i+5);
			obq.put("question", question);
			obq.put("answer1", answer1);
			obq.put("answer2", answer2);
			obq.put("answer3", answer3);
			obq.put("answer4", answer4);
			obq.put("right", right);
			i=i+6;
			arr.put(obq);
		}
		return arr;
	}
}
