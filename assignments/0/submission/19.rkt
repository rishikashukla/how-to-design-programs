;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |19|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 19.
;; ------------
;;
;; Define the function string-insert, which consumes a string str plus a number
;; i and inserts "_" at the ith position of str. Assume i is a number between 0
;; and the length of the given string (inclusive). See exercise 3 for ideas.
;; Ponder how string-insert copes with "". 
;;
;; ----------------------------------------------------------------------------
(define (string-insert
         S i)
(string-append (substring S 0 i) "_"(substring S i )))