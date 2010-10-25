// This var + function manage toggling the Login box
// as well as looking for clicks when its visible
var observing = false;
function toggleLoginBox() {
	if($('login-box').visible()) {
		if(observing) {
			$(document.body).stopObserving('click');
			observing = false;
		}
		$('loginLink').ancestors()[0].setStyle({backgroundColor: 'transparent'});
		$("login-box").hide();
	} else {
		$('loginLink').ancestors()[0].setStyle({backgroundColor: '#eff7f7'});
		$("login-box").show();
		observing = true;
		// Observer for clicks when Login box visible
		// Has to distinguish whether click is outside box
		Event.observe(document.body, 'click', function(event) {
			var elm = event.element();
			var shouldLeave = false;
			shouldLeave = (elm == $('login-box') || elm.hasClassName('in-login-box') || (elm == $('loginLink')) || elm.hasClassName('loginLinkContainer'));
			if(shouldLeave) {
				Event.stop(event);
				return false;
			}
			toggleLoginBox();
		});
	}
}
