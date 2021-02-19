package com.radio.mapper;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.radio.domain.PictureRoomVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class PictureRoomMapperTests {
	
	@Autowired
	private PictureRoomMapper mapper;
	
	@Test
	public void hasMapper() {
		assertNotNull(mapper);
	}
	
	@Test
	public void insertTest() {
		PictureRoomVO vo = new PictureRoomVO();
		vo.setTitle("new title");
		vo.setContent("new content");
		vo.setMemberId("user0");
		vo.setFileName("");
		
		int c = mapper.insert(vo);
		assertEquals(1, c);
	}
	
	@Test
	public void selectById() {
		PictureRoomVO vo = mapper.selectById(2L);
		
		assertNotNull(vo);
	}
}
