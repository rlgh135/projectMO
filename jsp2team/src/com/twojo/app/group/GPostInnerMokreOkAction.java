package com.twojo.app.group;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.twojo.action.Action;
import com.twojo.action.Transfer;
import com.twojo.model.dao.GPostDAO;
import com.twojo.model.dto.GPostDTO;

public class GPostInnerMokreOkAction implements Action{
	@Override
	public Transfer execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String temp = req.getParameter("page");
		int page = temp == null || temp.equals("") ? 1 : Integer.parseInt(temp);
		String keyword = req.getParameter("keyword");
		long groupnum =Long.parseLong(req.getParameter("groupnum"));
		
		//4페이지 찾아오기
		GPostDAO gpdao = new GPostDAO();
		int pageSize = 4;
		int startRow = (page-1)*pageSize;
		List<GPostDTO> findlist = null;
		if(keyword == null || keyword.equals("")) {
			findlist = gpdao.getList(groupnum, startRow, pageSize);
		}
		else {
			findlist = gpdao.getListWithKeyword(groupnum,startRow,pageSize,keyword);
		}
		
		//JSON에 담기 위한 준비
		ArrayList<GPostDTO> list = new ArrayList<GPostDTO>();
		for (GPostDTO gpost : findlist) {
			list.add(gpost);
		}
		
		Gson gson = new Gson();
		JsonObject json = new JsonObject();
		
		//응답을 html이 아닌 json으로
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		json.add("datas", gson.toJsonTree(list));
		System.out.println(json.get("datas"));
		PrintWriter out = resp.getWriter();
		out.print(json.toString());
		out.flush();
		
		Transfer transfer = new Transfer();
		transfer.setRedirect(false);
		transfer.setPath("/app/group/groupinner.jsp?groupnum="+groupnum+"&page="+page+"&keyword="+keyword);
		
		return transfer;
	}
}
