;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |05|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 5.
;; -----------
;; Use the 2htdp/image library to create the image of a simple boat or tree.
;; Make sure you can easily change the scale of the entire image.
;; -----------------------------------------------------------------------------
(require 2htdp/image)

; - - - C O N S T A N T S - - -

; - - - graphical - - -

(define RECT-HEIGHT 150)
(define RECT-WIDTH 100)
(define TRI-SIDE 100)

(define TRI-COLOR "yellow")
(define RECT-COLOR "green")

(define TRANS 150)

(define TRIANGLE (triangle TRI-SIDE TRANS TRI-COLOR))
(define RECT (rectangle RECT-WIDTH RECT-HEIGHT TRANS RECT-COLOR))

; - - - logical - - -

; sum of half the heights of rect and tri
(define Y-OFFSET
  (+ (/ (image-height TRIANGLE) 2)
           (/ RECT-HEIGHT 2)))
(define X-OFFSET 0)


; ROCKET

; - - - VERSION 1 : USING ABOVE - - -
#;
(above TRIANGLE RECT)

; - - - VERSION 2: USING OVERLAY/OFFSET - - -
#;
(overlay/offset TRIANGLE X-OFFSET Y-OFFSET RECT)

; - - - VERSION 3: WITH TRIANGLE BELOW - - -

; ------------------------------------------------------------------------------

;   ASCII ART OF A BOAT
;.- - + - - - - - - + - -.
; \   |             |   /
;  \  |             |  /
;   \ |             | /
;    \|_ _ _ _ _ _ _|/


(define BOAT-SCALE 300)

(define BASE-LENGTH BOAT-SCALE)
(define BASE-HEIGHT (/ BOAT-SCALE 2))
(define BASE (rectangle BASE-LENGTH BASE-HEIGHT TRANS RECT-COLOR))

(define RIGHT-TRI-L (right-triangle BASE-HEIGHT BASE-HEIGHT TRANS RECT-COLOR))
(define RIGHT-TRI-R  (flip-horizontal RIGHT-TRI-L))

(define POINTY-LEFT (rotate 180 RIGHT-TRI-L))
(define POINTY-RIGHT (rotate 180 RIGHT-TRI-R))

(beside POINTY-LEFT BASE POINTY-RIGHT)





; (overlay/offset (overlay/offset (rectangle 100 150 150 "green")
;               0 -120  (triangle 100 150 "yellow" )) 0 -120 
; (triangle 100 150 "yellow" ))



