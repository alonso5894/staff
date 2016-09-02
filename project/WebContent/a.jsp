

$( function(){
	$("#regi-reply").button().on("click", function(){
		addReply();
	});
	
	function addReply(){
		var url = "EmployeeServlet?command=reply_insert"
		var sendJson = new Object();
		
		sendJson.replyContent = $("#content").val();
		sendJson.noticenum = $("#noticenum").val();
		sendJson.empid = $("empid").val();
		$.ajax({
			url:url,
			data:sendJson,
			type:'post',
			contentType:"application/x-www-form-urlencoded; charset=UTF-8",
			success:function(json){
				data = JSON.parse(json);
				
				$("#reply").append(
						"<tr class='" + data.empnum + "'>" +
						"<td>" + data.empname + "</td>" +
						"<td>" + data.content+ "</td>" +
						"<td>" + data.writedate +"</td>"+
						"</tr>");
				
//				
			}
		})
		
		
	};
		
	
	});