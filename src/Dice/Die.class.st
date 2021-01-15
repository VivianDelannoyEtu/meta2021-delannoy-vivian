Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: aNumber [
	| instance |
	instance := self new.
	instance faces: aNumber.
	^ instance
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: aNumber [
	faces := aNumber
]

{ #category : #'as yet unclassified' }
Die >> initialize [

	super initialize.
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ') '
]

{ #category : #'as yet unclassified' }
Die >> roll [
	^ faces atRandom 
]