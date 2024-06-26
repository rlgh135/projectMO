package com.twojo.model.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.twojo.model.dto.GPostDTO;
import com.twojo.mybatis.SQLMapConfig;

public class GPostDAO {
	private SqlSession ss;
	
	public GPostDAO(){
		ss = SQLMapConfig.getFactory().openSession(true);
	}
	
	public List<GPostDTO> findByGPostListByGroupnum(long groupnum){
		return ss.selectList("GPost.selectListByGroupnum", groupnum);
	}
	public long getPostCnt(long groupnum) {
		return ss.selectOne("GPost.getPostCnt", groupnum);
	}
	public long getPostCnt(long groupnum, String keyword) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("groupnum", groupnum);
		datas.put("keyword", keyword);
		return ss.selectOne("GPost.getPostCntWithKey",datas);
	}

	public List<GPostDTO> getList(long groupnum, int startRow, int pageSize) {
		// TODO Auto-generated method stub
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("groupnum", groupnum);
		datas.put("startRow", startRow);
		datas.put("pageSize", pageSize);
		return ss.selectList("GPost.getList", datas);
	}
	public List<GPostDTO> getListWithKeyword(long groupnum, int startRow, int pageSize, String keyword) {
		// TODO Auto-generated method stub
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("groupnum", groupnum);
		datas.put("startRow", startRow);
		datas.put("pageSize", pageSize);
		datas.put("keyword", keyword);
		return ss.selectList("GPost.getList", datas);
	}
}
