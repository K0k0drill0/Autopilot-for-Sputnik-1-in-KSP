lock throttle to 1.
stage.


lock steering to heading(0, 90).
until floor(missiontime) = 66 {
	if floor(missiontime) >= 10 and floor(missiontime) < 20 {
		lock steering to heading(0, 80).
		//print "80".
	}
	else if floor(missiontime) >= 20 and floor(missiontime) < 30 {
		lock steering to heading(0, 70).
		//print "70".
	}
	else if floor(missiontime) >= 30 and floor(missiontime) < 40 {
		lock steering to heading(0, 60).
		//print "60".
	}
	else if floor(missiontime) >= 40 and floor(missiontime) < 50 {
		lock steering to heading(0, 50).
		//print "50".
	}
	else if floor(missiontime) >= 50 and floor(missiontime) < 60 {
		lock steering to heading(0, 40).
		//print "40".
	}
	else if floor(missiontime) = 65 {
		print "staging.".
		lock throttle to 0.
		stage.
		lock throttle to 1.
		break.
	}
}.

until floor(missiontime) = 261 {
	if floor(missiontime) >= 65 and floor(missiontime) <= 87 {
		lock steering to heading(0, 35).
		//print "30".
	}
	if floor(missiontime) >= 88 and floor(missiontime) < 110 {
		lock steering to heading(0, 30).
		//print "30".
	}
	else if floor(missiontime) >= 110 and floor(missiontime) <= 132 {
		lock steering to heading(0, 25).
		//print "20".
	}
	if floor(missiontime) >= 133 and floor(missiontime) < 155 {
		lock steering to heading(0, 20).
		//print "30".
	}
	else if floor(missiontime) >= 155 and floor(missiontime) <= 177 {
		lock steering to heading(0, 15).
		//print "10".
	}
	if floor(missiontime) >= 178 and floor(missiontime) < 200 {
		lock steering to heading(0, 10).
		//print "30".
	}
	else if floor(missiontime) >= 200 and floor(missiontime) <= 222 {
		lock steering to heading(0, 5).
		//print "0".
	}
	if floor(missiontime) >= 223 and floor(missiontime) < 255 {
		lock steering to heading(0, 0).
		//print "30".
	}
	else if floor(missiontime) = 260 {
		print "staging.".
		set throttle to 0.
		wait 3. 
		stage.
		break.
	}
	
}.


print "Period equals to " + ship:orbit:period + " seconds.".
print "Eccentricity equals to " + ship:orbit:eccentricity + ".".

