package com.bbshop.bit.service;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.CommunityVO;
<<<<<<< HEAD
import com.bbshop.bit.domain.PagingVO;

public interface CommunityService {
	
//	public List<CommunityVO> getList();
	
	public List<CommunityVO> getList(Map<String,Object> map);

=======

public interface CommunityService {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);
	public CommunityVO getPost(long board_num);
	public List<CommunityVO> getList(Map<String,Object> map);
	public int deletePost(long board_num);
	public long getBoardNum();
	public int updatePost(CommunityVO community);
	public Long findNextPost(String team_name, Long board_num);
	public Long findPreviousPost(String team_name, Long board_num);
	public long updateHit(long board_num);
>>>>>>> 8553b687ee4c3a295e8843b57eb60efe9978d75c
	public int getTotal(Map<String, Object> map);

}
