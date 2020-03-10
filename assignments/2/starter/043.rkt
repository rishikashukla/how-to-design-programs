#lang htdp/bsl

; Exercise 43.
; ------------
; Let’s work through the same problem statement with a time-based data
; definition:
;
;    ; An AnimationState is a Number.
;    ; interpretation the number of clock ticks 
;    ; since the animation started
;
; Like the original data definition, this one also equates the states of the
; world with the class of numbers. Its interpretation, however, explains that
; the number means something entirely different.
;
; Design the functions tock and render. Then develop a big-bang expression so
; that once again you get an animation of a car traveling from left to right
; across the world’s canvas.
;
; How do you think this program relates to animate from Prologue: How to
; Program
;
; Use the data definition to design a program that moves the car according to
; a sine wave. (Don’t try to drive like that.) 
; ------------------------------------------------------------------------------
