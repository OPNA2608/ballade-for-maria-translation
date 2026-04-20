; Ballade for Maria (PC-98) - 001.MES
; Opening
; Actors:
; - Jake Snipes
; - Yuriko O'Brien
; - Patricia Farber
; - Gloria Wong
; - Cindy
; - Kristy Dern
; - Guy Goldstein
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  ;(exec-mem 35072 "@0='ファーバー監督邸'")
  ; Note: No nice apostrophes here, seemingly can't escape »'«
  (exec-mem 35072 "@0='Farber Residence'")
  ;(define-proc 12 (<> (text "ジェイク")))
  (define-proc 12 (<> (str "Jake")))
  ;(define-proc 13 (<> (text "ユリコ")))
  (define-proc 13 (<> (str "Yuriko")))
  ;(define-proc 14 (<> (text "パトリシア")))
  (define-proc 14 (<> (str "Patricia")))
  ;(define-proc 15 (<> (text "グロリア")))
  (define-proc 15 (<> (str "Gloria")))
  ;(define-proc 16 (<> (text "シンディ")))
  (define-proc 16 (<> (str "Cindy")))
  ;(define-proc 17 (<> (text "クリスティ")))
  (define-proc 17 (<> (str "Kristy")))
  (branch-reg 22
   (</>
    (/
     (cmd:204 100 109)
     (branch-reg 110
      (</>
       (/
        (sound ' 2)
        (cmd:209 0 2)
        (image-file "gpc¥wall1.gpc")
        (image-mem 0)
        (image-file "gpc¥wall2.gpc")
        (image-mem 0)
        (image-file "gpc¥win_m.gpc")
        (image-mem 1 0)
        (exec-mem 256 11 1 58 36 1 2 0 2560 2560 1 1)
        (image-file "b:¥gpc¥b01.gpc")
        (image-mem 0)
        (image-file "b:¥gpc¥b01a.gpc")
        (image-mem 1)
        (cmd:193 0 "b:¥gpa¥b01c.gpa")
        (cmd:193 1 "b:¥gpa¥b02c.gpa")
        (cmd:196 0 5)
        (text-color 0 2 2)
        (text-frame 14 328 69 383)
        (cmd:203 1 1)
        (sound ' 0)
        (delay 120)
        (sound ' "uso¥ap_02.uso")
        (sound ' 1)
        (set-var M 2)
        (cmd:209 1 2)

        ; 1: Jake, initial thoughts
        (mes-load? "mes¥001d1.mec" 4096)
        (mes-load? 4096)

        (exec-mem 8192 "G 1 25 99 20 189,A 1,P 1 25 99")
        (cmd:196 0 1)
        (image-file "b:¥gpc¥b01b1.gpc")
        (image-mem 1)
        (exec-mem 8192 "A 0")
        (exec-mem 17664 25 99 44 287 5 0)

        ; 2: Jake & Patricia
        (mes-load? "mes¥001d2.mec" 4096)
        (mes-load? 4096)

        (exec-mem 8192 "A 1,P 1 25 99,F 1,A 0")
        (exec-mem 17664 25 99 44 287 5 0)

        ; Actor: Jake Snipes (inner monologue / thought)
        ;(text "戸惑う僕をよそに、彼女は満足そうな微笑みを浮かべ他の客の挨拶に行ってしまった。")
        (str "While I stood there bewildered, she smiled contentedly and went off to greet the other customers.")
        (proc 18)

        ; Actor: Jake Snipes (inner monologue / thought)
        ;(text "探偵の仕事について聞かせると言っても、この僕が何について話してあげられるのか")
        ;(text-raw 60393 60393 60393 60393 60393)
        ;(text "あぁ、困った")
        ;(text-raw 60393 60393 60393 60393 60393 60393)
        (str "Even if I wanted to tell her about my work, what exactly is there to say about it")
        (text-raw 60393 60393 60393 60393 60393)
        (str " Oh dear")
        (text-raw 60393 60393 60393 60393 60393 60393)
        (proc 18)

        (exec-mem 8192 "G 1 21 92 17 196,A 1,P 1 21 92")
        (cmd:196 0 0)
        (image-file "b:¥gpc¥b01b0.gpc")
        (image-mem 1)
        (exec-mem 8192 "A 0")
        (exec-mem 17664 21 92 37 287 13 0)

        ; 3: Jake & Yuriko
        (mes-load? "mes¥001d3.mec" 4096)
        (mes-load? 4096)

        (exec-mem 8192 "A 1,P 1 21 92,F 1,A 0")
        (exec-mem 17664 21 92 37 287 13 0)

        ; Actor: Jake Snipes
        (text-frame 8 308 71 323)
        ;(proc 12)
        ;(proc 19)
        ;(text "あ、")
        ;(proc 13)
        ;(text-raw 60393 60393 60393 60393 60393 60392)
        (proc 12)
        (proc 19)
        (str "Ah, ")
        (proc 13)
        (text-raw 60393 60393 60393 60393 60393 60392)
        (proc 18)

        (exec-mem 8192 "G 1 30 90 20 198,A 1,P 1 30 90")
        (image-file "b:¥gpc¥b02b3.gpc")
        (image-mem 1)
        (exec-mem 8192 "A 0")
        (exec-mem 17664 30 90 49 287 13 0)

        ; 4: Jake & Kristy
        (mes-load? "mes¥001d3.mec" 4096)
        (mes-load? 4096)

        (exec-mem 8192 "A 1,P 1 30 90,F 1,A 0")
        (exec-mem 17664 30 90 49 287 13 0)
        ; Actor: Jake Snipes (inner monologue / thought)
        ;(text-raw 60485 60484)
        ;(text "と、向こうへ行ってしまった。")
        (text-raw 60485 60484)
        (str "and then she walked away in the opposite direction.")
        (proc 18)
        ; Actor: Jake Snipes (inner monologue / thought)
        ;(text "来た早々気分を損ねてしまった。")
        ;(proc 17)
        ;(text "は機嫌を損ねると恐いんだ。")
        (str "I've already upset her as soon as I arrived. ")
        (proc 17)
        (str "'s scary when she's in a bad mood.")
        (proc 18)
        ; Actor: Jake Snipes (inner monologue / thought)
        ;(text "消極的意見ではあるが、ガイが彼女の機嫌を取ってくれる事を祈ろう。")
        (str "It's depressing to think about. Let's hope that Guy can cheer her up.")
        (proc 18)
        ; Actor: Jake Snipes (inner monologue / thought)
        ;(text "さて、これからどうしようか？")
        (str "Now then, what should I do?")
        (proc 18)
        (set-reg 110 #t))
       (/
        (if (</>
             (//
              (? (= 651 #t) (= 653 #t) (= 654 #t) (= 655 #t) (= 656 #t))
              (nop@)
              (cmd:204 110 159)
              (mes-jump "b:¥mes¥002.mes"))
             (//
              (? (= 652 #t) (= 653 #t) (= 654 #t) (= 655 #t) (= 656 #t))
              (nop@)
              (cmd:204 110 159)
              (mes-jump "b:¥mes¥002.mes"))))))))
    (/
     (nop@)
     (sound ' 2)
     (cmd:209 0 2)
     (image-file "gpc¥wall1.gpc")
     (image-mem 0)
     (image-file "gpc¥wall2.gpc")
     (image-mem 0)
     (image-file "gpc¥win_m.gpc")
     (image-mem 1 0)
     (exec-mem 256 11 1 58 36 1 2 0 2560 2560 1 1)
     (branch-reg 657
      (</>
       (/ (image-file "b:¥gpc¥b01.gpc"))
       (/ (image-file "b:¥gpc¥b02.gpc"))))
     (image-mem 0)
     (branch-reg 657
      (</>
       (/ (image-file "b:¥gpc¥b01a.gpc") (image-mem 1))
       (/ (image-file "b:¥gpc¥b02a.gpc") (image-mem 1))))
     (cmd:193 0 "b:¥gpa¥b01c.gpa")
     (cmd:193 1 "b:¥gpa¥b02c.gpa")
     (if (</>
          (//
           (? (= 658 #f))
           (branch-reg 657 (</> (/ (cmd:196 0 5)) (/ (cmd:196 1 0)))))))
     (sound ' 0)
     (sound ' "uso¥ap_02.uso")
     (sound ' 1)
     (set-var M 2)
     (cmd:209 1 2)
     (text-color 0 2 2)
     (text-frame 14 328 69 383)
     (cmd:203 1 1)
     (cmd:204 24 26)
     (set-reg 22 #f)
     (set-var A 0))))
  (if (</> (// (? (!= A 255)) (nop@) (set-var A 0))))
  (set-var V 0)
  (set-var P 0)
  (set-var C 0)
  (repeat 9 (<> (exec-mem 35072 "A'[C]=0") (inc-var C 1)))
  (loop
   (branch-var P
    (</>
     (/
      (cmd:204 0 11)
      ;(define-proc 0 (<> (str " ") (text "　　見る　　") (str " ")))
      (define-proc 0 (<> (str "Look          ")))
      (set-reg 0 #t)
      ;(define-proc 1 (<> (text "　話しかける　")))
      (define-proc 1 (<> (str "Talk          ")))
      (set-reg 1 #t)
      ;(define-proc 2 (<> (text "　　考える　　")))
      (define-proc 2 (<> (str "Think         ")))
      (set-reg 2 #t)
      (define-proc 3 (<> (str " ") (text "　システム　") (str " ")))
      (define-proc 3 (<> (str "System        ")))
      (set-reg 3 #t)
      (set-var F 0)
      (mes-load? 0)
      (set-var P 1))
     (/
      (cmd:204 0 11)
      (branch-var V
       (</>
        (/
         ;(define-proc 0 (<> (text "　　辺りの様子　　")))
         (define-proc 0 (<> (str "Around            ")))
         (set-reg 0 #t)
         ;(define-proc 1 (<> (text "　　　") (proc 13) (text "　　　")))
         (define-proc 1 (<> (proc 13) (str "            ")))
         (set-reg 1 #t)
         ;(define-proc 2 (<> (text "　　") (proc 14) (text "　　")))
         (define-proc 2 (<> (proc 14) (str "          ")))
         (set-reg 2 #t)
         ;(define-proc 3 (<> (text "　　　トニー　　　")))
         (define-proc 3 (<> (str "Tony              ")))
         (set-reg 3 #t)
         ;(define-proc 4
         ; (<> (str " ") (text "　　") (proc 15) (text "　　") (str " ")))
         (define-proc 4 (<> (proc 15) (str "            ")))
         (set-reg 4 #t)
         ;(define-proc 5
         ; (<> (str " ") (text "　　") (proc 16) (text "　　") (str " ")))
         (define-proc 5 (<> (proc 16) (str "             ")))
         (set-reg 5 #t)
         ;(define-proc 6 (<> (text "　ファーバー監督　")))
         (define-proc 6 (<> (str "Director Farber   ")))
         (set-reg 6 #t)
         ;(define-proc 7
         ; (<> (str " ") (text "　　　ガイ　　　") (str " ")))
         (define-proc 7 (<> (str "Guy               ")))
         (set-reg 7 #t)
         ;(define-proc 8 (<> (text "　　") (proc 17) (text "　　")))
         (define-proc 8 (<> (proc 17) (str "            ")))
         (set-reg 8 #t)
         (set-var F 3)
         (mes-load? 0)
         (set-var P 2))
        (/
         ;(define-proc 0 (<> (text "　　　") (proc 13) (text "　　　")))
         (define-proc 0 (<> (proc 13) (str "            ")))
         (set-reg 0 #t)
         ;(define-proc 1 (<> (text "　　") (proc 14) (text "　　")))
         (define-proc 1 (<> (proc 14) (str "          ")))
         (set-reg 1 #t)
         ;(define-proc 2 (<> (text "　　　トニー　　　")))
         (define-proc 2 (<> (str "Tony              ")))
         (set-reg 2 #t)
         ;(define-proc 3
         ; (<> (str " ") (text "　　") (proc 15) (text "　　") (str " ")))
         (define-proc 3 (<> (proc 15) (str "            ")))
         (set-reg 3 #t)
         ;(define-proc 4
         ; (<> (str " ") (text "　　") (proc 16) (text "　　") (str " ")))
         (define-proc 4 (<> (proc 16) (str "             ")))
         (set-reg 4 #t)
         ;(define-proc 5 (<> (text "　ファーバー監督　")))
         (define-proc 5 (<> (str "Director Farber   ")))
         (set-reg 5 #t)
         ;(define-proc 6
         ; (<> (str " ") (text "　　　ガイ　　　") (str " ")))
         (define-proc 6 (<> (str "Guy               ")))
         (set-reg 6 #t)
         ;(define-proc 7 (<> (text "　　") (proc 17) (text "　　")))
         (define-proc 7 (<> (proc 17) (str "            ")))
         (set-reg 7 #t)
         (set-var F 3)
         (mes-load? 0)
         (set-var P 2))
        (/
         ;(define-proc 0
         ; (<> (str " ") (text "　パーティの事　") (str " ")))
         (define-proc 0 (<> (str "Party             ")))
         (set-reg 0 #t)
         ;(define-proc 1
         ; (<> (str " ") (text "　　映画の事　　") (str " ")))
         (define-proc 1 (<> (str "Movies            ")))
         (set-reg 1 #t)
         ;(define-proc 2 (<> (text "　　") (proc 13) (text "の事　　")))
         (define-proc 2 (<> (proc 13) (str "            ")))
         (set-reg 2 #t)
         ;(define-proc 3 (<> (text "　") (proc 14) (text "の事　")))
         (define-proc 3 (<> (proc 14) (str "          ")))
         (set-reg 3 #t)
         ;(define-proc 4 (<> (text "　　トニーの事　　")))
         (define-proc 4 (<> (str "Tony              ")))
         (set-reg 4 #t)
         ;(define-proc 5
         ; (<> (str " ") (text "　") (proc 15) (text "の事　") (str " ")))
         (define-proc 5 (<> (proc 15) (str "            ")))
         (set-reg 5 #t)
         ;(define-proc 6
         ; (<> (str " ") (text "　") (proc 16) (text "の事　") (str " ")))
         (define-proc 6 (<> (proc 16) (str "             ")))
         (set-reg 6 #t)
         ;(define-proc 7 (<> (text "ファーバー監督の事")))
         (define-proc 7 (<> (str "Director Farber   ")))
         (set-reg 7 #t)
         ;(define-proc 8
         ; (<> (str " ") (text "　　ガイの事　　") (str " ")))
         (define-proc 8 (<> (str "Guy               ")))
         (set-reg 8 #t)
         ;(define-proc 9 (<> (text "　") (proc 17) (text "の事　")))
         (define-proc 9 (<> (proc 17) (str "            ")))
         (set-reg 9 #t)
         (set-var F 3)
         (mes-load? 0)
         (set-var P 2))
        (/
         ;(define-proc 0 (<> (text "　　　セーブ　　　")))
         (define-proc 0 (<> (str "Save              ")))
         (set-reg 0 #t)
         ;(define-proc 1
         ; (<> (str " ") (text "ゲームを終了する") (str " ")))
         (define-proc 1 (<> (str "Close the game    ")))
         (set-reg 1 #t)
         (set-var F 3)
         (mes-load? 0)
         (set-var P 0)
         (if (</>
              (//
               (? (!= S 255))
               (nop@)
               (if (</>
                    (//
                     (? (!= A 255))
                     (nop@)
                     (set-var A 255)
                     (mes-load? "mes¥save.mec" 4096))))
               (mes-load? 4096)
               (if (</>
                    (// (? (= S 254)) (nop@) (set-var P 1))
                    (// (nop@) (set-var F 5) (mes-load? 0))))))))))
      (if (</> (// (? (= S 255)) (nop@) (set-var P 0)))))
     (/
      (if (</> (// (? (= 26 #t)) (nop@) (set-var F 1) (mes-load? 4096))))
      (set-var F 6)
      (mes-load? 0)
      (text-frame 14 328 69 383)
      (seg-call)
      (branch-reg 23 (</> (/ (proc 18)) (/ (set-reg 23 #f))))
      (set-var P 0))))))


 ; Look -> Around
 (seg (? (= V 0) (= N 0))
      (if (</>
           ; ???, not sure if register 110 can be #f at this point in the script.
           (//
            (? (= 110 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "僕の事務所が６つは入りそうな広い部屋だ。")
            (str "It's a huge room, big enough to fit six of my offices.")
            (proc 18)

            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "僕の母はアメリカでも屈指の実業家の娘で、まだほんの子供の頃連れられて行った母の実家にはこんな部屋もあった。")
            (str "My mother, the daughter of one of America's leading businesspeople, took me to her family home when I was a very young child, which had a room like this.")
            (proc 18)

            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "だが、それ以来こんな広い部屋を持つ個人宅はお目にかかったことはない。")
            (str "But since then, I've never seen a private home with a room this large.")
            (set-reg 110 #t))

           ; Note: First time
           (//
            (? (= 111 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "ニューヨークでこれだけの広さを求めるのは、事実上美術館でなければ無理だろうな。")
            (str "In New York, it would be practically impossible to find a space this large unless it were a museum.")
            (set-reg 111 #t))

           ; Note: Second+ time
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "なんとなくハリウッドを垣間見たような気分だな。")))))
            (str "I feel like I've caught a glimpse of Hollywood.")))))


 ; Look -> Yuriko
 (seg (? (= V 0) (= N 1))
      (if (</>
           (// (? (= 657 #t)) (nop@) (set-var V 4) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 660 #t) (= 112 #f))
            (proc 13)
            (text "が僕のことを調べている？")
            (proc 18)

            (proc 17)
            (text "に色々と聞いているのはそういうコトを意味するのだろうか。")
            (set-reg 112 #t))

           (//
            (? (= 660 #t))
            (text "単純に好奇心ともとれるが、そうでなければ何の目的があってそうしているのだろう？"))

           ; First time
           (//
            (? (= 113 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(proc 13)
            ;(text "は")
            ;(proc 14)
            ;(text "と話がはずんでいるようだ。年が近いので話があうのかもしれないが、いったい何を話しているのやら。")
            (proc 13)
            (str " and ")
            (proc 14)
            (str " seem to be having a lively conversation. They're close in age, so maybe that's why they get along so well, but I wonder what they're talking about.")
            (set-reg 113 #t))

           ; Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "よく見るとあちこちまわって歩いているようだが、何も問題を起こさないでくれればいいんだが")
            ;(text-raw 60393 60393)))))
            (str "Looking closely, they seem to be wandering around quite a bit. I hope they don't cause any trouble")
            (text-raw 60393 60393)))))


 ; Look -> Patricia
 (seg (? (= V 0) (= N 2))
      (if (</>
           (// (? (= 657 #t)) (nop@) (set-var V 4) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 651 #t) (= 114 #f))
            (proc 14)
            (text "は、時々こちらを見ているが、目があうと露骨に視線をそらす。")
            (set-reg 114 #t))

           (//
            (? (= 651 #t))
            (text "まずいコトになってしまったな。"))

           (//
            (? (= 652 #t) (= 115 #f))
            (text "彼女を見ると必ずと言っていいほど目があう。恥ずかしそうに顔を赤らめる彼女")
            (text-raw 60393 60393 60393)
            (text "変に誤解されてやしないか？")
            (set-reg 115 #t))

           (//
            (? (= 652 #t))
            (text "困ったな")
            (text-raw 60393 60393)
            (proc 14)
            (text "の誤解は早急に解いておかないと、後でひどい目にあいそうな予感がする。"))

           ; First time
           (//
            (? (= 116 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "清楚なワンピースであることがこの場では妙に引き立つ結果を招いている。")
            (str "The fact that she's wearing a simple, elegant dress makes her stand out in a strange way in this setting.")
            (proc 18)

            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "いい意味で目をひくのだが、ゲストを招く側としては目立たぬ方がよいのではないだろうか？")
            (str "It's eye-catching in a good way, but wouldn't it be better for the host to be less conspicuous?")
            (set-reg 116 #t))

           ; Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "少し理屈っぽい気もするが、性格のまっすぐないい娘のよう" 'br)
            ;(text "だ。")))))
            (str "She seems a little argumentative, but she appears to be a good girl with a straightforward personality.")))))


 ; Look -> Tony
 (seg (? (= V 0) (= N 3))
      (if (</>
           (// (? (= 657 #t)) (nop@) (set-var V 4) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 656 #t) (= 117 #f))
            (text "悪い噂も多いようだが、言われるほどのひどい男ではないように感じた。")
            (set-reg 117 #t))

           (//
            (? (= 656 #t))
            (text "実は寂しい人だったりするのかもしれないな。"))

           ; Note: First time
           (//
            (? (= 118 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "傲慢そうな態度を崩さないが、あれもある意味で職業病のようなものなのだろうか。")
            (str "He maintains an arrogant attitude, but perhaps that just comes with the job.")
            (set-reg 118 #t))

           ; Note: Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "一人ぽつんと立っているのが気にかかるが")
            ;(text-raw 60393 60393 60393)))))
            (str "I'm a little worried about him standing there all alone")
            (text-raw 60393 60393 60393)))))


 ; Look -> Gloria
 (seg (? (= V 0) (= N 4))
      (if (</>
           (// (? (= 657 #t)) (nop@) (set-var V 4) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 654 #t) (= 119 #f))
            (text "ぴったりと")
            (proc 16)
            (text "にくっついて離れない。")
            (proc 18)

            (text "あれは、ガイやトニーの魔手から")
            (proc 16)
            (text "をガードしているのかな？")
            (set-reg 119 #t))

           (//
            (? (= 654 #t))
            (text "そんなに")
            (proc 16)
            (text "の事が心配なんだろうか？"))

           ; Note: First time
           (//
            (? (= 120 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(proc 16)
            ;(text "と寄り添うように立っているのが")
            ;(proc 15)
            ;(text "・ウォン。")
            ;(proc 16)
            ;(text "のエージェントのチャイニーズだ。")
            (str "Standing close to ")
            (proc 16)
            (str " is ")
            (proc 15)
            (str " Wong. ")
            (proc 16)
            (str "'s Chinese agent.")
            (set-reg 120 #t))

           ; Note: Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "どこか人を寄せ付けない雰囲気のある女性だな。")))))
            (str "She has a somewhat unapproachable aura about her.")))))


 ; Look -> Cindy
 (seg (? (= V 0) (= N 5))
      (if (</>
           (// (? (= 657 #t)) (nop@) (set-var V 4) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 650 #t) (= 121 #f))
            (proc 16)
            (text "は確かにかわいいし、話が出来たこと自体が夢のようなのだが")
            (text-raw 60393 60393 60393)
            (proc 18)

            (text "しかし、なんだね。少し幼すぎるかな")
            (text-raw 60393 60393 60393)
            (set-reg 121 #t))

           (//
            (? (= 650 #t))
            (text "あいも変わらず")
            (proc 15)
            (text "にべったりされて")
            (text-raw 60393 60393 60393)
            (text "少し同情を感じるな。"))

           ; Note: First time
           (//
            (? (= 122 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "遠めに見ても輝きが違う。やはり普通の女の子とは違う何かを持っているんだな。")
            (str "Even from a distance, her energy is different. She definitely possesses something that sets her apart from ordinary girls.")
            (set-reg 122 #t))

           ; Note: Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(proc 16)
            ;(text "と話が出来ることだけでも今日のパーティは収穫あったって感じかな。")))))
            (str "The mere opportunity to talk to ")
            (proc 16)
            (str " made today's party worthwile.")))))


 ; Look -> Director Farber
 (seg (? (= V 0) (= N 6))
      (if (</>
           (// (? (= 657 #f)) (nop@) (set-var V 5) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 662 #t) (= 123 #f))
            (text "彼と話をして思ったが、彼は本当に少年の心を持ったまま大人になった人なのではなかろうか。")
            (proc 18)

            (text "ガイと話をしている今でも、何かおもしろいことを発見した子供のような笑顔を見せている。")
            (set-reg 123 #t))

           (//
            (? (= 662 #t))
            (text "ハリウッドの巨匠と言われる大物ではあるが、親しみやすい人物だな。"))

           ; Note: First time
           (//
            (? (= 124 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "温厚そうに見える監督だが、巷の噂では仕事の最中はかなりキツイ性格らしい。")
            (str "He may seem mild-mannered, but rumors suggest that the director has a very tough personality when it comes to work.")
            (proc 18)

            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "もっとも、仕事となれば誰しも多少の性格変化は生じるものだと思うのだが。")
            (str "But, I suppose everyone's personality changes somewhat when it comes to work.")
            (set-reg 124 #t))

           ; Note: Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "ファーバー監督は、ガイと何やら話し込んでいるようだ。")))))
            (str "Director Farber seems to be deeply engaged in a conversation with Guy.")))))


 ; Look -> Guy
 (seg (? (= V 0) (= N 7))
      (if (</>
           (// (? (= 657 #f)) (nop@) (set-var V 5) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 663 #t) (= 125 #f))
            (text "ガイはまた監督と話している。きっと、")
            (proc 17)
            (text "を避けているからなのだろう。")
            (set-reg 125 #t))

           (//
            (? (= 663 #t))
            (text "ああも露骨に")
            (proc 17)
            (text "を避けるのでは、彼女が可哀想だ。"))

           ; Note: First time
           (//
            (? (= 126 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "ガイは監督に捕まっている。")
            (str "Guy seems to be stuck in a conversation with the director.")
            (proc 18)
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "何を話しているのかは聞こえないが、かなり盛り上がっている様子が伺える。")
            (str "I can't hear what they're talking about, but it seems like they're having a lively discussion.")
            (set-reg 126 #t))

           ; Note: Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "どうでもいいコトだが、少しは")
            ;(proc 17)
            ;(text "に話しかけてやればいいのになぁ。")))))
            (str "It's not important, but I wish he'd say something to ")
            (proc 17)
            (str ".")))))


 ; Look -> Kristy
 (seg (? (= V 0))
      (if (</>
           (// (? (= 657 #f)) (nop@) (set-var V 5) (seg-call) (set-var V 0))))

      (if (</>
           (//
            (? (= 663 #t) (= 127 #f))
            (text "ひとりぽつんとたたずむ")
            (proc 17)
            (text "の心境はいかばかりか")
            (text-raw 60393 60393)
            (proc 18)

            (text "気丈に笑ってはいたけれど、心配でたまらない。")
            (set-reg 127 #t))

           (//
            (? (= 663 #t))
            (text "ガイの奴、一体何をやってるんだ。"))

           ; Note: First time
           (//
            (? (= 128 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(proc 17)
            ;(text "は監督にガイをとられてひとりぼっちだ。しかし、不満一つ見せず、パーティに花を添えている。")
            (proc 17)
            (str " is all alone now that the director has snatched Guy away from her. She doesn't show any signs of displeasure though, and adds to the party's charm.")
            (set-reg 128 #t))

           ; Note: Second+ time? (other branches?)
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "それにしても、今日は派手なドレスを着ているな。")))))
            (str "She's certainly wearing a flashy dress today.")))))


 ; Talk
 (seg (? (= V 1))
      (if (</>
           (//
            (? (<= N 4) (= 657 #t))
            (nop@)
            (set-var V 4)
            (seg-call)
            (set-var V 1))

           (//
            (? (>= N 5) (= 657 #f))
            (nop@)
            (set-var V 5)
            (seg-call)
            (set-var V 1))))

      (branch-var N
       (</>
        (/ (mes-jump "b:¥mes¥001_0.mes"))
        (/
         (if (</>
              (// (? (= 651 #f) (= 652 #f)) (nop@))
              (// (nop@) (set-reg 100 #t))))
         (if (</>
              (//
               (? (= 100 #t))
               (exec-mem 8192 "G 1 25 99 20 189,A 1,P 1 25 99")
               (cmd:196 0 1)
               (image-file "b:¥gpc¥b01b1.gpc")
               (image-mem 1)
               (exec-mem 8192 "A 0")
               (exec-mem 17664 25 99 44 287 5 0)
               (text-frame 8 308 71 323)
               (proc 14)
               (proc 19)
               (text "悪いけど、いま手が離せないの。" '60392)
               (proc 18)
               (exec-mem 8192 "A 1,P 1 25 99,F 1,A 0")
               (exec-mem 17664 25 99 44 287 5 0)
               (set-reg 23 #t))
              (// (mes-jump "b:¥mes¥001_1.mes")))))
        (/ (mes-jump "b:¥mes¥001_2.mes"))
        (/ (mes-jump "b:¥mes¥001_3.mes"))
        (/ (mes-jump "b:¥mes¥001_4.mes"))
        (/ (mes-jump "b:¥mes¥001_5.mes"))
        (/ (mes-jump "b:¥mes¥001_6.mes"))
        (/ (mes-jump "b:¥mes¥001_7.mes")))))


 ; Think -> Party
 (seg (? (= V 2) (= N 0))
      (if (</>
           ; Note: First time
           (//
            (? (= 129 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "こういうパーティは初めてだけど、撮影前の親睦会みたいなものってよく開かれるのだろうか？")
            (str "This is my first time at a party like this. I wonder though, are get-togethers before filming like this a common occurrence?")
            (proc 18)

            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "ガイがこのまま俳優になったら、またこういう機会にめぐり合えるのかな。")
            (str "If Guy becomes an actor, I wonder if I'll get another opportunity to attend a party like this.")
            (set-reg 129 #t))

           ; Note: Second time
           (//
            (? (= 130 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "間近で有名人を見れるなんて滅多にない機会だ。僕はミーハーではないが、やはり心踊る気分だ。")
            (str "It's a rare chance to see a celebrity up close. I'm not a fanboy, but it's exciting nonetheless.")
            (set-reg 130 #t))

           ; Note: Third+ time
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "少しばかり居心地の悪さを感じていたりして")
            ;(text-raw 60393 60393 60393)))))
            (str "I'm also feeling a little uncomfortable though")
            (text-raw 60393 60393 60393)))))


 ; Think -> Movies
 (seg (? (= V 2) (= N 1))
      (if (</>
           ; Note: First time
           (//
            (? (= 131 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "大リーガーのストーリーということでガイが出演することになった映画だけど、キャスティングは豪華なんだよなぁ。")
            (str "Guy's in this movie because it's a story about a major league baseball player, but the rest of the cast is really impressive.")
            (set-reg 131 #t))

           ; Note: Second time
           (//
            (? (= 132 #f))
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "これだけの豪華メンバーを集めると、それだけでヒットしそうな気がするのは素人だけなんだろうけど")
            ;(text-raw 60393 60393 60393 60393)
            (str "With such a star-studded cast, it seems like it's bound to be a hit, but I guess that's just my amateur opinion")
            (text-raw 60393 60393 60393 60393)
            (proc 18)

            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "いったい予算はいくらなんだろう？")
            (str "I wonder how high the budget was?")
            (set-reg 132 #t))

           ; Note: Third+ time
           (//
            ; Actor: Jake Snipes (inner monologue / thought)
            ;(text "僕にもエキストラ出演の機会があったりし")
            ;(text-raw 60393 60393 60393)
            ;(text "ないか。")))))
            (str "I wonder if I'll have a chance to be an extra")
            (text-raw 60393 60393 60393)
            (str " probably not.")))))


 ; Think ->
 (seg (? (= V 2) (= N 2))
      (if (</>
           (//
            (? (= 660 #t) (= 133 #f))
            (proc 17)
            (text "に何を訊ねていたのだろう？")
            (proc 18)

            (text "特別おかしいことではないと思うが、何か聞きたいなら直接聞いてくれてもいいと思うのに")
            (text-raw 60393 60393 60393 60393)
            (set-reg 133 #t))

           (//
            (? (= 660 #t) (= 134 #f))
            (proc 13)
            (text "が恋愛感情で僕を見ていることは考えにくい、となると何か僕のコトを調べる必要があるのか？")
            (set-reg 134 #t))

           (// (? (= 660 #t)) (text "後で探りをいれてみるか。"))

           (//
            (? (= 135 #f))
            (proc 13)
            (text "が僕の助手になって１年が経つ。")
            (proc 18)

            (text "まだ飲酒年齢に満たない未熟者だが、僕にはないひたむきさがまぶしい少女だ。")
            (set-reg 135 #t))

           (//
            (text "彼女の事を言葉で説明するとすれば、旅行好きで、探偵好きのおっちょこちょいな女の子")
            (text-raw 60485 60484)
            (text "といったところだ。")))))


 ; Think ->
 (seg (? (= V 2) (= N 3))
      (if (</>
           (//
            (? (= 651 #t) (= 136 #f))
            (text "いったい何が彼女の気に触ったのか")
            (text-raw 60393 60393)
            (text "僕にはさっぱり見当がつかない。")
            (set-reg 136 #t))

           (//
            (? (= 651 #t))
            (text "原因がわからないと下手にご機嫌をとることも出来ない。"))

           (//
            (? (= 652 #t) (= 137 #f))
            (text "超鈍感と言われてしまったが")
            (text-raw 60393 60393 60393)
            (text "いったい何に気づいてないと言うんだろう？")
            (proc 18)

            (text "もしかすると、")
            (proc 14)
            (text "は僕の事が好きだと言いたかったのだろうか？")
            (set-reg 137 #t))

           (//
            (? (= 652 #t))
            (text "きっと温室育ちで普通の男と接触もないから僕なんかに興味を持ったのだな。"))

           (//
            (? (= 138 #f))
            (text "監督の娘")
            (proc 14)
            (text "は、聡明で優等生タイプの女の子のよう" 'br)
            (text "だ。")
            (proc 18)

            (text "人をやり込めるのが好きなタイプとも思えるが、それは彼女の鎧なのかもしれない。")
            (set-reg 138 #t))

           (//
            (? (= 139 #f))
            (text "年齢的に見ると、少し幼い方かもしれない。")
            (proc 18)

            (text "大人と接してばかりの子供時代から推測すると、ちやほやされることになれているようにも想像するのだが")
            (text-raw 60393 60393 60393)
            (set-reg 139 #t))

           (//
            (text "とにかく、意外と侮れない女の子ではないかと思う。")))))


 ; Think ->
 (seg (? (= V 2) (= N 4))
      (if (</>
           (//
            (? (= 656 #t) (= 140 #f))
            (text "話をしてわかったのは、彼が非常に孤独な人間であるということだ。")
            (proc 18)

            (text "華やかな世界に生きていると思いきや、実情は決して華やかではない。舞台に生きるものの運命のようなものだろうか？")
            (set-reg 140 #t))

           (//
            (? (= 656 #t))
            (text "しかし、彼のあの目は、見ているものを不安にさせる。"))

           (//
            (? (= 141 #f))
            (text "トニー・フォード")
            (text-raw 60393 60393 60393)
            (text "あまりいい噂を聞かない舞台演出家であり舞台俳優。")
            (proc 18)

            (text "心無い噂の原因は、見たものをゾッとさせる、あの鋭い目のせいではないのか？")
            (set-reg 141 #t))

           (//
            (text "僕には、彼が何を考えているか知る由もないが、孤独を背負っている感じがして、同情してしまう。")))))


 ; Think ->
 (seg (? (= V 2) (= N 5))
      (if (</>
           (//
            (? (= 654 #t) (= 142 #f))
            (proc 16)
            (text "をとても大切にしているのはわかるんだが、それ以外はどうでもいいって感じだね。")
            (proc 18)

            (text "あそこまでご執心だと、何か裏にあるんじゃないかと疑いたくなってくるな。")
            (set-reg 142 #t))

           (//
            (? (= 654 #t))
            (text "エージェントとして優秀かもしれないが、あれでは")
            (proc 16)
            (text "が窮屈なのではないかなぁ。"))

           (//
            (? (= 143 #f))
            (proc 16)
            (text "のそばにピタッと寄り添い、まるで護衛でもしているようだ。")
            (proc 18)

            (text "実際、男どもからガードしているのは明白だが")
            (text-raw 60393 60393)
            (text "こんな席でまでああいう態度はどうかと思うぞ。")
            (set-reg 143 #t))

           (//
            (text "単なる生真面目なだけなのかなぁ")
            (text-raw 60393 60393 60393 60393)))))


 ; Think ->
 (seg (? (= V 2) (= N 6))
      (if (</>
           (//
            (? (= 650 #t) (= 144 #f))
            (text "あそこまでキャピキャピしているとは思わなかった。なんとなく自分の年を感じさせられたな。")
            (proc 18)

            (text "けれど、彼女のあのノリは営業用に作られたもので、本当は、もっと聡明な娘なんじゃないかと思うんだ。")
            (set-reg 144 #t))

           (//
            (? (= 650 #t))
            (text "なぜだか、寂しい雰囲気が伝わってくると思うのは、錯覚なのだろうか？"))

           (//
            (? (= 145 #f))
            (text "今日の服装もそのまま営業用の衣装だな。いや、彼女にとってこのパーティは仕事の一環なわけだから当然の事か。")
            (set-reg 145 #t))

           (//
            (text "さっきからほとんどエージェントにべったりじゃないか。彼女人見知りの激しいタイプなんだろうか？")))))


 ; Think ->
 (seg (? (= V 2) (= N 7))
      (if (</>
           (//
            (? (= 662 #t) (= 146 #f))
            (text "きっと現場では恐い監督なんだろうが、話してみると人のいいおじさんと言った感じだ。")
            (proc 18)

            (text "まるで少年のような心を持っていて、なんとなく気に入ってしまった。")
            (set-reg 146 #t))

           (//
            (? (= 662 #t))
            (text "ああいう繊細な心の持ち主でないと、映画監督として成功などしないのだろう。"))

           (//
            (? (= 147 #f))
            (text "今回は、ファーバー監督に招待されたわけではないが、ガイが許可ぐらいはもらっているんだろうな。")
            (proc 18)

            (text "あとでお礼を言っておかなきゃいけない。")
            (set-reg 147 #t))

           (//
            (text "監督は恐い人だと言う噂だが、今までのところその片鱗も見えない。")))))


 ; Think ->
 (seg (? (= V 2) (= N 8))
      (if (</>
           (//
            (? (= 663 #t) (= 148 #f))
            (text "まさか")
            (proc 17)
            (text "との仲が危うくなっていたなんて、最近ロクに連絡もとってなかったから気付かなかった。")
            (proc 18)

            (text "ああ、そうか。")
            (proc 17)
            (text "と二人だと気詰まりだから、僕をパーティに誘ったりしたのか。")
            (set-reg 148 #t))

           (//
            (? (= 663 #t))
            (text "二人のことに口出しするつもりもないが、願わくば元どおりになって欲しい。"))

           (//
            (? (= 149 #f))
            (text "ガイはいつもながら陽気で羨ましい。")
            (proc 18)

            (text "あの陽気さが僕に備わっていたら、無駄な時間を過ごさず生きてこれたのに、と思う。")
            (set-reg 149 #t))

           (//
            (text "それにしても、ガイからパーティに誘われるなんて思いがけない出来事だな。")))))


 ; Think ->
 (seg (? (= V 2))
      (if (</>
           (//
            (? (= 663 #t) (= 150 #f))
            (text "うまく行ってないガイとパーティに出席して、笑顔を絶やさずにいるのは努力がいる。")
            (proc 18)

            (text "それを感じさせないほど、幸せそうに見えたのに")
            (text-raw 60393 60393 60393 60393)
            (set-reg 150 #t))

           (// (? (= 663 #t)) (proc 17) (text "は大丈夫だろうか？"))

           (//
            (? (= 151 #f))
            (text "昔の彼女って言うのも変なものだな。会うたびに恋人は出来たのか、もっとしっかりしてもらわなきゃ私が恥ずかしい")
            (text-raw 60393 60393)
            (proc 18)

            (text "と、まあ、色々口うるさい。")
            (set-reg 151 #t))

           (//
            (text "ガイと仲良しなのはいい事だけど、僕は取り残された感じがするよ。")))))


 ; Set background for talking: Left side of room
 (seg (? (= V 4))
      (exec-mem 8192 "A 1")
      (image-file "b:¥gpc¥b01.gpc")
      (image-mem 0)
      (image-file "b:¥gpc¥b01a.gpc")
      (image-mem 1)
      (cmd:196 0 5)
      (exec-mem 8192 "A 0")
      (exec-mem 19456 12 16 67 287 2 1 1 56)
      (set-reg 657 #f))


 ; Set background for talking: Right side of room
 (seg (? (= V 5))
      (exec-mem 8192 "A 1")
      (image-file "b:¥gpc¥b02.gpc")
      (image-mem 0)
      (image-file "b:¥gpc¥b02a.gpc")
      (image-mem 1)
      (cmd:196 1 0)
      (exec-mem 8192 "A 0")
      (exec-mem 19456 12 16 67 287 3 1 1 56)
      (set-reg 657 #t))


 ; fallback handler, in case of a bug somewhere
 ; Note: could maybe drop to save a small amount of bytes
 (seg*
  (nop@)
  ;(text "※※※　バグです　※※※" 'br)
  (str "※※※ BUG ※※※" 'br)
  ;(text "Ｖ＝")
  (str "V = ")
  (exec-mem 35072 "DISP V")
  ;(text "　Ｎ＝")
  (str ", N = ")
  (exec-mem 35072 "DISP N")))