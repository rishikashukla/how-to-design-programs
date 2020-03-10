;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 12.
;; ------------
;;
;; Define the function cvolume, which accepts the length of a side of an
;; equilateral cube and computes its volume. If you have time, consider
;; defining csurface, too.
;;
;; Hint An equilateral cube is a three-dimensional container bounded by six
;; squares. You can determine the surface of a cube if you know that the
;; square’s area is its length multiplied by itself. Its volume is the length
;; multiplied with the area of one of its squares. (Why?) 
;;
;; ----------------------------------------------------------------------------
; volume of the cube
(define (cvolume a)
  (* a (* a a)))

;-----------------

; surface of the cube
(define (csurface a)
  (* (sqr a) 6))