package com.twojo.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.twojo.model.dto.GroupDTO;
import com.twojo.mybatis.SQLMapConfig;

public class GroupDAO {
	private SqlSession ss;
	public GroupDAO() {
		ss = SQLMapConfig.getFactory().openSession(true);
	}
	
	public GroupDTO findGroupByNum(long groupnum) {
		return ss.selectOne("Group.findGroupByNum", groupnum);
	}
	public long getUserCntInGroup(long groupnum) {
		return ss.selectOne("Group.getUserCntInGroup", groupnum);
	}
}
