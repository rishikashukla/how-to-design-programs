#lang htdp/bsl

; Exercise 47.
; ------------
; Design a world program that maintains and displays a “happiness gauge.” Let’s
; call it gauge-prog, and let’s agree that the program consumes the maximum
; level of happiness. The gauge display starts with the maximum score, and with
; each clock tick, happiness decreases by -0.1; it never falls below 0, the
; minimum happiness score. Every time the down arrow key is pressed, happiness
; increases by 1/5; every time the up arrow is pressed, happiness jumps by 1/3.

; To show the level of happiness, we use a scene with a solid, red rectangle
; with a black frame. For a happiness level of 0, the red bar should be gone;
; for the maximum happiness level of 100, the bar should go all the way across
; the scene.

; Note When you know enough, we will explain how to combine the gauge program
; with the solution of exercise 45. Then we will be able to help the cat
; because as long as you ignore it, it becomes less happy. If you pet the cat,
; it becomes happier. If you feed the cat, it becomes much, much happier. So
; you can see why you want to know a lot more about designing world programs
; than these first three chapters can tell you. 
; -----------------------------------------------------------------------------
