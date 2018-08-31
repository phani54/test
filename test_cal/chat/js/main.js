var lastTimeID = 0;
var user_id = 1;
var opponenet_id = 1;
var room_id = 0;
var path = 'localhost/chat/';
$(document).ready(function() {
	$('#btnSend').click(function(){
		sendChatText();
		$('#chatInput').val("");
	});
	startChat();
});

function startChat(){
	getChatText();
	setInterval(function(){ getChatText(); }, 2000);
}

function getChatText(){
	// console.log(11)
	$.ajax({
		type: "GET",
		url: "/chat/refresh.php?lastTimeID="+lastTimeID+"&user_id="+user_id+"&opponenet_id="+opponenet_id+"&room_id="+room_id,
	}).done(function( data )
	{
		var jsonData = JSON.parse(data);
		var jsonLength = jsonData.results.length;
		var html = "";
		for (var i = 0; i < jsonLength; i++) {
			var result = jsonData.results[i];
			html += '<div style="color:#'+result.color+'">(' + result.chattime+ ') <b>' + result.usrname +'</b>: '+result.chattext+ '</div>';
			lastTimeID = result.id;
			user_id = result.user_id;
			opponenet_id = result.opponenet_id;
			room_id = result.room_id;
		}
		$('#view_ajax').append(html);
	});
}

function sendChatText(){
	var chatInput = $('#chatInput').val();
	if(chatInput != ""){
		$.ajax({
			type: "GET",
			url: "/chat/submit.php?chattext=" + encodeURIComponent( chatInput )+"&user_id="+user_id+"&opponenet_id="+opponenet_id+"&room_id="+room_id
		});
	}
}