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
PlateauTest >> testMoveRover [
	"etait initial : le rover se situe à (0,0) en regardant au nord
	 action: on le déplace sur le plateau d'un pas
	 check: le rover se situe à (0,1) du plateau"
	
	| plateau rover |
	rover := Rover new.
	plateau := Plateau new.
	plateau placeRover: rover atX: 0 atY: 0 looking: 'N'.
	
	plateau moveRover: 'M'.
	
	self assert: plateau rover x equals: 0.
    self assert: plateau rover y equals: 1.
]

{ #category : 'tests' }
PlateauTest >> testMoveRoverAndTurnLeft [
	"etait initial : le rover se situe à (0,0) en regardant au nord
	 action: on le déplace sur le plateau d'un pas avec la commande M et tourne le rover vers l'ouest avec la commande 'L' 
	 check: le rover se situe à (0,1) du plateau en regardant vers l'ouest"
	
	| plateau rover |
	rover := Rover new.
	plateau := Plateau new.
	plateau placeRover: rover atX: 0 atY: 0 looking: 'N'.
	
	plateau moveRover: 'ML'.
	
	self assert: plateau rover x equals: 0.
   self assert: plateau rover y equals: 1.
	self assert: plateau rover direction equals: 'W'.
]

{ #category : 'tests' }
PlateauTest >> testMoveRoverAndTurnRight [
	"etait initial : le rover se situe à (0,0) en regardant au nord
	 action: on le déplace sur le plateau d'un pas avec la commande M et tourne le rover vers l'est avec la commande 'R' 
	 check: le rover se situe à (0,1) du plateau en regardant vers l'est"
	
	| plateau rover |
	rover := Rover new.
	plateau := Plateau new.
	plateau placeRover: rover atX: 0 atY: 0 looking: 'N'.
	
	plateau moveRover: 'MR'.
	
	self assert: plateau rover x equals: 0.
   self assert: plateau rover y equals: 1.
	self assert: plateau rover direction equals: 'E'.
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

{ #category : 'tests' }
PlateauTest >> testProcessMoveRover [
	"etait initial : le rover se situe à (1,2) en regardant au nord sur un plateau de 5x5
	 action: on le déplace sur le plateau avec la commande 'LMLMLMLMM'
	 check: le rover se situe à (1,3) du plateau en regardant vers le nord"
	
	| plateau rover |
	rover := Rover new.
	plateau := Plateau new.
	plateau placeRover: rover atX: 1 atY: 2 looking: 'N'.
	
	plateau moveRover: 'LMLMLMLMM'.
	
	self assert: plateau rover x equals: 1.
   self assert: plateau rover y equals: 3.
	self assert: plateau rover direction equals: 'N'.
]
