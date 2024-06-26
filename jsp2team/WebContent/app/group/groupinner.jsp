<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${cp}/css/groupinnerstyle.css" rel="stylesheet">
<style>
	.replyHide{
	display: none;
	}
</style>
</head>
<body>
	<c:set var="page" value="${pararm.page}"/>
	<c:choose>
		<c:when test="${empty page or param.page <= 0}">
			<c:set var="page" value="1"/>
		</c:when>
		<c:otherwise>
			<c:set var="page" value="page"/>
		</c:otherwise>
	</c:choose>
	<div id="group_inner_wrap">
        <header>
            <nav>

            </nav>
        </header>
        <div class="group-inner contents" id="group_inner_container">
            <div id="groupinfobox" class="infobox">
                <div class="groupimg imgbox">
                    <img>
                </div>
                <div class="groupinfobox-inner">
                    <p id="groupname">${group.groupname}</p>
                    <p id="groupinfo">
                        <span class="gmem">멤버: ${usercnt}</span>
                        <span class="glead">리더: ${group.groupmaster}</span>
                    </p>
                    <div>
                        <div class="group-btn-box btnBox">
                                <input type="button" value="모임 가입하기">
                        </div>
                    </div>
                </div>
            </div>
            <div id="gpostsection">
                <div class="summary">
                    <div class="summarytitle">
                        <p>그룹 소개</p>
                    </div>
                    <div class="summaryinfo">
                        <p>${group.groupcontents}</p>
                        <ul class="grouptaglist">
                           <li class="groupaddrinfo circle-list-btn">
                                <a href="#">${group.groupaddr}</a>
                           </li>
                           <li class="groupcategoryinfo circle-list-btn">
                                <a href="">${group.groupcategory}</a>
                           </li> 
                        </ul>
                    </div>
                </div>
                <div class="groupsearch searchArea">
                    <div class="searchBox">
                        <input type="text" name="groupsearch">
                    </div>
                    <div class="searchBtnBox">
                        <input type="button" value="검색">
                    </div>
                </div>
                <div id="gpost" class="postsection">
                    <ul class="gpostList" id="gpList">
                    	<c:choose>
                    		<c:when test="${list != null and list.size()>0}">
                    			<c:forEach var="i" begin="0" end="${list.size() -1}">
                    				<c:set var="gpost" value="${list[i]}"/>
                    					<li class="gpostListwrap">
				                            <div class="gpostHead default-group-Head">
				                                <div class="badgeimg">
				                                    <img src="">
				                                </div>
				                                <div class="writerinfo badgeimg-right-info">
				                                    <p>
				                                        <a href="" class="usernamelink">${gpost.userid}</a>
				                                        <span>이런사람이에요</span>
				                                    </p>
				                                    <p class="regtime">${gpost.gpostregdate}</p>
				                                </div>
				                            </div>
				                            <div class="gpostContents">
				                                <div>
				                                    <p>
				                                    	${gpost.gpostcontents}
				                                    </p>
				                                    <div>
				                                        <input type="button" value="굿">
				                                        <input type="button" value="배드">
				                                    </div>
				                                    <div class="point-area showreplyBtn">
				                                        <div style="display: inline-block;">
				                                            <input type="button" value="좋아요 3개">
				                                        </div>
				                                        <div style="display: inline-block;">
				                                            <input type="button" value="댓글  ${reply_cnt_list[i]}개" onclick="showReply(${gpost.gpostnum})" style="cursor: pointer;">
				                                        </div>
				                                    </div>
				                                </div>
				                            </div>
				                            <div class="gpostReply${gpost.gpostnum} replyHide">
				                            	<div class="inputGPR reply${gpost.gpostnum} replyHide">
				                            		
				                            	</div>
				                                <ul class="greplyList${gpost.gpostnum}"></ul>
				                            </div>
				                        </li>
                    			</c:forEach>
                    		</c:when>
                    	<c:otherwise>
                    		<li>
                    			<p>등록된 게시글이 없습니다</p>
                    		</li>
                    	</c:otherwise>
                    	</c:choose>
                    </ul>
                </div>
            </div>
            <div id="grouprightsection">
                <div id="gannounce">
                    <p>공지사항</p>
                    <ul class="gpostList" id="gpGongji">
                        <li class="gpostListwrap">
                            <div class="gpostHead default-group-Head">
                                <div class="badgeimg">
                                    <img src="">
                                </div>
                                <div class="writerinfo badgeimg-right-info">
                                    <p>
                                        <a href="" class="usernamelink">블루</a>
                                        <span>이런사람이에요</span>
                                    </p>
                                    <p class="regtime">2시간전</p>
                                </div>
                            </div>
                            <div class="gpostContents">
                                <div>
                                    <p>
                                        내용이에요
                                        내용내용
                                        
                                        내용용내용
                                        <br><br><br><br><br><br><br><br>
                                    </p>
                                    <div>
                                        <input type="button" value="굿">
                                        <input type="button" value="배드">
                                    </div>
                                    <div class="point-area showreplyBtn">
                                        <div style="display: inline-block;">
                                            <input type="button" value="좋아요 3개">
                                        </div>
                                        <div style="display: inline-block;">
                                            <input type="button" value="댓글 3개">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="gpostReply">
                                <ul class="greplyList">
                                    <li class="greplyListwrap default-group-Head">
                                        <div class="badgeimg">
                                            <img src="">
                                        </div>
                                        <div class="badgeimg-right-info">
                                            <p class="replywriter">
                                                블루
                                            </p>
                                            <p class="replycontents">
                                                댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용<br>댓글내용<br>댓글내용<br>
                                            </p>
                                            <p class="gprregdate">2시간전</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
               <div id="grouppopular">
                    <p>이번 주 인기글!</p>
                    <ul class="gpostList" id="gpPopular">
                        <li class="gpostListwrap">
                            <div class="gpostHead default-group-Head">
                                <div class="badgeimg">
                                    <img src="">
                                </div>
                                <div class="writerinfo badgeimg-right-info">
                                    <p>
                                        <a href="" class="usernamelink">블루</a>
                                        <span>이런사람이에요</span>
                                    </p>
                                    <p class="regtime">2시간전</p>
                                </div>
                            </div>
                            <div class="gpostContents">
                                <div>
                                    <p>
                                        내용이에요
                                        내용내용
                                        
                                        내용용내용
                                        <br><br><br><br><br><br><br><br>
                                    </p>
                                    <div>
                                        <input type="button" value="굿">
                                        <input type="button" value="배드">
                                    </div>
                                    <div class="point-area showreplyBtn">
                                        <div style="display: inline-block;">
                                            <input type="button" value="좋아요 3개">
                                        </div>
                                        <div style="display: inline-block;">
                                            <input type="button" value="댓글 3개">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="gpostReply">
                                <ul class="greplyList">
                                    <li class="greplyListwrap default-group-Head">
                                        <div class="badgeimg">
                                            <img src="">
                                        </div>
                                        <div class="badgeimg-right-info">
                                            <p class="replywriter">
                                                블루
                                            </p>
                                            <p class="replycontents">
                                                댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용<br>댓글내용<br>댓글내용<br>
                                            </p>
                                            <p class="gprregdate">2시간전</p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
               </div> 
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	const cp = '${cp}';
    let page = '${page}';
    let keyword = '${keyword}';
	const groupnum = '${gpost.groupnum}';
