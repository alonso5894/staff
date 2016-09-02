$( function(){
	$("#regi-reply").button().on("click", function(){
		addReply();
	});
	
	function addReply(){
		var url = "noticeServlet?command=reply_Insert"
		var sendJson = new Object();
		
		sendJson.replyComcon = $("#comcon").val();
		sendJson.notno = $("#notno").val();
		sendJson.id = $("id").val();
		$.ajax({
			url:url,
			data:sendJson,
			type:'post',
			contentType:"application/x-www-form-urlencoded; charset=UTF-8",
			success:function(json){
				data = JSON.parse(json);
				
				$("#reply").append(
						"<tr class='" + data.empno + "'>" +
						"<td>" + data.ename + "</td>" +
						"<td>" + data.comcon+ "</td>" +
						"<td>" + data.comdate +"</td>"+
						"</tr>");
				
			
			}
		})
		
		
	};
		
	
	});