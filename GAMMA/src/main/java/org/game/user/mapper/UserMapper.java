package org.game.user.mapper;

import org.game.user.domain.ConsumerVO;

public interface UserMapper {
	
	// 아이디 중복 체크
	public int idChk(ConsumerVO userVO);
	
	// 패스워드 중복 체크
	public int passChk(ConsumerVO userVO);
	
	// 회원가입
	public void userJoin(ConsumerVO userVO);
	
	// 로그인
	public ConsumerVO userLogin(ConsumerVO userVO);

	// 회원정보수정
	public ConsumerVO userModify(String cid);
	
	public void userLogout();
	
	public void userRemove();
	
	
	public ConsumerVO userGet(ConsumerVO userVO);

}
