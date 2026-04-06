(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg* (text-color 0 0 0) (seg-call) (cmd:212))
 (seg (? (= F 0))
      (nop@)
      (branch-reg 25
       (</> (/ (seg-call) (set-reg 25 #t)) (/ (set-var F 1) (seg-call))))
      (set-var S V)
      (text-frame 8 248 22 387)
      (cmd:203 5 239 2)
      (cmd:211 0 1)
      (branch-reg 28
       (</>
        (/
         (menu1 8 250
          (</>
           (/ (set-reg 0 #t) (proc 0))
           (/ (set-reg 1 #t) (proc 1))
           (/ (set-reg 2 #t) (proc 2))
           (/ (set-reg 3 #t) (proc 3))
           (/ (set-reg 4 #t) (proc 4))
           (/ (set-reg 5 #t) (proc 5))
           (/ (set-reg 6 #t) (proc 6))
           (/ (set-reg 7 #t) (proc 7))
           (/ (set-reg 8 #t) (proc 8))
           (/ (set-reg 9 #t) (proc 9))
           (/ (set-reg 10 #t) (proc 10))
           (/ (set-reg 11 #t) (proc 11)))))
        (/
         (menu1 8 270
          (</>
           (/ (set-reg 0 #t) (proc 0))
           (/ (set-reg 1 #t) (proc 1))
           (/ (set-reg 2 #t) (proc 2))
           (/ (set-reg 3 #t) (proc 3))
           (/ (set-reg 4 #t) (proc 4))
           (/ (set-reg 5 #t) (proc 5))
           (/ (set-reg 6 #t) (proc 6))
           (/ (set-reg 7 #t) (proc 7))
           (/ (set-reg 8 #t) (proc 8))
           (/ (set-reg 9 #t) (proc 9))
           (/ (set-reg 10 #t) (proc 10))
           (/ (set-reg 11 #t) (proc 11)))))))
      (set-var V S))
 (seg (? (= F 0))
      (nop@)
      (set-var D 0)
      (exec-mem 35072 "$0=0")
      (repeat 12 (<> (exec-mem 35072 "D=D+(-(#0[$0]==1)):$0=$0+1")))
      (if (</>
           (// (? (>= D 6)) (nop@) (set-reg 28 #f))
           (// (nop@) (set-reg 28 #t))))
      (branch-reg 28
       (</>
        (/
         (exec-mem 8192 "C 0 7 242 17 156 1 0 160")
         (exec-mem 8192 "C 1 0 160 17 156 1 0 0"))
        (/
         (exec-mem 8192 "C 0 7 262 17 116 1 0 160")
         (exec-mem 8192 "C 1 0 160 17 116 1 0 0"))))
      (text-frame 18 0 34 155)
      (text-reset)
      (branch-var D
       (</>
        (/ (nop@))
        (/
         (exec-mem 256 0 0 16 4 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 17 5 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 18 0 16 7 1 0 0 2560 2560 1 0)
         (exec-mem 256 18 0 17 8 1 1 0 2560 2560 1 1)
         (exec-mem 8192 "O 1,C 1 18 0 17 44 1 0 0,C 1 18 48 17 16 1 0 44,O 0"))
        (/
         (exec-mem 256 0 0 16 9 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 17 10 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 18 0 16 12 1 0 0 2560 2560 1 0)
         (exec-mem 256 18 0 17 13 1 1 0 2560 2560 1 1)
         (exec-mem 8192 "O 1,C 1 18 0 17 84 1 0 0,C 1 18 88 17 16 1 0 84,O 0"))
        (/
         (exec-mem 256 0 0 16 14 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 17 15 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 18 0 16 17 1 0 0 2560 2560 1 0)
         (exec-mem 256 18 0 17 18 1 1 0 2560 2560 1 1)
         (exec-mem 8192
          "O 1,C 1 18 0 17 124 1 0 0,C 1 18 128 17 16 1 0 124,O 0"))
        (/
         (exec-mem 256 0 0 16 19 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 17 20 1 1 0 2560 2560 1 1))))
      (branch-reg 28
       (</>
        (/ (exec-mem 8192 "C 1 0 0 17 156 0 7 242"))
        (/ (exec-mem 8192 "C 1 0 0 17 116 0 7 262")))))
 (seg (? (= F 1))
      (branch-var D
       (</>
        (/ (nop@))
        (/ (text-frame 8 268 21 287))
        (/ (text-frame 8 268 21 307))
        (/ (text-frame 8 268 21 327))
        (/ (text-frame 8 268 21 347))
        (/ (text-frame 8 268 21 367))
        (/ (text-frame 8 248 21 367))
        (/ (text-frame 8 248 21 387))))
      (text-reset 2))
 (seg (? (= F 3))
      (nop@)
      (set-var E 0)
      (exec-mem 35072 "$0=0")
      (repeat 12 (<> (exec-mem 35072 "E=E+(-(#0[$0]==1)):$0=$0+1")))
      (branch-reg 24
       (</> (/ (set-reg 24 #t) (seg-call)) (/ (set-var F 4) (seg-call)))))
 (seg (? (= F 4) (<= E 6))
      (if (</>
           (//
            (? (= 28 #t) (<= E 5))
            (branch-var E
             (</>
              (/ (nop@))
              (/ (text-frame 18 278 35 297))
              (/ (text-frame 18 278 35 317))
              (/ (text-frame 18 278 35 337))
              (/ (text-frame 18 278 35 357))
              (/ (text-frame 18 278 35 377)))))
           (//
            (nop@)
            (branch-var E
             (</>
              (/ (nop@))
              (/ (text-frame 18 258 35 277))
              (/ (text-frame 18 258 35 297))
              (/ (text-frame 18 258 35 317))
              (/ (text-frame 18 258 35 337))
              (/ (text-frame 18 258 35 357))
              (/ (text-frame 18 258 35 377)))))))
      (text-reset 2)
      (seg-call))
 (seg (? (= F 3) (<= E 6))
      (if (</>
           (//
            (? (= 28 #t) (<= E 5))
            (exec-mem 8192 "C 0 17 272 21 116 1 17 160")
            (exec-mem 8192 "C 1 17 160 21 116 1 0 0"))
           (//
            (exec-mem 8192 "C 0 17 252 21 136 1 17 160")
            (exec-mem 8192 "C 1 17 160 21 136 1 0 0"))))
      (text-frame 22 0 42 155)
      (text-reset)
      (branch-var E
       (</>
        (/ (nop@))
        (/
         (exec-mem 256 0 0 20 4 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 21 5 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 22 0 20 7 1 0 0 2560 2560 1 0)
         (exec-mem 256 22 0 21 8 1 1 0 2560 2560 1 1)
         (exec-mem 8192 "O 1,C 1 22 0 21 44 1 0 0,C 1 22 48 21 16 1 0 44,O 0"))
        (/
         (exec-mem 256 0 0 20 9 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 21 10 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 22 0 20 12 1 0 0 2560 2560 1 0)
         (exec-mem 256 22 0 21 13 1 1 0 2560 2560 1 1)
         (exec-mem 8192 "O 1,C 1 22 0 21 84 1 0 0,C 1 22 88 21 16 1 0 84,O 0"))
        (/
         (exec-mem 256 0 0 20 14 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 21 15 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 22 0 20 17 1 0 0 2560 2560 1 0)
         (exec-mem 256 22 0 21 18 1 1 0 2560 2560 1 1)
         (exec-mem 8192
          "O 1,C 1 22 0 21 124 1 0 0,C 1 22 128 21 16 1 0 124,O 0"))))
      (if (</>
           (// (? (= 28 #t) (<= E 5)) (exec-mem 8192 "C 1 0 0 21 116 0 17 272"))
           (// (exec-mem 8192 "C 1 0 0 21 136 0 17 252"))))
      (set-var F 4)
      (seg-call))
 (seg (? (= F 4) (<= E 6))
      (exec-mem 35072 "S=A'[V]")
      (cmd:203 5 16 1)
      (cmd:211 0 1)
      (text-frame 18 258 36 377)
      (if (</>
           (//
            (? (= 28 #t) (<= E 5))
            (menu1 18 280
             (</>
              (/ (set-reg 0 #t) (proc 0))
              (/ (set-reg 1 #t) (proc 1))
              (/ (set-reg 2 #t) (proc 2))
              (/ (set-reg 3 #t) (proc 3))
              (/ (set-reg 4 #t) (proc 4))
              (/ (set-reg 5 #t) (proc 5))
              (/ (set-reg 6 #t) (proc 6))
              (/ (set-reg 7 #t) (proc 7))
              (/ (set-reg 8 #t) (proc 8))
              (/ (set-reg 9 #t) (proc 9))
              (/ (set-reg 10 #t) (proc 10))
              (/ (set-reg 11 #t) (proc 11)))))
           (//
            (menu1 18 260
             (</>
              (/ (set-reg 0 #t) (proc 0))
              (/ (set-reg 1 #t) (proc 1))
              (/ (set-reg 2 #t) (proc 2))
              (/ (set-reg 3 #t) (proc 3))
              (/ (set-reg 4 #t) (proc 4))
              (/ (set-reg 5 #t) (proc 5))
              (/ (set-reg 6 #t) (proc 6))
              (/ (set-reg 7 #t) (proc 7))
              (/ (set-reg 8 #t) (proc 8))
              (/ (set-reg 9 #t) (proc 9))
              (/ (set-reg 10 #t) (proc 10))
              (/ (set-reg 11 #t) (proc 11)))))))
      (if (</>
           (// (? (= S 255)) (nop@) (set-var F 5) (seg-call))
           (// (nop@) (set-var N S) (exec-mem 35072 "A'[V]=S")))))
 (seg (? (= F 3))
      (if (</>
           (// (? (<= E 6)) (nop@) (set-var J E))
           (// (nop@) (exec-mem 35072 "J=(E+1)/2"))))
      (if (</>
           (//
            (? (= 28 #t) (<= J 5))
            (exec-mem 8192 "C 0 17 272 39 116 1 17 160")
            (exec-mem 8192 "C 1 17 160 39 116 1 0 0"))
           (//
            (exec-mem 8192 "C 0 17 252 39 136 1 17 160")
            (exec-mem 8192 "C 1 17 160 39 136 1 0 0"))))
      (text-frame 39 0 77 155)
      (text-reset)
      (branch-var J
       (</>
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/ (nop@))
        (/
         (exec-mem 256 39 0 38 12 1 0 0 2560 2560 1 0)
         (exec-mem 256 39 0 39 13 1 1 0 2560 2560 1 1)
         (exec-mem 8192 "O 1,C 1 39 0 39 84 1 0 0,C 1 39 88 39 16 1 0 84,O 0"))
        (/
         (exec-mem 256 0 0 38 14 1 0 0 2560 2560 1 0)
         (exec-mem 256 0 0 39 15 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 39 0 38 17 1 0 0 2560 2560 1 0)
         (exec-mem 256 39 0 39 18 1 1 0 2560 2560 1 1)
         (exec-mem 8192
          "O 1,C 1 39 0 39 124 1 0 0,C 1 39 128 39 16 1 0 124,O 0"))))
      (if (</>
           (// (? (= 28 #t) (<= J 5)) (exec-mem 8192 "C 1 0 0 39 116 0 17 272"))
           (// (exec-mem 8192 "C 1 0 0 39 136 0 17 252"))))
      (set-var F 4)
      (seg-call))
 (seg (? (= F 4))
      (exec-mem 35072 "S=A'[V]")
      (cmd:203 5 16 1)
      (cmd:211 1 2)
      (text-frame 18 260 54 379)
      (if (</>
           (//
            (? (= 28 #t) (<= J 5))
            (menu1 18 280 36 280 18 300 36 300 18 320 36 320 18 340 36 340 18
             360 36 360
             (</>
              (/ (set-reg 0 #t) (proc 0))
              (/ (set-reg 1 #t) (proc 1))
              (/ (set-reg 2 #t) (proc 2))
              (/ (set-reg 3 #t) (proc 3))
              (/ (set-reg 4 #t) (proc 4))
              (/ (set-reg 5 #t) (proc 5))
              (/ (set-reg 6 #t) (proc 6))
              (/ (set-reg 7 #t) (proc 7))
              (/ (set-reg 8 #t) (proc 8))
              (/ (set-reg 9 #t) (proc 9))
              (/ (set-reg 10 #t) (proc 10))
              (/ (set-reg 11 #t) (proc 11)))))
           (//
            (menu1 18 260 36 260 18 280 36 280 18 300 36 300 18 320 36 320 18
             340 36 340 18 360 36 360
             (</>
              (/ (set-reg 0 #t) (proc 0))
              (/ (set-reg 1 #t) (proc 1))
              (/ (set-reg 2 #t) (proc 2))
              (/ (set-reg 3 #t) (proc 3))
              (/ (set-reg 4 #t) (proc 4))
              (/ (set-reg 5 #t) (proc 5))
              (/ (set-reg 6 #t) (proc 6))
              (/ (set-reg 7 #t) (proc 7))
              (/ (set-reg 8 #t) (proc 8))
              (/ (set-reg 9 #t) (proc 9))
              (/ (set-reg 10 #t) (proc 10))
              (/ (set-reg 11 #t) (proc 11)))))))
      (if (</>
           (// (? (= S 255)) (nop@) (set-var F 5) (seg-call))
           (// (nop@) (set-var N S) (exec-mem 35072 "A'[V]=S")))))
 (seg (? (= F 6))
      (if (</> (// (? (= 24 #t)) (nop@) (set-var F 5) (seg-call))))
      (set-var F 2)
      (seg-call))
 (seg (? (= F 5))
      (if (</>
           (//
            (? (<= E 6))
            (if (</>
                 (//
                  (? (= 28 #t) (<= E 5))
                  (exec-mem 8192 "C 1 17 160 21 116 0 17 272"))
                 (// (exec-mem 8192 "C 1 17 160 21 136 0 17 252")))))
           (//
            (if (</>
                 (//
                  (? (= 28 #t) (<= J 5))
                  (exec-mem 8192 "C 1 17 160 39 116 0 17 272"))
                 (// (exec-mem 8192 "C 1 17 160 39 136 0 17 252")))))))
      (set-reg 24 #f))
 (seg (? (= F 2))
      (branch-reg 28
       (</>
        (/ (exec-mem 8192 "C 1 0 160 17 156 0 7 242"))
        (/ (exec-mem 8192 "C 1 0 160 17 116 0 7 262"))))
      (set-reg 25 #f)))