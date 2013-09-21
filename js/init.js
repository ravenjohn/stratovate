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
function contentAfterLoad(opt,view){
	if(view == "app_listing"){
		router.setMethod('get');
		router.setTargetUrl('/users/establishments');
		router.setParams({});
		events.setCurrentEvent('buildEst(data)');
		events.setErrorEvent('fail_req(data)');
		router.connect();
	}
	else if (view == "admin"){
		setupAdmin();
	}
}

function buildEst(data){
	console.log(data);
	str = "";
	rec = data.records;
	for(i=0;i<rec.length;i++){
		str+= "<tr><td><a href='#' onclick=\"changeView('app_page','"+rec[i].id+"')\">"+rec[i].name+"</a></td><td><p>Description here</p></td><td>Contact Number:"+rec[i].contact_number+"</td></tr>";
	}
	tb = document.getElementById('app-list-td');
	tb.innerHTML = "";
	tb.innerHTML = str;
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
		$('#side-content').load('pages/logout.html',sideAfterLoad());
	} else{
		$('#side-content').load('pages/login.html',sideAfterLoad());
	}
	$('#side-content').innerHTML = "";
	$('#reload-content').innerHTML = "";
	if(view == "admin"){
		if(checkAuth()){
			$('#reload-content').load('pages/admin.html',contentAfterLoad(opt,view));
		} else{
			$('#reload-content').load('pages/home.html',contentAfterLoad(opt,view));
		}
	} else{
		$('#reload-content').load('pages/'+view+'.html',contentAfterLoad(opt,view));
		$('#reload-content').load('pages/'+view+'.html',contentAfterLoad(opt,view));
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
	$.cookie('est_id', data.id,{path:'/'});
	$.cookie('access_token', access_token,{path:'/'});
	$.cookie('type', type,{path:'/'});
	$('#side-content').innerHTML = "";
	$('#reload-content').innerHTML = "";
	$('#side-content').load('pages/logout.html',sideAfterLoad());
	$('#reload-content').load('pages/admin.html',contentAfterLoad());
}
function s_logout(data){
	access_token = data.access_token;
	type = data.type;
	$.removeCookie('type', { path: '/' });
	$.removeCookie('access_token', { path: '/' });
	$.removeCookie('est_id', { path: '/' });
	window.location = "/";
}
function fail_req(data){
	obj = JSON.parse(data.responseText);
	console.log(obj);
	alert(obj.error);
}
function setupAdmin(){
	router.setMethod('get');
	router.setTargetUrl('/services/establishments');
	router.setParams({});
	events.setCurrentEvent('buildEst(data)');
	events.setErrorEvent('fail_req(data)');
	router.connect();	
}