// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

// $(function(){ $(document).foundation(); });
//

if (typeof thumbs == "undefined") {
const thumbs = document.getElementById("thumbs_Up");
const unhideSomething = (SOMETHING) => SOMETHING.style.visibility="visible";
const hideSomething = (SOMETHING) => SOMETHING.style.visibility="hidden";
const hideThumbs = () => hideSomething(thumbs);
const hideThumbsTimer = (TIMEOUT) => setTimeout(hideThumbs, TIMEOUT);
const thumbsUp = () => {
  unhideSomething(thumbs);
  thumbs.src="https://media1.tenor.com/images/9e44ac46aa2e28be154810be63f661a7/tenor.gif?itemid=7815642";
  hideThumbsTimer(1200);
}
//
const clickHelp = document.getElementById("has-tip")
clickHelp.addEventListener("click", thumbsUp);
}
