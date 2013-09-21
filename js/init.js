$(document).ready(function() {
	var api_endpoint = "http://localhost.smsme.com"
	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	
	$('#left-button').sidr();
	$('#up-button').sidr();
	changeView('home');
});


function checkAuth(){
	if($.cookie('access_token') != undefined){
		return true;
	}
	return false;
}
function sideAfterLoad(){

}
function contentAfterLoad(opt){

}
function changeView(view,id){
	if(id != null){
		current_est = id;
	}
	var opt = null;
	if(view == "app_listing"){
		opt = 'map';
	}
	if(checkAuth()){
		alert("here..!!");
		$('#side-content').load('pages/logout.html',sideAfterLoad());
	} else{
		$('#side-content').innerHTML = "";
		$('#reload-content').innerHTML = "";
		$('#side-content').load('pages/login.html',sideAfterLoad());
		$('#reload-content').load('pages/'+view+'.html',contentAfterLoad(opt));
	}
}
function login(){
	uname = document.getElementById('uname');		
	pass = document.getElementById('password');
	if(uname && uname.value != ""){
		if(pass && pass.value != ""){
			var form_data = {
				name: uname.value,
				password: pass.value
			}

			router.setMethod('post');
			router.setTargetUrl('/users/login');
			router.setParams(form_data);
			events.setCurrentEvent('s_login(data)');
			events.setErrorEvent('fail_req(data)');
			router.connect();
		} else{
			alert("Fill in password");
		}
	} else{
		alert("Fill in username");
	}	
}
function logout(){
	console.log($.cookie('access_token'));
	var form_data = {
		access_token: $.cookie('access_token')
	}
	router.setMethod('get');
	router.setTargetUrl('/users/logout');
	router.setParams(form_data);
	events.setCurrentEvent('s_logout(data)');
	events.setErrorEvent('fail_req(data)');
	router.connect();
}

function s_login(data){
	access_token = data.access_token;
	type = data.type;
	$.cookie('access_token', access_token,{path:'/'});
	$.cookie('type', type,{path:'/'});
}
function s_logout(data){
	access_token = data.access_token;
	type = data.type;
	$.removeCookie('type', { path: '/' });
	$.removeCookie('access_token', { path: '/' });
	window.location = "/";
}
function fail_req(data){
	obj = JSON.parse(data.responseText);
	console.log(obj);
	alert(obj.error);
}