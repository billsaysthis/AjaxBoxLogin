// This var + function manage toggling the Login box
// as well as looking for clicks when its visible
// Requires jquery.js to already be invoked
var observing = false;
function toggleLoginBox() {
	if(jQuery('#login-box').visible()) {
		if(observing) {
			jQuery(document.body).stopObserving('click');
			observing = false;
		}
		jQuery('#loginLink:parent').css({backgroundColor: 'transparent'});
		jQuery("#login-box").hide();
	} else {
		jQuery('#loginLink:parent').css({backgroundColor: '#eff7f7'});
		jQuery("#login-box").show();
		observing = true;
		// Observer for clicks when Login box visible
		// Has to distinguish whether click is outside box
		jQuery(document.body).click(function(event) {
			var shouldLeave = false;
			shouldLeave = (jQuery(this) == jQuery('#login-box') || jQuery(this).hasClass('in-login-box') || (jQuery(this) == jQuery('#loginLink')) || jQuery(this).hasClass('#loginLinkContainer'));
			if(shouldLeave) {
				Event.stop(event);
				return false;
			}
			toggleLoginBox();
    	return 1;
		});
	}
}
