#lang htdp/bsl

; Exercise 31.
; ------------
; Recall the letter program from Composingf Functions. Here is how to launch
; the program and have it write its output to the interactions area:
;
;    > (write-file
;       'stdout
;       (letter "Matthew" "Fisler" "Felleisen"))
;    Dear Matthew,
;    
;    We have discovered that all people with the
;    last name Fisler have won our lottery. So, 
;    Matthew, hurry and pick up your prize.
;    
;    Sincerely, 
;    Felleisen
;    'stdout
;
; Of course, programs are useful because you can launch them for many different
; inputs. Run letter on three inputs of your choice.
;
; Here is a letter-writing batch program that reads names from three files and
; writes a letter to one:
;
;    (define (main in-fst in-lst in-signature out)
;      (write-file out
;                  (letter (read-file in-fst)
;                          (read-file in-lst)
;                          (read-file in-signature))))
;
; The function consumes four strings: the first three are the names of input
; files and the last one serves as an output file. It uses the first three to
; read one string each from the three named files, hands these strings to
; letter, and eventually writes the result of this function call into the file
; named by out, the fourth argument to main.
;
; Create appropriate files, launch main, and check whether it delivers the
; expected letter in a given file.
; -----------------------------------------------------------------------------
