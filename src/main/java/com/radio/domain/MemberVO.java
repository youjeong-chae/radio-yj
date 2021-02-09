package com.radio.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private Long bno;
	private String name;
	private String id;
	private String password;
	private String email;
	private String add1;
	private String add2;
	private String add3;
	private String add4;
	private int grade;
	private Date regdate;

}
