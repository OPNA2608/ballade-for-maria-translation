; Ballade for Maria (PC-98) - SELECT.MES
; Select screen (skipped if some things haven't been marked achieved in save data yet)
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (cmd:204)
  (set-var C 0)
  (repeat 8 (<> (exec-mem 35072 "#1000[C]=#1000'[C]") (inc-var C 1)))
  (exec-mem 35072 "#1020=#1020'")
  (if (</>
       (//
        (? (= 1001 #f) (= 1002 #f) (= 1003 #f) (= 1004 #f) (= 1005 #f)
         (= 1006 #f) (= 1007 #f))
        (nop@)
        (set-reg 1010 #f))
       (// (nop@) (set-reg 1010 #t))))
  (if (</>
       (//
        (? (= 1000 #f) (= 1010 #f) (= 1020 #f))
        (nop@)
        (cmd:206 1 1)
        (mes-jump "b:¥mes¥000.mes"))))
  (if (</> (// (? (!= M 0)) (nop@) (sound ' 2))))
  (cmd:209 0 2)
  (text-frame 0 0 79 399)
  (text-reset 0)
  (image-file "gpc¥op6.gpc")
  (exec-mem 28416 4)
  (image-mem 0)
  (sound ' 0)
  (set-var M 0)
  (text-color 15 0 0)
  (text-frame 0 0 79 399)
  (cmd:203 1 0)
  (cmd:209 1 2)
  (cmd:211 0 1)
  (set-var V 0)
  (set-var N 0)
  (set-var T 0)
  (loop
   (set-var C 1)
   (when (</>
          (// (? (= 1000 #t)) (nop@) (inc-var C 1))
          (// (? (= 1010 #t)) (nop@) (inc-var C 1))
          (// (? (= 1020 #t)) (nop@) (inc-var C 2))))
   (if (</>
        (// (? (= C 1)) (nop@) (exec-mem 256 6 22 28 5 1 3 0 2560 2560 1 0))
        (// (? (= C 2)) (nop@) (exec-mem 256 6 22 28 7 1 3 0 2560 2560 1 0))
        (// (? (= C 3)) (nop@) (exec-mem 256 6 22 28 10 1 3 0 2560 2560 1 0))
        (// (? (= C 4)) (nop@) (exec-mem 256 6 22 28 12 1 3 0 2560 2560 1 0))
        (// (? (= C 5)) (nop@) (exec-mem 256 6 22 28 15 1 3 0 2560 2560 1 0))))
   (cmd:203 5 239 2)
   (set-var S V)
   (text-frame 7 186 34 285)
   (define-proc 0
    (<> (str " ") (text "オープニングからはじめる") (str " ")))
   (define-proc 1 (<> (text "　前回の続きからはじめる　")))
   (define-proc 2
    (<> (str " ") (text "セーブした所からはじめる") (str " ")))
   (define-proc 3 (<> (text "　　ミュージックモード　　")))
   (define-proc 4
    (<> (str " ") (text "ショッキングシーンを見る") (str " ")))
   (if (</>
        (//
         (? (= C 1))
         (nop@)
         (menu1 7 188
          (</>
           (/ (proc 0))
           (/ (set-reg 1000 #t) (proc 1))
           (/ (set-reg 1010 #t) (proc 2))
           (/ (set-reg 1020 #t) (proc 3))
           (/ (set-reg 1020 #t) (proc 4)))))
        (//
         (? (= C 2))
         (nop@)
         (menu1 7 186
          (</>
           (/ (proc 0))
           (/ (set-reg 1000 #t) (proc 1))
           (/ (set-reg 1010 #t) (proc 2))
           (/ (set-reg 1020 #t) (proc 3))
           (/ (set-reg 1020 #t) (proc 4)))))
        (//
         (? (= C 3))
         (nop@)
         (menu1 7 188
          (</>
           (/ (proc 0))
           (/ (set-reg 1000 #t) (proc 1))
           (/ (set-reg 1010 #t) (proc 2))
           (/ (set-reg 1020 #t) (proc 3))
           (/ (set-reg 1020 #t) (proc 4)))))
        (//
         (? (= C 4))
         (nop@)
         (menu1 7 186
          (</>
           (/ (proc 0))
           (/ (set-reg 1000 #t) (proc 1))
           (/ (set-reg 1010 #t) (proc 2))
           (/ (set-reg 1020 #t) (proc 3))
           (/ (set-reg 1020 #t) (proc 4)))))
        (//
         (? (= C 5))
         (nop@)
         (menu1 7 188
          (</>
           (/ (proc 0))
           (/ (set-reg 1000 #t) (proc 1))
           (/ (set-reg 1010 #t) (proc 2))
           (/ (set-reg 1020 #t) (proc 3))
           (/ (set-reg 1020 #t) (proc 4)))))))
   (set-var V S)
   (set-var S 0)
   (cmd:203 5 16 1)
   (branch-var V
    (</>
     (/ (cmd:206 1 1) (mes-jump "b:¥mes¥000.mes"))
     (/ (flag-load 0))
     (/
      (set-reg 100 #t)
      (exec-mem 8192 "G 1 18 192 44 160")
      (exec-mem 256 18 24 44 20 1 3 0 2560 2560 1 1)
      (exec-mem 35072 "S=Z'")
      (repeat
       (<>
        (set-reg 100 #t)
        (nop@)
        (text-frame 19 202 61 337)
        (menu1 19 204
         (</>
          (/
           (str " 1:")
           (branch-reg 1001
            (</>
             (/ (str "--------------- 未使用 ---------------"))
             (/ (exec-mem 35072 "DISP @1"))))
           (str " "))
          (/
           (str " 2:")
           (branch-reg 1002
            (</>
             (/ (str "--------------- 未使用 ---------------"))
             (/ (exec-mem 35072 "DISP @2"))))
           (str " "))
          (/
           (str " 3:")
           (branch-reg 1003
            (</>
             (/ (str "--------------- 未使用 ---------------"))
             (/ (exec-mem 35072 "DISP @3"))))
           (str " "))
          (/
           (str " 4:")
           (branch-reg 1004
            (</>
             (/ (str "--------------- 未使用 ---------------"))
             (/ (exec-mem 35072 "DISP @4"))))
           (str " "))
          (/
           (str " 5:")
           (branch-reg 1005
            (</>
             (/ (str "--------------- 未使用 ---------------"))
             (/ (exec-mem 35072 "DISP @5"))))
           (str " "))
          (/
           (str " 6:")
           (branch-reg 1006
            (</>
             (/ (str "--------------- 未使用 ---------------"))
             (/ (exec-mem 35072 "DISP @6"))))
           (str " "))
          (/
           (str " 7:")
           (branch-reg 1007
            (</>
             (/ (str "--------------- 未使用 ---------------"))
             (/ (exec-mem 35072 "DISP @7"))))
           (str " "))))
        (if (</>
             (//
              (? (= S 255))
              (nop@)
              (exec-mem 8192 "P 1 18 192,F 1")
              (set-reg 100 #f))
             (//
              (exec-mem 35072 "#101=#1001[S]")
              (branch-reg 101
               (</>
                (/
                 (exec-mem 8192 "G 2 21 360 38 32")
                 (exec-mem 256 21 45 38 4 1 3 0 2560 2560 1 1)
                 (text-frame 22 368 57 383)
                 (text "そこにはまだセーブされていません。")
                 (exec-mem 12288 0 20 (bytes 235 186) 56 368 0 1021 0)
                 (exec-mem 8192 "P 2 21 360,F 2")
                 (text-frame 19 202 60 337)
                 (text-reset))
                (/
                 (branch-var S
                  (</>
                   (/ (flag-load 1))
                   (/ (flag-load 2))
                   (/ (flag-load 3))
                   (/ (flag-load 4))
                   (/ (flag-load 5))
                   (/ (flag-load 6))
                   (/ (flag-load 7)))))))))))))
     (/
      (set-var S T)
      (set-reg 100 #t)
      (exec-mem 8192 "G 1 18 192 38 136")
      (exec-mem 256 18 24 38 17 1 3 0 2560 2560 1 1)
      (cmd:211 1 3)
      (text-frame 19 200 55 319)
      (repeat
       (<>
        (set-reg 100 #t)
        (nop@)
        (menu1 19 202 31 202 43 202 19 222 31 222 43 222 19 242 31 242 43 242
         19 262 31 262 43 262 19 282 31 282 43 282 19 302 31 302 43 302
         (</>
          (/ (str " ") (text "ＡＰ＿０１") (str " "))
          (/ (str " ") (text "ＡＰ＿０２") (str " "))
          (/ (str " ") (text "ＡＰ＿０３") (str " "))
          (/ (str " ") (text "ＡＰ＿０４") (str " "))
          (/ (str " ") (text "ＡＰ＿０５") (str " "))
          (/ (str " ") (text "ＡＰ＿０６") (str " "))
          (/ (str " ") (text "ＡＰ＿０７") (str " "))
          (/ (str " ") (text "ＡＰ＿０８") (str " "))
          (/ (str " ") (text "ＡＰ＿０９") (str " "))
          (/ (str " ") (text "ＡＰ＿１０") (str " "))
          (/ (str " ") (text "ＡＰ＿１１") (str " "))
          (/ (str " ") (text "ＡＰ＿１２") (str " "))
          (/ (str " ") (text "ＡＰ＿１３") (str " "))
          (/ (str " ") (text "ＡＰ＿１４") (str " "))
          (/ (str " ") (text "ＡＰ＿１５") (str " "))
          (/ (str " ") (text "ＡＰ＿１６") (str " "))
          (/ (str " ") (text "ＡＰ＿１７") (str " "))
          (/ (set-var2 M 0) (str " ") (text "演奏を中断") (str " "))))
        (if (</>
             (//
              (? (= S 255))
              (nop@)
              (exec-mem 8192 "P 1 18 192,F 1")
              (cmd:211 0 1)
              (sound ' 0)
              (set-var M 0)
              (set-reg 100 #f))
             (//
              (if (</> (// (? (!= S 17)) (nop@) (set-var T S))))
              (branch-var S
               (</>
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_01.uso")
                 (sound ' 1)
                 (set-var M 1))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_02.uso")
                 (sound ' 1)
                 (set-var M 2))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_03.uso")
                 (sound ' 1)
                 (set-var M 3))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_04.uso")
                 (sound ' 1)
                 (set-var M 4))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_05.uso")
                 (sound ' 1)
                 (set-var M 5))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_06.uso")
                 (sound ' 1)
                 (set-var M 6))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_07.uso")
                 (sound ' 1)
                 (set-var M 7))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_08.uso")
                 (sound ' 1)
                 (set-var M 8))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_09.uso")
                 (sound ' 1)
                 (set-var M 9))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_10.uso")
                 (sound ' 1)
                 (set-var M 10))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_11.uso")
                 (sound ' 1)
                 (set-var M 11))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_12.uso")
                 (sound ' 1)
                 (set-var M 12))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_13.uso")
                 (sound ' 1)
                 (set-var M 13))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_14.uso")
                 (sound ' 1)
                 (set-var M 14))
                (/
                 (sound ' 0)
                 (sound ' "uso¥ap_15.uso")
                 (sound ' 1)
                 (set-var M 15))
                (/ (sound ' 0) (sound 'se 0) (set-var M 16))
                (/ (sound ' 0) (sound 'se 3) (set-var M 17))
                (/ (sound ' 0) (set-var M 0))))
              (text-frame 19 200 54 319)
              (text-reset)
              (text-frame 19 200 55 319)))))))
     (/
      (exec-mem 8192 "G 1 18 192 18 96")
      (exec-mem 256 18 24 18 12 1 3 0 2560 2560 1 0)
      (text-frame 19 200 35 279)
      (set-var S N)
      (menu1 19 202
       (</>
        (/ (str " ") (text "　ジニー殺害　") (str " "))
        (/ (str " ") (text "　エヴァ殺害　") (str " "))
        (/ (text "　シンディ殺害　"))
        (/ (str " ") (text "パトリシア殺害") (str " "))))
      (if (</>
           (// (? (= S 255)) (nop@) (exec-mem 8192 "P 1 18 192,F 1"))
           (//
            (nop@)
            (set-var N S)
            (cmd:209 0 2)
            (text-frame 0 0 79 399)
            (text-reset 0)
            (cmd:206 1 6)
            (set-reg 30 #t)
            (branch-var N
             (</>
              (/ (mes-jump "b:¥mes¥113.mes"))
              (/ (mes-jump "b:¥mes¥210.mes"))
              (/ (mes-jump "b:¥mes¥311.mes"))
              (/ (mes-jump "b:¥mes¥412.mes")))))))))))))