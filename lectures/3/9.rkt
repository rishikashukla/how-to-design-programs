;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define in "abc")
; (define in (square 40 "solid" "red"))
; (define in 99)
; (define in 0)
; (define in -1)
; (define in #true)
; (define in #false)


; string?
; image?
; number?, zero?, negative?
; boolean?, false?

; converts `in` to a number
(if (string? in) 
    (string-length in)
    (if (image? in)
        (* (image-height in) (image-width in))
        (if (number? in)
            (if (or (zero? in) (negative? in))
                in
                (- in 1))
            (if (and (boolean? in) (false? in))
                20
                10))))

