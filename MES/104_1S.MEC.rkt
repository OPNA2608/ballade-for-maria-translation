(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg* (text-color 0 0 0) (seg-call) (cmd:212))
 (seg (? (= F 0))
      (exec-mem 35072 "$0=0")
      (repeat 6 (<> (exec-mem 35072 "F=F+(-(#0[$0]==1)):$0=$0+1")))
      (exec-mem 8192 "A 1")
      (text-frame 0 0 79 143)
      (text-reset 0)
      (exec-mem 8192 "C 0 27 262 21 104 1 38 144")
      (exec-mem 8192 "C 1 38 144 21 104 1 0 0")
      (branch-var F
       (</>
        (/ (nop@))
        (/
         (exec-mem 256 0 0 20 4 1 0 0 2560 2560 1 0)
         (exec-mem 256 1 0 20 5 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 22 0 20 7 1 0 0 2560 2560 1 0)
         (exec-mem 256 23 0 20 8 1 1 0 2560 2560 1 1)
         (exec-mem 8192 "O 1,C 1 22 0 21 44 1 0 0,C 1 22 48 21 16 1 0 44,O 0"))
        (/
         (exec-mem 256 0 0 20 9 1 0 0 2560 2560 1 0)
         (exec-mem 256 1 0 20 10 1 1 0 2560 2560 1 1))
        (/
         (exec-mem 256 22 0 20 12 1 0 0 2560 2560 1 0)
         (exec-mem 256 23 0 20 13 1 1 0 2560 2560 1 1)
         (exec-mem 8192 "O 1,C 1 22 0 21 84 1 0 0,C 1 22 88 21 16 1 0 84,O 0"))))
      (exec-mem 8192 "C 1 0 0 21 104 0 27 262")
      (exec-mem 35072 "S=H'[N]")
      (cmd:203 5 16 1)
      (cmd:211 0 1)
      (text-frame 28 268 46 347)
      (menu1 28 270
       (</>
        (/ (set-reg 0 #t) (proc 0))
        (/ (set-reg 1 #t) (proc 1))
        (/ (set-reg 2 #t) (proc 2))
        (/ (set-reg 3 #t) (proc 3))))
      (if (</>
           (// (? (= S 255)) (nop@) (set-var F 1) (seg-call))
           (// (nop@) (set-var O S) (exec-mem 35072 "H'[N]=S") (set-reg 26 #t)))))
 (seg (? (= F 1)) (exec-mem 8192 "C 1 38 144 21 104 0 27 262") (set-reg 26 #f)))