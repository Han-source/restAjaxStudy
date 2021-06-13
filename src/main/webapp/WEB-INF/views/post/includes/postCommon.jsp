<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- TableHeader에 정의된 static method를 사용하기 위해 정의함 -->
<jsp:useBean id="tablePrinter" class="www.dream.com.framework.printer.TablePrinter"/>

<!-- Begin Page Content -->
<div class="form-group">
	<label>아이디</label> <input name="id" value="${post.id}" class="form-control" readonly>
</div>

<div class="form-group">
	<label>제목</label> <input id="title" name="title"
		value="${post.title}" class="form-control" readonly>
</div>

<!-- id값으로 content를 그대로 사용하는것은 위험 -->
<div class="form-group">
	<label>내용</label>
	<textarea id="txacontent" name="content" class="form-control"  rows="3"
		readonly>${post.content}</textarea>
</div>


<div class="form-group">
	<label>작성자</label> <input class="form-control" value="${post.writer.name}" readonly>
</div>

<div class="form-group">
	<label>조회수</label> <input value="${post.readCnt}" readonly>
	<label>좋아요</label> <input value="${post.likeCnt}" readonly>
	<label>싫어요</label> <input value="${post.dislikeCnt}" readonly>
</div>

<div class="form-group">
	<label>등록시점 : </label>
	<fmt:formatDate pattern="yyyy-MM-dd" value="${post.registrationDate}" />
	<label>, 수정시점 : </label>
	<fmt:formatDate pattern="yyyy-MM-dd" value="${post.updateDate}" />
</div>

<script>
	// 수정 처리시 title, content 에는 readonly는 없어야함 
	// 신규 처리시 title, content 에는 value와 readonly는 없어야함 
	function controlInput(includer) {
		if (includer === '수정' || includer === '신규'){
			$('#title').attr("readonly", false);
			$('#txacontent').attr("readonly", false);
		}
	}
	
</script>