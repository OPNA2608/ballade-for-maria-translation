; Ballade for Maria (PC-98) - SAVE.MEC
; Save menu subfunction
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg* (nop@) (seg-call) (cmd:212))
 (seg (? (= S 0))
      (nop@)
      (exec-mem 35072 "S=Z'")
      (set-var C 0)
      (repeat 8 (<> (exec-mem 35072 "#1000[C]=#1000'[C]") (inc-var C 1)))
      (exec-mem 8192 "C 0 27 242 45 156 1 0 0")
      (exec-mem 256 0 0 44 19 1 0 0 2560 2560 1 0)
      (exec-mem 256 43 0 2 20 1 1 0 2560 2560 1 1)
      (exec-mem 256 0 18 45 2 1 1 0 2560 2560 1 1)
      (exec-mem 8192
       "A 0,G 0 27 242 45 156,C 1 0 0 45 156 0 27 242,A 1,P 0 0 0,F 0,A 0")
      (set-reg 29 #t)
      (repeat
       (<>
        (set-reg 29 #t)
        (nop@)
        (text-frame 28 250 70 385)
        (cmd:203 5 16 1)
        (cmd:211 0 1)
        (menu1 28 250
         (</>
          (/
           (str " 1:")
           (branch-reg 1001
            (</>
             ;(/ (str "--------------- 未使用 ---------------"))
             (/ (str "--------------- Unused ---------------"))
             (/ (exec-mem 35072 "DISP @1"))))
           (str " "))
          (/
           (str " 2:")
           (branch-reg 1002
            (</>
             ;(/ (str "--------------- 未使用 ---------------"))
             (/ (str "--------------- Unused ---------------"))
             (/ (exec-mem 35072 "DISP @2"))))
           (str " "))
          (/
           (str " 3:")
           (branch-reg 1003
            (</>
             ;(/ (str "--------------- 未使用 ---------------"))
             (/ (str "--------------- Unused ---------------"))
             (/ (exec-mem 35072 "DISP @3"))))
           (str " "))
          (/
           (str " 4:")
           (branch-reg 1004
            (</>
             ;(/ (str "--------------- 未使用 ---------------"))
             (/ (str "--------------- Unused ---------------"))
             (/ (exec-mem 35072 "DISP @4"))))
           (str " "))
          (/
           (str " 5:")
           (branch-reg 1005
            (</>
             ;(/ (str "--------------- 未使用 ---------------"))
             (/ (str "--------------- Unused ---------------"))
             (/ (exec-mem 35072 "DISP @5"))))
           (str " "))
          (/
           (str " 6:")
           (branch-reg 1006
            (</>
             ;(/ (str "--------------- 未使用 ---------------"))
             (/ (str "--------------- Unused ---------------"))
             (/ (exec-mem 35072 "DISP @6"))))
           (str " "))
          (/
           (str " 7:")
           (branch-reg 1007
            (</>
             ;(/ (str "--------------- 未使用 ---------------"))
             (/ (str "--------------- Unused ---------------"))
             (/ (exec-mem 35072 "DISP @7"))))
           (str " "))))
        (set-reg 20 #f)
        (set-reg 21 #f)
        (if (</>
             (// (? (= S 255)) (nop@) (set-var S 254) (set-reg 29 #f))
             (//
              (nop@)
              (exec-mem 8192 "G 0 19 160 43 80")
              (exec-mem 35072 "#20=#1001[S]:S'=S")
              (branch-reg 20
               (</>
                (/ (set-reg 21 #t))
                (/
                 (exec-mem 256 19 20 42 9 1 0 0 2560 2560 1 0)
                 (exec-mem 256 20 20 42 10 1 1 0 2560 2560 1 1)
                 (text-frame 21 175 58 218)
                 ;(text "セーブデータを上書きしてもいいですか？")
                 (str "Do you want to overwrite this save?")
                 (cmd:211 1 0)
                 (set-var S 0)
                 (cmd:203 5 239 2)
                 (menu1 28 201 40 201
                  (</>
                   ;(/ (str " ") (text "上書きする") (str " "))
                   ;(/ (str " ") (text "キャンセル") (str " "))))
                   (/ (str "Overwrite   "))
                   (/ (str "Cancel      "))))
                 (if (</>
                      (// (? (= S 0)) (nop@) (set-reg 21 #t))
                      (//
                       (nop@)
                       (exec-mem 8192 "P 0 19 160,F 0")
                       (text-frame 28 248 69 387)
                       (text-reset)))))))
              (exec-mem 35072 "S=S'")
              (branch-reg 21
               (</>
                (/ (nop@))
                (/
                 (branch-reg 20
                  (</>
                   (/
                    (exec-mem 256 19 20 42 9 1 0 0 2560 2560 1 0)
                    (exec-mem 256 20 20 42 10 1 1 0 2560 2560 1 1)
                    (text-frame 21 175 58 218))
                   (/ (text-reset))))
                 ;(text #:pos '(32 188) "セーブ中です")
                 ;(str "...")
                 (str #:pos '(32 188) "Saving...")
                 (exec-mem 7424 0 "G" "H" "I")
                 (exec-mem 35072
                  "@8=(%11(@0))+'  '+(%%(-(G<10))('0'))+(%%(1-(G>9))(G))+'/'+(%%(-(H<10))('0'))+(%%(1-(H>9))(H))+'/'+(%%(-(I<10))('0'))+(%%(1-(I>9))(I))")
                 (exec-mem 7424 1 "G" "H")
                 (exec-mem 35072
                  "@1[S]=@8+' '+(%%(-(G<10))('0'))+(%%(1-(G>9))(G))+':'+(%%(-(H<10))('0'))+(%%(1-(H>9))(H))")
                 (set-reg 22 #t)
                 (branch-var S
                  (</>
                   (/ (flag-save 1))
                   (/ (flag-save 2))
                   (/ (flag-save 3))
                   (/ (flag-save 4))
                   (/ (flag-save 5))
                   (/ (flag-save 6))
                   (/ (flag-save 7))))
                 (exec-mem 35072 "Z'=S:#1001'[S]=1:SAVE 'dat¥exreg.dat'")
                 (set-reg 22 #f)
                 (text-frame 28 248 70 387)
                 (text-color 13)
                 (exec-mem 35072 "LOCATE 31,S*20+250:DCLS 38")
                 (text-color 15)
                 (exec-mem 35072 "DISP @1[S]")
                 (text-color 0)
                 (text-frame 21 175 58 218)
                 (text-reset)
                 ;(text "　　　　セーブが終了しました。")
                 (str "           Saving  complete")
                 (cmd:203 1 0)
                 (exec-mem 12288 0 20 (bytes 235 186) 39 201 0 1021 2)
                 (cmd:203 1 1)
                 (exec-mem 8192 "P 0 19 160,F 0")
                 (set-reg 29 #f)))))))))
      (exec-mem 8192 "C 1 0 0 45 156 0 27 242"))
 (seg (? (= S 1))
      (nop@)
      (exec-mem 8192 "G 0 19 144 43 116")
      (exec-mem 256 19 18 42 14 1 0 0 2560 2560 1 0)
      (exec-mem 256 20 18 42 15 1 1 0 2560 2560 1 1)
      (text-frame 20 154 59 247)
      (text-raw 60521 60521 60521 60521 60521)
      ;(str " ")
      ;(text "ゲームを終了します")
      ;(str " ")
      (str " Game will now quit ")
      (text-raw 60521 60521 60521 60521 60521)
      ;(text #:pos '(20 179) "次回起動時にメニューで" '60522)
      ;(text "前回の続きから" '60523)
      ;(text "を選ぶとこの場面からゲームを再開します。")
      (str #:pos '(20 179) "Select " '60522)
      (str "Continue from Quick-Save" '60523)
      (str " from")
      (str "  the main menu to continue from here.")
      (cmd:211 1 0)
      (set-var S 0)
      (cmd:203 5 239 2)
      (menu1 28 227 40 227
       (</>
        ;(/ (str " ") (text "キャンセル") (str " "))
        ;(/ (text "　終了する　"))))
        (/ (str "Cancel      "))
        (/ (str "Quit        "))))
      (branch-var S
       (</>
        (/ (exec-mem 8192 "P 0 19 144,F 0"))
        (/
         (exec-mem 4096 "EXIT")
         (exec-mem 8192 "E,I")
         (text-frame 20 225 59 244)
         (text-reset)
         ;(text #:pos '(32 225) "セーブ中です")
         ;(str "...")
         (str #:pos '(32 225) "Saving...")
         (set-reg 22 #t)
         (flag-save 0)
         (exec-mem 35072 "#1000'=1:SAVE 'dat¥exreg.dat'")
         (set-reg 22 #f)
         (text-reset)
         ;(text #:pos '(29 225) "セーブが終了しました。")
         (str #:pos '(20 225) "            Saving  complete")
         (sound ' 2)
         (image-file "gpc¥ides95.gpc")
         (cmd:209 0 2)
         (sound ' 0)
         (text-frame 0 0 79 399)
         (text-reset 0)
         (image-mem 0)
         (cmd:209 1 2)
         (wait 500)
         (cmd:209 0 2)
         (text-reset 0)
         (cmd:209 1)
         (cmd:212 0))))))