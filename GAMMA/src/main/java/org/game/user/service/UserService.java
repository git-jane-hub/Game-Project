package org.game.user.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.game.user.domain.ConsumerVO;
import org.springframework.web.servlet.ModelAndView;

public interface UserService {

	// 아이디 중복 체크
	public int idChk(ConsumerVO userVO);
	
	// 패스워드 중복 체크
	public int passChk(ConsumerVO userVO);
	
	// 회원가입
	public void userJoin(ConsumerVO userVO);

	// 로그인
	 public ConsumerVO userLogin(ConsumerVO userVO) ;

	 // 회원정보 수정
	 public ConsumerVO userModify(String cid);

	public void userLogout();

	public void userDelete();


	public ConsumerVO userSearch(ConsumerVO userVO);

}
