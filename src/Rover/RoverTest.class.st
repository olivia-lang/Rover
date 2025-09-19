Class {
	#name : 'RoverTest',
	#superclass : 'TestCase',
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'tests' }
RoverTest >> testInitialDirection [ 
 	| rover |
	rover := Rover new.
	self assert: rover direction equals: 'N'.
]

{ #category : 'tests' }
RoverTest >> testMoveForwardWhenFacingEast [
	
	"Ce test permet de vérifier le déplacement du rover 
	etat initial : le robot regarde vers l'est et se trouve au centre du plateau (2,2) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (3,2)
	"
	| rover |
	rover := Rover new.
	rover lookEast .
	rover x: 2.
	rover y: 2.
	
	rover moveForward.
	
	self assert: rover x equals: 3.
	self assert: rover y equals: 2.
]

{ #category : 'tests' }
RoverTest >> testMoveForwardWhenFacingNorth [
	
	"Ce test permet de vérifier le déplacement du rover 
	etat initial : le robot regarde vers le nord et se trouve au centre du plateau (2,2) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (2,3)
	"
	| rover |
	rover := Rover new.
	rover lookNorth.
	rover x: 2.
	rover y: 2.
	
	rover moveForward.
	
	self assert: rover x equals: 2.
	self assert: rover y equals: 3.
]

{ #category : 'tests' }
RoverTest >> testMoveForwardWhenFacingSouth [
	
	"Ce test permet de vérifier le déplacement du rover 
	etat initial : le robot regarde vers le sud et se trouve au centre du plateau (2,2) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (2,1)
	"
	| rover |
	rover := Rover new.
	rover lookSouth .
	rover x: 2.
	rover y: 2.
	
	rover moveForward.
	
	self assert: rover x equals: 2.
	self assert: rover y equals: 1.
]

{ #category : 'tests' }
RoverTest >> testMoveForwardWhenFacingWest [
	
	"Ce test permet de vérifier le déplacement du rover 
	etat initial : le robot regarde vers l'ouest et se trouve au centre du plateau (2,2) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (1,2)
	"
	| rover |
	rover := Rover new.
	rover lookWest .
	rover x: 2.
	rover y: 2.
	
	rover moveForward.
	
	self assert: rover x equals: 1.
	self assert: rover y equals: 2.
]

{ #category : 'tests' }
RoverTest >> testMoveOutsideWhenFacingEast [
	
	"Ce test permet de vérifier le déplacement du rover en dehors du plateau
	etat initial : le robot regarde vers l'est et se trouve au bord du plateau (4,2) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (4,2)
	"
	| rover |
	rover := Rover new.
	rover lookEast.
	rover x: 4.
	rover y: 2.
	
	rover moveForward.
	
	self assert: rover x equals: 4.
	self assert: rover y equals: 2.
]

{ #category : 'tests' }
RoverTest >> testMoveOutsideWhenFacingNorth [
	
	"Ce test permet de vérifier le déplacement du rover en dehors du plateau
	etat initial : le robot regarde vers le nord et se trouve au bord du plateau (2,4) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (2,4)
	"
	| rover |
	rover := Rover new.
	rover lookNorth.
	rover x: 2.
	rover y: 4.
	
	rover moveForward.
	
	self assert: rover x equals: 2.
	self assert: rover y equals: 4.
]

{ #category : 'tests' }
RoverTest >> testMoveOutsideWhenFacingSouth [
	
	"Ce test permet de vérifier le déplacement du rover en dehors du plateau
	etat initial : le robot regarde vers le sud et se trouve au bord du plateau (2,0) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (2,0)
	"
	| rover |
	rover := Rover new.
	rover lookSouth .
	rover x: 2.
	rover y: 0.
	
	rover moveForward.
	
	self assert: rover x equals: 2.
	self assert: rover y equals: 0.
]

{ #category : 'tests' }
RoverTest >> testMoveOutsideWhenFacingWest [
	
	"Ce test permet de vérifier le déplacement du rover en dehors du plateau
	etat initial : le robot regarde vers l'ouest et se trouve au bord du plateau (0,2) sur un plateau de 5x5
	action : le robot avance
	check :  le robot se trouve sur la case (0,2)
	"
	| rover |
	rover := Rover new.
	rover lookWest.
	rover x: 0.
	rover y: 2.
	
	rover moveForward.
	
	self assert: rover x equals: 0.
	self assert: rover y equals: 2.
]

{ #category : 'tests' }
RoverTest >> testTurnLeftWhenFacingEast [

	| rover |
	rover := Rover new.
	rover lookEast .
	
	rover turnLeft.

	self assert: rover direction equals: 'N'.
]

{ #category : 'tests' }
RoverTest >> testTurnLeftWhenFacingNorth [

	| rover |
	rover := Rover new.
	
	rover turnLeft.

	self assert: rover direction equals: 'W'.
]

{ #category : 'tests' }
RoverTest >> testTurnLeftWhenFacingSouth [

	| rover |
	rover := Rover new.
	rover lookSouth .
	
	rover turnLeft.

	self assert: rover direction equals: 'E'.
]

{ #category : 'tests' }
RoverTest >> testTurnLeftWhenFacingWest [

	| rover |
	rover := Rover new.
	rover lookWest .
	
	rover turnLeft.

	self assert: rover direction equals: 'S'.
]

{ #category : 'tests' }
RoverTest >> testTurnRightWhenFacingEast [

	| rover |
	rover := Rover new.
	rover lookEast.
	rover turnRight.

	self assert: rover direction equals: 'S'.
]

{ #category : 'tests' }
RoverTest >> testTurnRightWhenFacingNorth [

	| rover |
	rover := Rover new.
	
	rover turnRight.

	self assert: rover direction equals: 'E'.
]

{ #category : 'tests' }
RoverTest >> testTurnRightWhenFacingSouth [

	| rover |
	rover := Rover new.
	rover lookSouth.
	rover turnRight.

	self assert: rover direction equals: 'W'.
]

{ #category : 'tests' }
RoverTest >> testTurnRightWhenFacingWest [

	| rover |
	rover := Rover new.
	rover lookWest.
	rover turnRight.

	self assert: rover direction equals: 'N'.
]
