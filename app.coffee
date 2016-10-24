
iPhone_6_Copy_15_2x = new Layer
	width: 750
	height: 1334
	image: "images/iPhone 6 Copy 15@2x.png"

bottle = new Layer
	width: 74
	height: 220
	image: "images/bottle.png"
	x: 64
	y: 716

text = new Layer
	width: 196
	image: "images/bottle_description.png"
	y: 733
	x: 198

text.draggable = true
text.draggable.vertical = false
text.draggable.speedX = 1.5

text.draggable.constraints =
    x: 150
    width: 250

n = 1; distance = 12

father = new Layer
	backgroundColor: "rgba(0,0,0,0)"

text.onDrag (event, layer) ->
	if text.x > 177 + (distance + bottle.width) * n
		bottle = new Layer
			width: 74; height: 220; image: "images/bottle.png"
			x: 177 + (distance + bottle.width) * n - 120; y: 716-110
			opacity: 0
			parent: father
		bottle.animate
			properties: 
				width: 74
				height: 220
				y: 716
				opacity: 1
			curve: "spring(400, 30, 0)"
		n = n + 1
		print n, text.x
		print father.descendants[8]
	print text.x
	e = father.descendants.length
	print e


text.onDragEnd (event, layer) ->
	number = new Layer
		backgroundColor: "#000000"
		borderRadius: 1000
		width: 0
		height: 0
		y: 800
		x: 105
		orignX: .5; orignY: .5
	number.clip = true

	number_text = new Layer
		orignX: .5; orignY: .5		
		superLayer: number
		x: 21
		y: 15
		backgroundColor: "rgba(0,0,0,0)"
		opacity: 0
	number_text.html = n
 	  
	number.animate
		properties: 
			width: 60
			height: 60
			opacity: 1
		curve: "spring(400, 30, 0)"
		delay: .3
	
	number_text.animate
		properties: 
			opacity: 1
		curve: "spring(400, 30, 0)"
		delay: .5


	father.descendants[0].animate
		properties:
			x: 64
		curve: "spring(400, 30, 0)"
	father.descendants[1].animate
		properties:
			x: 64
		curve: "spring(400, 30, 0)"
	father.descendants[2].animate
		properties:
			x: 64
		curve: "spring(400, 30, 0)"
	father.descendants[3].animate
		properties:
			x: 64
		curve: "spring(400, 30, 0)"
	father.descendants[4].animate
		properties:
			x: 64
		curve: "spring(400, 30, 0)"
	father.descendants[5].animate
		properties:
			x: 64
		curve: "spring(400, 30, 0)"
	father.descendants[6].animate
		properties:
			x: 64
		curve: "spring(400, 30, 0)"
	



#	for i in [0..15]
#		print father
	
#	for i in [0..15]
#		father.descendants[i].animate
#			properties: width: 74; height: 220; y: 716; opacity: 1
#			curve: "spring(400, 30, 0)"
		
