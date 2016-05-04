$("#submit").click(function(){
	var name = $("#name").val();
	var price = $("#price").val();
	var info = $("#info").val();
	$.ajax({
		url: "addgoods.action",
		type: 'POST',
		dataType: 'JSON',
		data:{'name':name, 'price':price, 'info':info},
		success:function(data){
			alert(data["result"]);
//			$("#result").append(data["result"]);
		},
		error:function(){
			alert("failed");
		}
	})
});

$("#update").click(function(){
	var id = $("#id").val();
	var name = $("#name").val();
	var price = $("#price").val();
	var info = $("#info").val();
	$.ajax({
		url: "updategoods.action",
		type: 'POST',
		dataType: 'JSON',
		data:{'id':id, 'name':name, 'price':price, 'info':info},
		success:function(data){
			alert(data["result"]);
//			$("#result").append(data["result"]);
		},
		error:function(){
			alert("failed");
		}
	})
});
