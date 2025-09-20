Class {
	#name : 'Plateau',
	#superclass : 'Object',
	#instVars : [
		'width',
		'height',
		'rover'
	],
	#category : 'Rover',
	#package : 'Rover'
}

{ #category : 'accessing' }
Plateau >> height [

	^ height
]

{ #category : 'accessing' }
Plateau >> height: anObject [

	height := anObject
]

{ #category : 'initialization' }
Plateau >> initialize [
	super initialize.
	
	width := 5.
	height := 5.
]

{ #category : 'as yet unclassified' }
Plateau >> moveRover: aString [
	aString do: [ :each |
        each = $L ifTrue: [ rover turnLeft ].
        each = $R ifTrue: [ rover turnRight ].
        each = $M ifTrue: [ rover moveForward ].
    ].
]

{ #category : 'as yet unclassified' }
Plateau >> placeRover: aRover atX: aX atY: aY looking: aDirection [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"
	
	rover := aRover.
	rover x: aX.
	rover y: aY.
	rover direction: aDirection .
]

{ #category : 'accessing' }
Plateau >> rover [

	^ rover
]

{ #category : 'accessing' }
Plateau >> rover: anObject [

	rover := anObject
]

{ #category : 'accessing' }
Plateau >> width [

	^ width
]

{ #category : 'accessing' }
Plateau >> width: anObject [

	width := anObject
]
