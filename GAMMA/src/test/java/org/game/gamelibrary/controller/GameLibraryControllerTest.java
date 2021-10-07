package org.game.gamelibrary.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
					"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
@WebAppConfiguration
public class GameLibraryControllerTest {
	
	@Autowired
	WebApplicationContext ctx; 
	
	MockMvc mockMvc; 
	
	@Before
	public void setUpMockMvc() { 
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build(); 
	}
	
	@Test
	public void getReviewListTest() throws Exception {
		String resultPage = mockMvc.perform(
					MockMvcRequestBuilders.get("/library/conLibrary/kjw011231"))
						.andReturn().getModelAndView().getViewName();
		log.info(resultPage);
	}
}
