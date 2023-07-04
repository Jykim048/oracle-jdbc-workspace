package com.kh.controller;
import java.util.HashMap;

import java.sql.SQLException;

import com.kh.model.dao.MemberDAO;
import com.kh.model.vo.Member;

public class MemberController {

	private HashMap<String, Member> map = new HashMap<>();
	private MemberDAO dao = new MemberDAO();
	
	public boolean joinMembership(Member m, String id) {

		// id가 없다면 회원가입 후 true 반환
		// 없다면 false 값 반환
		if(!map.containsKey(id)) {
			map.put(id, m);
			return true;
		}
		
		return false;

	}
	
	public String login(String id, String password) {

		// 로그인 성공하면 이름 반환
		// 실패하면 null 반환
		if(map.containsKey(id) && map.get(id).getPassword().equals(password)) {

			return map.get(id).getName();
		}

		return null;
	}
	
	public boolean changePassword(String id, String oldPw, String newPw) {

		if(map.containsKey(id) && map.get(id).getPassword().equals(oldPw)) {

			map.put(id, (newPw, map.get(id).getName()));
			return true;
		}
		return false;
		// 로그인 했을 때 null이 아닌 경우
		// 비밀번호 변경 후 true 반환, 아니라면 false 반환
		
		
		
		return false;
	}
	
	public void changeName(String id, String name) {

		// 이름 변경!
		if(map.containsKey(id)) {
			map.get(name);
			
		}
		
		
	}


}