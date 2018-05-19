# Use desktop cursor
document.body.style.cursor = "auto"

clip_23 = new VideoLayer
	width: 1920
	height: 1080
	video: "images/clip_23.mov"
	parent: TV

clip_23.sendToBack()
	
participants.placeBefore(introBar)

OpaqueLayer.opacity = 0
OpaqueLayer.scale = 0

Part1.scale = 0
Part2.scale = 0

JuliaImage.opacity = 0
SarahImage.opacity = 0

JuliaText.opacity = 0
SarahText.opacity = 0

spinner.opacity = 0

PersonalVideo.scale = 0
JuliaName.opacity = 0
vol.scale = 0
mic.scale = 0
vid.scale = 0

clip_23.onClick ->
	participants.animate
		properties:
			y: 400
		time: 0.4
		curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 0.4, ->
		introBar.animate
			height: 0
		time: 0.3
		curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
	Utils.delay 1.4, ->
		Rectangle.animate
			properties:
				backgroundColor: "#F6F9FC"
			time: 0.4
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 1.8, ->
		participants.animate
			properties:
				y: 40
			time: 0.6
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
	Utils.delay 1.9, ->
		OpaqueLayer.animate
			properties:
				scale: 1	
				opacity: 1
			time: 0.3
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"	
	Utils.delay 2.0, ->
		Part1.animate
			properties:
				scale: 1	
			time: 0.3
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"	
		Part2.animate
			properties:
				scale: 1	
			time: 0.3
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"	
	Utils.delay 2.3, ->

		Part1.animate
			properties:
				rotationZ: 270
			time: 1.5
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"
		Part2.animate
			properties:
				rotationZ: 270
			time: 1.5
			curve: "cubic-bezier(0.4, 0.0, 0.2, 1)"	
	Utils.delay 3.8, ->
		JuliaImage.animate
			properties:
				opacity: 1
				scale: 1.2
			time: .1
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
		JuliaText.animate
			properties:
				opacity: 1
				scale: 1.2
			time: .1
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
		SarahText.animate
			properties:
				opacity: 1
				scale: 1.2
			time: .1
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
		SarahImage.animate
			properties:
				opacity: 1
				scale: 1.2
			time: .1
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
	Utils.delay 3.9, ->
		JuliaImage.animate
			properties:
				scale: 1
			time: .3
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
		JuliaText.animate
			properties:
				scale: 1
			time: .3
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
		SarahText.animate
			properties:
				scale: 1
			time: .3
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
		SarahImage.animate
			properties:
				scale: 1
			time: .3
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
	Utils.delay 4.0, ->
		Part1.visible = false 
		Part2.visible = false
		spinner.animate
			properties:
				opacity: 1
			time: .3
			curve: "cubic-bezier(0.4, 0.0, 0.2,1)"	 
	Utils.delay 4.3, ->
		spinner.animate
			properties:
				rotationZ: 360
			time: 0.9
			curve: "ease-out"
	Utils.delay 5.2, ->
		spinner.rotationZ = 0
		spinner.animate
			properties:
				rotationZ: 360
			time: 0.9
			curve: "ease-out"
	Utils.delay 6.1, ->
		opacity_Array = [spinner, JuliaText, SarahText, JuliaImage, SarahImage]
		for i in opacity_Array
			i.animate
				properties: 
					opacity: 0
				time: 0.3
				curve: "cubic-bezier(0.4, 0.0, 1, 1)"
		OpaqueLayer.animate 
			properties:
				backgroundColor: "#3F4F68"
			time: 0.3
			curve: "cubic-bezier(0.4, 0.0, 1, 1)"
# 	Utils.delay 7.3, ->
# 		mic.animate
# 			properties:
# 				scale: 1 
# 			time: 0.3
# 			curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
# 		JuliaName.animate
# 			properties:
# 				opacity: 1
# 			time: 0.3
# 			curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
# 	Utils.delay 7.6, ->
# 		vid.animate
# 			properties:
# 				scale: 1 
# 			time: 0.3
# 			curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
# 	Utils.delay 7.9, ->
# 		vol.animate
# 			properties:
# 				scale: 1 
# 			time: 0.3
# 			curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"
# 		PersonalVideo.animate
# 			properties:
# 				scale: 1 
# 			time: 0.3
# 			curve: "cubic-bezier(0.0, 0.0, 0.2, 1)"			




clip_23.player.play()
