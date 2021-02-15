package com.radio.mapper;

import com.radio.domain.MemberVO;

public interface MemberMapper {
	public int insertMember(MemberVO member);
	
	public String check_id(String id);
	
	public String check_email(String email);
}
