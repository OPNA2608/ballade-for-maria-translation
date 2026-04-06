(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (if (</> (// (? (!= M 12) (!= M 0)) (nop@) (sound ' 2))))
  (cmd:209 0 2)
  (text-color 0 2 2)
  (cmd:203 1 1)
  (set-var F 0)
  (cmd:204 100 199)
  (exec-mem 35072 "#103=(#771==0)")
  (exec-mem 35072 "#111=(#794==0)")
  (set-reg 112 #t)
  (set-reg 114 #t)
  (set-reg 115 #t)
  (exec-mem 35072 "#116=(#772==0)")
  (exec-mem 35072 "#118=#794")
  (set-reg 120 #t)
  (exec-mem 35072 "#125=(#770==0)")
  (image-file "gpc¥mapfrm.gpc")
  (image-mem 0)
  (exec-mem 4096 "INIT")
  (exec-mem 4096 "MODE M128")
  (exec-mem 4096 "LOAD gpc¥map0.gpc,KEEP")
  (exec-mem 4096 "LOAD gpc¥map1.gpc,KEEP")
  (exec-mem 4096 "LOAD gpc¥map2.gpc,KEEP")
  (exec-mem 4096 "LOAD gpa¥map0inf.gpa,KEEP")
  (exec-mem 4096 "LOAD gpa¥map1inf.gpa,KEEP")
  (exec-mem 4096 "LOAD gpa¥map2inf.gpa,KEEP")
  (cmd:193 0 "gpa¥map.gpa")
  (load-mem "dat¥map0.clm" 30720)
  (load-mem "dat¥map1.clm" 32064)
  (load-mem "dat¥map2.clm" 33376)
  (exec-mem 8192 "A 1")
  (cmd:196 0 9)
  (exec-mem 8192 "G 0 0 0 2 16")
  (cmd:196 0 10)
  (exec-mem 8192 "G 1 0 0 2 16,A 0")
  (if (</>
       (// (? (<= W 8)) (nop@) (set-var X 0))
       (// (? (<= W 17)) (nop@) (set-var X 1))
       (// (nop@) (set-var X 2))))
  (branch-var X
   (</>
    (/
     (exec-mem 4096 "COPY gpc¥map0.gpc,GPC")
     (image-mem 0)
     (exec-mem 4096 "COPY gpa¥map0inf.gpa,GPA1")
     (cmd:196 0 3)
     (cmd:196 0 1)
     (cmd:196 0 2)
     (cmd:196 0 6)
     (if (</>
          (// (? (<= W 8)) (nop@) (exec-mem 35072 "Y=W+1"))
          (// (nop@) (set-var Y 0)))))
    (/
     (exec-mem 4096 "COPY gpc¥map1.gpc,GPC")
     (image-mem 0)
     (exec-mem 4096 "COPY gpa¥map1inf.gpa,GPA1")
     (cmd:196 0 0)
     (cmd:196 0 4)
     (cmd:196 0 2)
     (cmd:196 0 7)
     (if (</>
          (// (? (>= W 9) (<= W 17)) (nop@) (exec-mem 35072 "Y=W-8"))
          (// (nop@) (set-var Y 0)))))
    (/
     (exec-mem 4096 "COPY gpc¥map2.gpc,GPC")
     (image-mem 0)
     (exec-mem 4096 "COPY gpa¥map2inf.gpa,GPA1")
     (cmd:196 0 0)
     (cmd:196 0 1)
     (cmd:196 0 5)
     (cmd:196 0 8)
     (if (</>
          (// (? (>= W 18)) (nop@) (exec-mem 35072 "Y=W-17"))
          (// (nop@) (set-var Y 0)))))))
  (set-var F 1)
  (seg-call)
  (set-var F 0)
  (if (</>
       (//
        (? (!= M 12))
        (nop@)
        (sound ' 0)
        (sound ' "uso¥ap_12.uso")
        (sound ' 1)
        (set-var M 12))))
  (cmd:209 1 2)
  (if (</>
       (//
        (? (= 700 #t) (= 770 #f))
        (nop@)
        (exec-mem 8192 "A 1")
        (exec-mem 4096 "COPY gpc¥map2.gpc,GPC")
        (image-mem 0)
        (exec-mem 8192 "A 0")
        (exec-mem 17664 45 328 46 343 9 0)
        (set-reg 770 #t)
        (set-reg 125 #f))
       (//
        (? (= 722 #t) (= 771 #f))
        (nop@)
        (exec-mem 8192 "A 1")
        (exec-mem 4096 "COPY gpc¥map0.gpc,GPC")
        (image-mem 0)
        (exec-mem 8192 "A 0")
        (exec-mem 17664 34 312 35 327 9 0)
        (set-reg 771 #t)
        (set-reg 103 #f))
       (//
        (? (= 750 #t) (= 772 #f))
        (nop@)
        (exec-mem 8192 "A 1")
        (exec-mem 4096 "COPY gpc¥map1.gpc,GPC")
        (image-mem 0)
        (exec-mem 8192 "A 0")
        (exec-mem 17664 24 120 25 135 9 0)
        (set-reg 772 #t)
        (set-reg 116 #f))))
  (branch-var X
   (</>
    (/
     (branch-var Y
      (</>
       (/ (nop@))
       (/ (exec-mem 11008 102 216 216))
       (/ (exec-mem 11008 102 160 232))
       (/ (exec-mem 11008 102 152 136))
       (/ (exec-mem 11008 102 280 320))
       (/ (exec-mem 11008 102 136 352))
       (/ (exec-mem 11008 102 296 184))
       (/ (exec-mem 11008 102 256 160))
       (/ (exec-mem 11008 102 184 288))
       (/ (exec-mem 11008 102 160 328)))))
    (/
     (branch-var Y
      (</>
       (/ (nop@))
       (/ (exec-mem 11008 102 208 40))
       (/ (exec-mem 11008 102 216 96))
       (/ (exec-mem 11008 102 304 144))
       (/ (exec-mem 11008 102 120 288))
       (/ (exec-mem 11008 102 160 152))
       (/ (exec-mem 11008 102 224 72))
       (/ (exec-mem 11008 102 200 128))
       (/ (exec-mem 11008 102 272 280))
       (/ (exec-mem 11008 102 200 312)))))
    (/
     (branch-var Y
      (</>
       (/ (nop@))
       (/ (exec-mem 11008 102 272 208))
       (/ (exec-mem 11008 102 256 168))
       (/ (exec-mem 11008 102 328 40))
       (/ (exec-mem 11008 102 176 192))
       (/ (exec-mem 11008 102 312 80))
       (/ (exec-mem 11008 102 368 336))
       (/ (exec-mem 11008 102 144 40)))))))
  (exec-mem 14080 1)
  (set-reg 131 #f)
  (set-reg 132 #f)
  (set-var S 0)
  (set-var T 0)
  (loop
   (branch-var X
    (</>
     (/ (exec-mem 14080 131 132 "S" 30720))
     (/ (exec-mem 14080 131 132 "S" 32064))
     (/ (exec-mem 14080 131 132 "S" 33376))))
   (when (</>
          (// (? (= S 0) (!= T 0)) (nop@) (seg-call))
          (//
           (? (<= S 9) (!= S T) (!= S 0))
           (nop@)
           (exec-mem 35072 "#130=#100[X*10+S-1]")
           (if (</> (// (? (= 130 #t)) (nop@) (seg-call)))))
          (//
           (? (>= S 10) (= 131 #t))
           (nop@)
           (exec-mem 35072 "#130=(X!=(S-10))")
           (if (</> (// (? (= 130 #t)) (nop@) (seg-call)))))
          (//
           (? (>= S 1) (<= S 9) (= 131 #t))
           (nop@)
           (exec-mem 35072 "#130=#100[X*10+S-1]")
           (if (</> (// (? (= 130 #t)) (nop@) (seg-call)))))))))
 (seg (? (>= S 10) (= 131 #t))
      (nop@)
      (exec-mem 14080 0)
      (branch-var X (</> (/ (cmd:196 0 0)) (/ (cmd:196 0 1)) (/ (cmd:196 0 2))))
      (exec-mem 35072 "X=S-10")
      (branch-var X
       (</>
        (/
         (cmd:196 0 3)
         (cmd:196 0 6)
         (exec-mem 4096 "COPY gpa¥map0inf.gpa,GPA1"))
        (/
         (cmd:196 0 4)
         (cmd:196 0 7)
         (exec-mem 4096 "COPY gpa¥map1inf.gpa,GPA1"))
        (/
         (cmd:196 0 5)
         (cmd:196 0 8)
         (exec-mem 4096 "COPY gpa¥map2inf.gpa,GPA1"))))
      (exec-mem 22272 2 0 0 113 99 56 49 56 49 0 10)
      (branch-var X
       (</>
        (/
         (exec-mem 4096 "COPY gpc¥map0.gpc,GPC")
         (image-mem 0)
         (if (</>
              (// (? (<= W 8)) (nop@) (exec-mem 35072 "Y=W+1"))
              (// (? (= W 9)) (nop@) (set-var Y 1))
              (// (nop@) (set-var Y 0)))))
        (/
         (exec-mem 4096 "COPY gpc¥map1.gpc,GPC")
         (image-mem 0)
         (if (</>
              (// (? (>= W 9) (<= W 17)) (nop@) (exec-mem 35072 "Y=W-8"))
              (// (? (= W 0)) (nop@) (set-var Y 1))
              (// (nop@) (set-var Y 0)))))
        (/
         (exec-mem 4096 "COPY gpc¥map2.gpc,GPC")
         (image-mem 0)
         (if (</>
              (// (? (>= W 18)) (nop@) (exec-mem 35072 "Y=W-17"))
              (// (nop@) (set-var Y 0)))))))
      (set-var F 1)
      (seg-call)
      (set-var F 0)
      (exec-mem 22272 1 56 49 56 49 0 0 113 99 8 10)
      (repeat (<> (set-reg 131 #t) (nop@) (exec-mem 14080)))
      (exec-mem 14080 1)
      (set-var T 0))
 (seg (? (= F 1))
      (nop@)
      (branch-var X
       (</>
        (/
         (when (</>
                (// (? (= Y 1) (= 100 #t)) (nop@) (exec-mem 8192 "P 1 26 208"))
                (// (? (!= Y 1) (= 100 #t)) (nop@) (exec-mem 8192 "P 0 26 208"))
                (// (? (= Y 2) (= 101 #t)) (nop@) (exec-mem 8192 "P 1 19 224"))
                (// (? (!= Y 2) (= 101 #t)) (nop@) (exec-mem 8192 "P 0 19 224"))
                (// (? (= Y 3) (= 102 #t)) (nop@) (exec-mem 8192 "P 1 18 128"))
                (// (? (!= Y 3) (= 102 #t)) (nop@) (exec-mem 8192 "P 0 18 128"))
                (// (? (= Y 4) (= 103 #t)) (nop@) (exec-mem 8192 "P 1 34 312"))
                (// (? (!= Y 4) (= 103 #t)) (nop@) (exec-mem 8192 "P 0 34 312"))
                (// (? (= Y 5) (= 104 #t)) (nop@) (exec-mem 8192 "P 1 16 344"))
                (// (? (!= Y 5) (= 104 #t)) (nop@) (exec-mem 8192 "P 0 16 344"))
                (// (? (= Y 6) (= 105 #t)) (nop@) (exec-mem 8192 "P 1 36 176"))
                (// (? (!= Y 6) (= 105 #t)) (nop@) (exec-mem 8192 "P 0 36 176"))
                (// (? (= Y 7) (= 106 #t)) (nop@) (exec-mem 8192 "P 1 31 152"))
                (// (? (!= Y 7) (= 106 #t)) (nop@) (exec-mem 8192 "P 0 31 152"))
                (// (? (= Y 8) (= 107 #t)) (nop@) (exec-mem 8192 "P 1 22 280"))
                (// (? (!= Y 8) (= 107 #t)) (nop@) (exec-mem 8192 "P 0 22 280"))
                (// (? (= Y 9) (= 108 #t)) (nop@) (exec-mem 8192 "P 1 19 320"))
                (// (? (!= Y 9) (= 108 #t)) (nop@) (exec-mem 8192 "P 0 19 320")))))
        (/
         (when (</>
                (// (? (= Y 1) (= 110 #t)) (nop@) (exec-mem 8192 "P 1 25 32"))
                (// (? (!= Y 1) (= 110 #t)) (nop@) (exec-mem 8192 "P 0 25 32"))
                (// (? (= Y 2) (= 111 #t)) (nop@) (exec-mem 8192 "P 1 26 88"))
                (// (? (!= Y 2) (= 111 #t)) (nop@) (exec-mem 8192 "P 0 26 88"))
                (// (? (= Y 3) (= 112 #t)) (nop@) (exec-mem 8192 "P 1 37 136"))
                (// (? (!= Y 3) (= 112 #t)) (nop@) (exec-mem 8192 "P 0 37 136"))
                (// (? (= Y 4) (= 113 #t)) (nop@) (exec-mem 8192 "P 1 14 280"))
                (// (? (!= Y 4) (= 113 #t)) (nop@) (exec-mem 8192 "P 0 14 280"))
                (// (? (= Y 5) (= 114 #t)) (nop@) (exec-mem 8192 "P 1 19 144"))
                (// (? (!= Y 5) (= 114 #t)) (nop@) (exec-mem 8192 "P 0 19 144"))
                (// (? (= Y 6) (= 115 #t)) (nop@) (exec-mem 8192 "P 1 27 64"))
                (// (? (!= Y 6) (= 115 #t)) (nop@) (exec-mem 8192 "P 0 27 64"))
                (// (? (= Y 7) (= 116 #t)) (nop@) (exec-mem 8192 "P 1 24 120"))
                (// (? (!= Y 7) (= 116 #t)) (nop@) (exec-mem 8192 "P 0 24 120"))
                (// (? (= Y 8) (= 117 #t)) (nop@) (exec-mem 8192 "P 1 33 272"))
                (// (? (!= Y 8) (= 117 #t)) (nop@) (exec-mem 8192 "P 0 33 272"))
                (// (? (= Y 9) (= 118 #t)) (nop@) (exec-mem 8192 "P 1 24 304"))
                (// (? (!= Y 9) (= 118 #t)) (nop@) (exec-mem 8192 "P 0 24 304")))))
        (/
         (when (</>
                (// (? (= Y 1) (= 120 #t)) (nop@) (exec-mem 8192 "P 1 33 200"))
                (// (? (!= Y 1) (= 120 #t)) (nop@) (exec-mem 8192 "P 0 33 200"))
                (// (? (= Y 2) (= 121 #t)) (nop@) (exec-mem 8192 "P 1 31 160"))
                (// (? (!= Y 2) (= 121 #t)) (nop@) (exec-mem 8192 "P 0 31 160"))
                (// (? (= Y 3) (= 122 #t)) (nop@) (exec-mem 8192 "P 1 41 32"))
                (// (? (!= Y 3) (= 122 #t)) (nop@) (exec-mem 8192 "P 0 41 32"))
                (// (? (= Y 4) (= 123 #t)) (nop@) (exec-mem 8192 "P 1 21 184"))
                (// (? (!= Y 4) (= 123 #t)) (nop@) (exec-mem 8192 "P 0 21 184"))
                (// (? (= Y 5) (= 124 #t)) (nop@) (exec-mem 8192 "P 1 38 72"))
                (// (? (!= Y 5) (= 124 #t)) (nop@) (exec-mem 8192 "P 0 38 72"))
                (// (? (= Y 6) (= 125 #t)) (nop@) (exec-mem 8192 "P 1 45 328"))
                (// (? (!= Y 6) (= 125 #t)) (nop@) (exec-mem 8192 "P 0 45 328"))
                (// (? (= Y 7) (= 126 #t)) (nop@) (exec-mem 8192 "P 1 17 32"))
                (// (? (!= Y 7) (= 126 #t)) (nop@) (exec-mem 8192 "P 0 17 32"))))))))
 (seg (? (!= S T))
      (nop@)
      (exec-mem 14080 0)
      (branch-var X
       (</>
        (/
         (if (</>
              (//
               (? (!= T 0))
               (nop@)
               (branch-var T
                (</>
                 (/ (nop@))
                 (/ (exec-mem 8192 "P 2 18 182"))
                 (/ (exec-mem 8192 "P 2 15 198"))
                 (/ (exec-mem 8192 "P 2 8 102"))
                 (/ (exec-mem 8192 "P 2 29 286"))
                 (/ (exec-mem 8192 "P 2 9 318"))
                 (/ (exec-mem 8192 "P 2 30 150"))
                 (/ (exec-mem 8192 "P 2 21 126"))
                 (/ (exec-mem 8192 "P 2 16 254"))
                 (/ (exec-mem 8192 "P 2 13 294")))))))
         (branch-var S
          (</>
           (/ (nop@))
           (/
            (exec-mem 8192 "G 2 18 182 18 32")
            (if (</>
                 (// (? (= Y 1)) (nop@) (cmd:196 1 9))
                 (// (nop@) (cmd:196 1 0)))))
           (/
            (exec-mem 8192 "G 2 15 198 10 32")
            (if (</>
                 (// (? (= Y 2)) (nop@) (cmd:196 1 10))
                 (// (nop@) (cmd:196 1 1)))))
           (/
            (exec-mem 8192 "G 2 8 102 22 32")
            (if (</>
                 (// (? (= Y 3)) (nop@) (cmd:196 1 11))
                 (// (nop@) (cmd:196 1 2)))))
           (/
            (exec-mem 8192 "G 2 29 286 12 32")
            (if (</>
                 (// (? (= Y 4)) (nop@) (cmd:196 1 12))
                 (// (nop@) (cmd:196 1 3)))))
           (/
            (exec-mem 8192 "G 2 9 318 16 32")
            (if (</>
                 (// (? (= Y 5)) (nop@) (cmd:196 1 13))
                 (// (nop@) (cmd:196 1 4)))))
           (/
            (exec-mem 8192 "G 2 30 150 14 32")
            (if (</>
                 (// (? (= Y 6)) (nop@) (cmd:196 1 14))
                 (// (nop@) (cmd:196 1 5)))))
           (/
            (exec-mem 8192 "G 2 21 126 22 32")
            (if (</>
                 (// (? (= Y 7)) (nop@) (cmd:196 1 15))
                 (// (nop@) (cmd:196 1 6)))))
           (/
            (exec-mem 8192 "G 2 16 254 14 32")
            (if (</>
                 (// (? (= Y 8)) (nop@) (cmd:196 1 16))
                 (// (nop@) (cmd:196 1 7)))))
           (/
            (exec-mem 8192 "G 2 13 294 14 32")
            (if (</>
                 (// (? (= Y 9)) (nop@) (cmd:196 1 17))
                 (// (nop@) (cmd:196 1 8))))))))
        (/
         (if (</>
              (//
               (? (!= T 0))
               (nop@)
               (branch-var T
                (</>
                 (/ (nop@))
                 (/ (exec-mem 8192 "P 2 17 6"))
                 (/ (exec-mem 8192 "P 2 16 62"))
                 (/ (exec-mem 8192 "P 2 27 110"))
                 (/ (exec-mem 8192 "P 2 7 254"))
                 (/ (exec-mem 8192 "P 2 13 118"))
                 (/ (exec-mem 8192 "P 2 16 38"))
                 (/ (exec-mem 8192 "P 2 13 94"))
                 (/ (exec-mem 8192 "P 2 25 246"))
                 (/ (exec-mem 8192 "P 2 20 278")))))))
         (branch-var S
          (</>
           (/ (nop@))
           (/
            (exec-mem 8192 "G 2 17 6 18 32")
            (if (</>
                 (// (? (= Y 1)) (nop@) (cmd:196 1 9))
                 (// (nop@) (cmd:196 1 0)))))
           (/
            (exec-mem 8192 "G 2 16 62 22 32")
            (if (</>
                 (// (? (= Y 2)) (nop@) (cmd:196 1 10))
                 (// (nop@) (cmd:196 1 1)))))
           (/
            (exec-mem 8192 "G 2 27 110 22 32")
            (if (</>
                 (// (? (= Y 3)) (nop@) (cmd:196 1 11))
                 (// (nop@) (cmd:196 1 2)))))
           (/
            (exec-mem 8192 "G 2 7 254 16 32")
            (if (</>
                 (// (? (= Y 4)) (nop@) (cmd:196 1 12))
                 (// (nop@) (cmd:196 1 3)))))
           (/
            (exec-mem 8192 "G 2 13 118 14 32")
            (if (</>
                 (// (? (= Y 5)) (nop@) (cmd:196 1 13))
                 (// (nop@) (cmd:196 1 4)))))
           (/
            (exec-mem 8192 "G 2 16 38 24 32")
            (if (</>
                 (// (? (= Y 6)) (nop@) (cmd:196 1 14))
                 (// (nop@) (cmd:196 1 5)))))
           (/
            (exec-mem 8192 "G 2 13 94 24 32")
            (if (</>
                 (// (? (= Y 7)) (nop@) (cmd:196 1 15))
                 (// (nop@) (cmd:196 1 6)))))
           (/
            (exec-mem 8192 "G 2 25 246 18 32")
            (if (</>
                 (// (? (= Y 8)) (nop@) (cmd:196 1 16))
                 (// (nop@) (cmd:196 1 7)))))
           (/
            (exec-mem 8192 "G 2 20 278 10 32")
            (if (</>
                 (// (? (= Y 9)) (nop@) (cmd:196 1 17))
                 (// (nop@) (cmd:196 1 8))))))))
        (/
         (if (</>
              (//
               (? (!= T 0))
               (nop@)
               (branch-var T
                (</>
                 (/ (nop@))
                 (/ (exec-mem 8192 "P 2 23 174"))
                 (/ (exec-mem 8192 "P 2 24 134"))
                 (/ (exec-mem 8192 "P 2 32 6"))
                 (/ (exec-mem 8192 "P 2 14 158"))
                 (/ (exec-mem 8192 "P 2 33 46"))
                 (/ (exec-mem 8192 "P 2 36 302"))
                 (/ (exec-mem 8192 "P 2 8 6")))))))
         (branch-var S
          (</>
           (/ (nop@))
           (/
            (exec-mem 8192 "G 2 23 174 22 32")
            (if (</>
                 (// (? (= Y 1)) (nop@) (cmd:196 1 7))
                 (// (nop@) (cmd:196 1 0)))))
           (/
            (exec-mem 8192 "G 2 24 134 16 32")
            (if (</>
                 (// (? (= Y 2)) (nop@) (cmd:196 1 8))
                 (// (nop@) (cmd:196 1 1)))))
           (/
            (exec-mem 8192 "G 2 32 6 20 32")
            (if (</>
                 (// (? (= Y 3)) (nop@) (cmd:196 1 9))
                 (// (nop@) (cmd:196 1 2)))))
           (/
            (exec-mem 8192 "G 2 14 158 16 32")
            (if (</>
                 (// (? (= Y 4)) (nop@) (cmd:196 1 10))
                 (// (nop@) (cmd:196 1 3)))))
           (/
            (exec-mem 8192 "G 2 33 46 12 32")
            (if (</>
                 (// (? (= Y 5)) (nop@) (cmd:196 1 11))
                 (// (nop@) (cmd:196 1 4)))))
           (/
            (exec-mem 8192 "G 2 36 302 20 32")
            (if (</>
                 (// (? (= Y 6)) (nop@) (cmd:196 1 12))
                 (// (nop@) (cmd:196 1 5)))))
           (/
            (exec-mem 8192 "G 2 8 6 20 32")
            (if (</>
                 (// (? (= Y 7)) (nop@) (cmd:196 1 13))
                 (// (nop@) (cmd:196 1 6))))))))))
      (exec-mem 14080 1)
      (set-var T S))
 (seg*
  (nop@)
  (exec-mem 14080 0)
  (branch-var X
   (</>
    (/ (exec-mem 35072 "W=S-1"))
    (/ (exec-mem 35072 "W=S+8"))
    (/ (exec-mem 35072 "W=S+17"))))
  (cmd:204 100 199)
  (exec-mem 8192 "F 0,F 1,F 2")
  (exec-mem 4096 "EXIT")
  (if (</>
       (//
        (? (= 792 #f))
        (if (</>
             (// (? (= W 3)) (nop@) (mes-jump "b:¥mes¥503_03.mes"))
             (// (? (= W 10)) (nop@) (mes-jump "b:¥mes¥503_10.mes"))
             (// (? (= W 11)) (nop@) (mes-jump "b:¥mes¥503_11.mes"))
             (// (? (= W 13)) (nop@) (mes-jump "b:¥mes¥503_13.mes"))
             (// (? (= W 14)) (nop@) (mes-jump "b:¥mes¥503_14.mes"))
             (// (? (= W 15)) (nop@) (mes-jump "b:¥mes¥503_15.mes"))
             (// (? (= W 18)) (nop@) (mes-jump "b:¥mes¥503_18.mes"))
             (// (? (= W 23)) (nop@) (mes-jump "b:¥mes¥503_23.mes"))
             (// (nop@) (seg-call)))))
       (//
        (? (= 793 #f))
        (if (</>
             (// (? (= W 3)) (nop@) (mes-jump "b:¥mes¥503_03.mes"))
             (// (? (= W 10)) (nop@) (mes-jump "b:¥mes¥503_10.mes"))
             (// (? (= W 11)) (nop@) (mes-jump "b:¥mes¥505_11.mes"))
             (// (? (= W 13)) (nop@) (mes-jump "b:¥mes¥505_13.mes"))
             (// (? (= W 14)) (nop@) (mes-jump "b:¥mes¥505_14.mes"))
             (// (? (= W 15)) (nop@) (mes-jump "b:¥mes¥505_15.mes"))
             (// (? (= W 18)) (nop@) (mes-jump "b:¥mes¥505_18.mes"))
             (// (nop@) (seg-call)))))
       (//
        (? (= 794 #f))
        (if (</>
             (// (? (= W 10)) (nop@) (mes-jump "b:¥mes¥503_10.mes"))
             (// (? (= W 11)) (nop@) (mes-jump "b:¥mes¥505_11.mes"))
             (// (? (= W 13)) (nop@) (mes-jump "b:¥mes¥507_13.mes"))
             (// (? (= W 14)) (nop@) (mes-jump "b:¥mes¥507_14.mes"))
             (// (? (= W 15)) (nop@) (mes-jump "b:¥mes¥507_15.mes"))
             (// (? (= W 18)) (nop@) (mes-jump "b:¥mes¥507_18.mes"))
             (// (nop@) (seg-call)))))
       (//
        (if (</>
             (// (? (= W 11)) (nop@) (mes-jump "b:¥mes¥505_11.mes"))
             (// (? (= W 13)) (nop@) (mes-jump "b:¥mes¥512_13.mes"))
             (// (? (= W 14)) (nop@) (mes-jump "b:¥mes¥512_14.mes"))
             (// (? (= W 15)) (nop@) (mes-jump "b:¥mes¥507_15.mes"))
             (// (? (= W 17)) (nop@) (mes-jump "b:¥mes¥512_17.mes"))
             (// (? (= W 18)) (nop@) (mes-jump "b:¥mes¥512_18.mes"))
             (// (nop@) (seg-call))))))))
 (seg*
  (exec-mem 8192 "G 10 30 240 48 64")
  (exec-mem 256 31 30 46 8 1 1 0 2560 2560 1 1)
  (exec-mem 256 30 30 46 7 1 0 0 2560 2560 1 0)
  (text-frame 33 250 79 275)
  (text "エラー：移動先が見つかりません　　　　　" 'br)
  (text "　　　　Ｘ＝")
  (exec-mem 35072 "DISP X")
  (text "　Ｓ＝")
  (exec-mem 35072 "DISP S")
  (text "　Ｗ＝")
  (exec-mem 35072 "DISP W")
  (wait)
  (exec-mem 8192 "P 10 30 240,F 10")
  (repeat (<> (set-reg 131 #t) (nop@) (exec-mem 14080)))
  (cmd:212)))