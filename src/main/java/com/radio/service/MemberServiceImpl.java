package com.radio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.radio.mapper.MemberMapper;
import com.radio.model.MemberVO;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public void insert(MemberVO member) {
		mapper.insertMember(member);
	}
	
	@Override
	public String check_email(String email) {
		return mapper.check_email(email);
		
	}
	
	@Override
	public String check_id(String id) {
		return mapper.check_id(id);
		
	}
}
