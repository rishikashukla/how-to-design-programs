;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Ex4

; -- MATH REVISION --

; GRADE 1

; (* (+ 1 3) (+ 4 5))
; = (* 4 (+ 4 5))
; = (* 4 9)
; = 36

; GRADE 2

; let x be 10
; (+ x 10)
;  ~~ substitution step ~~
; (+ 10 10)
; 20

; let y be 2 and let x be 6
; (* x y)
; ~~ substitute x ~~
; (* 6 y)
; ~~ substitute y ~~
; (* 6 2)
; ~ evaluate ~
; 12

; ------------------------------


(define str "helloworld")
(define i 9)

; result = "helloorld"


(string-append (substring str 0 i) (substring str (+ i 1)))
; ~~ substitute i with 9 ~~
(string-append (substring str 0 9) (substring str (+ 9 1)))
; ~~ substitute str with "helloworld"
(string-append (substring "helloworld" 0 9) (substring "helloworld" (+ 9 1)))
; ~~ evaluate (substring "helloworld" 0 9) ~~
; h e l l o w o r l d
; 0 1 2 3 4 5 6 7 8 9
; ^               ^
(string-append "helloworl" (substring "helloworld" (+ 9 1)))
; ~~ evaluate (substring "helloworld" (+ 9 1)) ~~
; ~~ evaluate (+ 9 1) ~~
;   (substring "helloworld" 10)
(string-append "helloworl" (substring "helloworld" 10))
; h e l l o w o r l d
; 0 1 2 3 4 5 6 7 8 9 10
;                     ^
(string-append "helloworl" "")
; ~~ evaluate ~~
"helloworl"


; ------------------------------------------------------------


(define idx "0123456789")

(define i0 0)

(string-append (substring idx 0 i0) (substring idx (+ i0 1)))
; = { substitute i0 with 0 }
(string-append (substring idx 0 0) (substring idx (+ 0 1)))
; = { substitute idx with "0123456789" }
(string-append (substring "0123456789" 0 0) (substring "0123456789" (+ 0 1)))
; = { evaluate `(substring "0123456789" 0 0)` }
(string-append "" (substring "0123456789" (+ 0 1)))
; = {  evaluate `(+ 0 1)` }
(string-append "" (substring "0123456789" 1))
; = { evaluate `(substring "0123456789" 1)` }
(string-append "" "123456789")
; = { evaluate `(string-append "" "123456789")` }
"123456789"

(define i1 1)

(string-append (substring idx 0 i1) (substring idx (+ i1 1)))
; = { substitute idx with "0123456789" }
; = { substitute i1 with 1}
(string-append (substring "0123456789" 0 1) (substring "0123456789" (+ 1 1)))
; = { evaluate `(substring "0123456789" 0 1)` }
;   (substring "0123456789" 0 1) = "0"
(string-append "0" (substring "0123456789" (+ 1 1)))
; = { evaluate `(+ 1 1) }
;   (+ 1 1) = 2
(string-append "0" (substring "0123456789" 2))
; = { evaluate `(substring "0123456789" 2)` }
;   (substring "0123456789" 2) = "23456789"
(string-append "0" "23456789")
; = { evaluate `(string-append "0" "23456789")` }
;   (string-append "0" "23456789") = "023456789"
"023456789"


(define i2 2)
(define i3 3)
(define i4 4)
(define i5 5)
(define i6 6)
(define i7 7)
(define i8 8)
(define i9 9)

(string-append (substring idx 0 i2) (substring idx (+ i2 1)))
; = "013456789"
(string-append (substring idx 0 i3) (substring idx (+ i3 1)))
; = "012456789"
(string-append (substring idx 0 i4) (substring idx (+ i4 1)))
; = "012356789"
(string-append (substring idx 0 i5) (substring idx (+ i5 1)))
; = "012346789"
(string-append (substring idx 0 i6) (substring idx (+ i6 1)))
; = "012345789"
(string-append (substring idx 0 i7) (substring idx (+ i7 1)))
; = "012345689"
(string-append (substring idx 0 i8) (substring idx (+ i8 1)))
; = "012345679"
(string-append (substring idx 0 i9) (substring idx (+ i9 1)))
; = "012345678"










