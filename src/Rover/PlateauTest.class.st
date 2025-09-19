Class {
	#name : 'PlateauTest',
	#superclass : 'TestCase',
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'tests' }
PlateauTest >> testInitializePlateau [
	""
	| plateau |
	plateau := Plateau new.
	
	self assert: plateau width equals: 5.
	self assert: plateau height equals: 5.	
]

{ #category : 'tests' }
PlateauTest >> testPlaceRover [
	"etat initial : le plateau est créé
	 action : on place le rover à la position (0,0) et il regarde au nord
	 check : le rover est bien placé à (0,0)"
	
	| plateau rover |
	plateau := Plateau new.
	rover := Rover new.
	
	plateau placeRover: rover atX:0 atY:0 looking: 'N'.
	
	self assert: rover x equals: 0.
	self assert: rover y equals: 0.
	self assert: rover direction equals: 'N'.
]