</script>
<script>
    let lastScroll = 0;
    var curPage = ${page};
	
    
    function showReply(gpostnum){
    	console.log("호출");
    	var targetnode = document.getElementsByClassName("gpostReply"+gpostnum)[0];
    	targetnode.classList.toggle("replyHide");
    	
    	let parentRNode = document.getElementsByClassName("greplyList"+gpostnum)[0];
    	console.log(parentRNode);
    	console.log(parentRNode.childNodes);
    	console.log(parentRNode.childNodes.length);
    	if(parentRNode.childNodes.length === 0){
    		//긁기
    		console.log("들어옴?");
    		makeReply(gpostnum, 1);
    		//리스트 받아오고 이전,다음 버튼 만들기
    		if(parentRNode.childNodes.length === 0){
    			//댓글이 없습니다
    			console.log("노댓");
    		}
    	}
    }
    
    function makeReply(gpostnum, rpage){
    	var curRPage = 1;
    	const parentRnode = document.getElementsByClassName("greplyList"+gpostnum)[0];
    	const xhr = new XMLHttpRequest();
    	
    	xhr.onreadystatechange = function(){
    		if(xhr.readyState == 4){
    			if(xhr.status==200){
    				console.log(xhr.responseText);
    				const obj = JSON.parse(xhr.responseText);
    				const datas = obj.datas;
    				console.log(datas);
    				
    				for(let greply of datas){
    					let newLi = document.createElement('li');
					    newLi.className = 'greplyListwrap default-group-Head';
					    
					    newLi.innerHTML='<div class="gprnum' + greply.gprnum + '" style="display:none;"></div>' +
					    '<div class="badgeimg">' +
					    '    <img src="">' +
					    '</div>' +
					    '<div class="badgeimg-right-info">' +
					    '    <p class="replywriter">블루</p>' +
					    '    <p class="replycontents">' +greply.gprcontents+
					    '    </p>' +
					    '    <p class="gprregdate">'+greply.gprregdate+'</p>' +
					    '</div>';
					    
					    parentRnode.appendChild(newLi);	
    				}
    			}
    		}
    	}
    	
    	xhr.open("GET", cp+"/groupreply.gp?gpostnum="+gpostnum+"&page="+curRPage);
        xhr.send();
    }
    
    function makeDOM(){
    	console.log("불러오는 페이지: "+curPage);
        let orgnode = document.getElementsByClassName("gpostListwrap")[0];
		const xhr = new XMLHttpRequest();
		const parentnode = document.getElementById("gpList");
		
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4){
				if(xhr.status==200){
					//console.log(xhr.responseText);
					const obj = JSON.parse(xhr.responseText);
					//console.log(obj);
					const datas = obj.datas;
					//console.log(datas);
					
					//돔돔
					for(let gpost of datas){
						let newLi = document.createElement('li');
					    newLi.className = 'gpostListwrap';
					    console.log(gpost);
					    console.log(gpost.userid);
					    console.log(gpost.gpostregdate);

					    newLi.innerHTML = '<div class="gpostHead default-group-Head">' +
					                          '<div class="badgeimg">' +
					                              '<img src="">' +
					                          '</div>' +
					                          '<div class="writerinfo badgeimg-right-info">' +
					                              '<p>' +
					                                  '<a href="" class="usernamelink">'+gpost.userid+'</a>' +
					                                  '<span>이런사람이에요</span>' +
					                              '</p>' +
					                              '<p class="regtime">'+gpost.gpostregdate+'</p>' +
					                          '</div>' +
					                      '</div>' +
					                      '<div class="gpostContents">' +
					                          '<div>' +
					                              '<p>' +
					                                  gpost.gpostcontents+
					                              '</p>' +
					                              '<div>' +
					                                  '<input type="button" value="굿">' +
					                                  '<input type="button" value="배드">' +
					                              '</div>' +
					                              '<div class="point-area showreplyBtn">' +
					                                  '<div style="display: inline-block;">' +
					                                      '<input type="button" value="좋아요 3개">' +
					                                  '</div>' +
					                                  '<div style="display: inline-block;">' +
					                                      '<input type="button" value="댓글  +'${reply_cnt_list[i]}+'개" onclick="showReply(${gpost.gpostnum})" style="cursor: pointer;">' +
					                                  '</div>' +
					                              '</div>' +
					                          '</div>' +
					                      '</div>' +
					                      '<div class="gpostReply'+gpost.gpostnum+' replyHide">' +
					                          '<div class="inputGPR reply'+gpost.gpostnum+' replyHide">' +
					                          '</div>' +
					                          '<ul class="greplyList">' +
					                              '<li class="greplyListwrap default-group-Head">' +
					                                  '<div class="badgeimg">' +
					                                      '<img src="">' +
					                                  '</div>' +
					                                  '<div class="badgeimg-right-info">' +
					                                      '<p class="replywriter">' +
					                                          '블루' +
					                                      '</p>' +
					                                      '<p class="replycontents">' +
					                                          '댓글내용댓글내용댓글내용댓글내용댓글내용댓글내용<br>댓글내용<br>댓글내용<br>' +
					                                      '</p>' +
					                                      '<p class="gprregdate">2시간전</p>' +
					                                  '</div>' +
					                              '</li>' +
					                          '</ul>' +
					                      '</div>';

						parentnode.appendChild(newLi);
					}
					
				}
			}
		}
		xhr.open("GET", cp+"/groupinnerMore.gp?groupnum="+groupnum+"&page="+curPage+"&keyword=");
        xhr.send();
    }
    
    //무한스크롤 구현
    $(document).scroll(throttle(function() {
        var currentScroll = $(this).scrollTop();
        var documentHeight = $(document).height();
        var nowHeight = $(this).scrollTop() + $(window).height();

        if (currentScroll > lastScroll) {
            if (documentHeight < (nowHeight + (documentHeight * 0.1))) {
                curPage++;
                makeDOM();
            }
        }
        lastScroll = currentScroll;
    }, 1000));
    
  	//이벤트 딜레이
    function throttle(func, limit) {
        let lastFunc;
        let lastRan;
        return function() {
            const context = this;
            const args = arguments;
            if (!lastRan) {
                func.apply(context, args);
                lastRan = Date.now();
            } else {
                clearTimeout(lastFunc);
                lastFunc = setTimeout(function() {
                    if ((Date.now() - lastRan) >= limit) {
                        func.apply(context, args);
                        lastRan = Date.now();
                    }
                }, limit - (Date.now() - lastRan));
            }
        }
    }
    
  
</script>
</html>