$(document).ready(function(){ 
    loadPage();
});
function loadPage(url) {
   if (url == undefined) {
      $('#container').load('projects/index.iphone.erb', hijackLinks);
   } else {
      $('#container').load(url + ' #content', hijackLinks);
   }
}
function hijackLinks() {
    $('#container a').click(function(e){
        e.preventDefault();
        loadPage(e.target.href);
    });
}


