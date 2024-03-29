var PagesUserProfile = (function() {
	//function to initiate Pulsate
	var runPulsate = function() {
		$('.pulsate').pulsate({
			color: '#C43C35', // set the color of the pulse
			reach: 20, // how far the pulse goes in px
			speed: 1000, // how long one pulse takes in ms
			pause: 0, // how long the pause between pulses is in ms
			glow: true, // if the glow should be shown too
			repeat: 3, // will repeat forever if true, if given a number will repeat for that many times
			onHover: false // if true only pulsate if user hovers over the element
		});
	};
	return {
		//main function to initiate template pages
		init: function() {
			runPulsate();
		}
	};
})();
