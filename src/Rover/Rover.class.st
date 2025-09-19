Class {
	#name : 'Rover',
	#superclass : 'Object',
	#instVars : [
		'direction',
		'y',
		'x'
	],
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'accessing' }
Rover >> direction [
	^ direction
]

{ #category : 'accessing' }
Rover >> direction: aDirection [
	direction := aDirection
]

{ #category : 'accessing' }
Rover >> initialize [
	"initialize a rover facing the north"
	super initialize.
	direction := 'N'.
]

{ #category : 'accessing' }
Rover >> isEast [
	"check if the direction is East"
	^direction = 'E'
]

{ #category : 'accessing' }
Rover >> isNorth [
	"check if the direction is North"
	^direction = 'N'
]

{ #category : 'accessing' }
Rover >> isSouth [
	"check if the direction is South"
	^direction = 'S'
]

{ #category : 'accessing' }
Rover >> isWest [
	"check if the direction is West"
	^direction = 'W'
]

{ #category : 'accessing' }
Rover >> lookEast [
	"set the direction to East"
	direction := 'E'
]

{ #category : 'accessing' }
Rover >> lookNorth [
	"set the direction to North"
	direction := 'N'
]

{ #category : 'accessing' }
Rover >> lookSouth [
	"set the direction to South"
	direction := 'S'
]

{ #category : 'accessing' }
Rover >> lookWest [
	"set the direction to West"
	direction := 'W'
]

{ #category : 'accessing' }
Rover >> moveForward [
	"move forward according to the direction"
	self isNorth 
		ifTrue: [ 
			y := y + 1.
			self y > 4
				ifTrue: [ 
					y := y -1.
				].
			^ self ]. 
		
	self isEast
		ifTrue: [ 
			x := x + 1.
			self x > 4
				ifTrue: [ 
					x := x -1.
				].
			^ self ]. 
		
	self isWest
		ifTrue: [ 
			x := x - 1.
			self x < 0
				ifTrue: [ 
					x := x + 1.
				].
			^ self ]. 
		
	self isSouth
		ifTrue: [ 
			y := y - 1.
			self y < 0
				ifTrue: [ 
					y := y +1.
				].
			^ self ]. 
		
	self notYetImplemented
]

{ #category : 'accessing' }
Rover >> turnLeft [ 
	"turn the direction to the left"
	self isNorth 
		ifTrue: [ 
			self lookWest.
			^ self ].
	
	self isEast 
		ifTrue: [ 
			self lookNorth.
			^ self ].
	
	self isWest 
		ifTrue: [ 
			self lookSouth.
			^ self ].
	
	self isSouth 
		ifTrue: [ 
			self lookEast .
			^ self ].
	
	self notYetImplemented 
]

{ #category : 'accessing' }
Rover >> turnRight [
	"turn the direction to the right"
	self isNorth
		ifTrue: [ 
			self lookEast.
			^ self ].
		
	self isEast
		ifTrue: [ 
			self lookSouth.
			^ self ].
	
	self isWest
		ifTrue: [ 
			self lookNorth.
			^ self ].
	
	self isSouth
		ifTrue: [ 
			self lookWest .
			^ self ].
	
	self notYetImplemented 
]

{ #category : 'accessing' }
Rover >> x [
	^ x
]

{ #category : 'accessing' }
Rover >> x: anInteger [
	"set the position of the rover to x"
	x := anInteger
]

{ #category : 'accessing' }
Rover >> y [
	^ y
]

{ #category : 'accessing' }
Rover >> y: anInteger [
	"set the position to y"
	y := anInteger
]
