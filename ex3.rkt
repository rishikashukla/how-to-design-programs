;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Ex3


(define str "helloworld")
(define i 5)


(string-append (substring str 0 i) "_" (substring str i))



























(define MY_INDEX_STRING "0123456789")

; (substring STRING START_INDEX END_INDEX)
; ASSUME: zero-based indexing
; take the following range: [START_INDEX, END_INDEX)


















