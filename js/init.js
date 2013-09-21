$(document).ready(function() {

	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	
	$('#left-button').sidr();
	$('#up-button').sidr();
	changeView('home');
});


function checkAuth(){
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

	} else{
		$('#side-content').innerHTML = "";
		$('#reload-content').innerHTML = "";
		$('#side-content').load('pages/login.html',sideAfterLoad());
		$('#reload-content').load('pages/'+view+'.html',contentAfterLoad(opt));
	}
}