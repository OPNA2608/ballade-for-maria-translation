(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (if (</> (// (? (!= M 3)) (nop@) (sound ' 2))))
  (cmd:209 0 2)
  (image-file "gpc¥wall1.gpc")
  (image-mem 0)
  (image-file "gpc¥wall2.gpc")
  (image-mem 0)
  (image-file "gpc¥win_m.gpc")
  (image-mem 1)
  (exec-mem 256 11 1 58 36 1 2 0 2560 2560 1 1)
  (image-file "b:¥gpc¥b37.gpc")
  (image-mem 0)
  (if (</>
       (//
        (? (!= M 3))
        (nop@)
        (sound ' 0)
        (sound ' "uso¥ap_03.uso")
        (sound ' 1)
        (set-var M 3))))
  (cmd:209 1 2)
  (text-color 0 2 2)
  (text-frame 14 328 69 383)
  (cmd:203 1 1)
  (if (</>
       (//
        (? (= 795 #t) (= 502 #f))
        (text "誰もいないな")
        (text-raw 60393 60393 60393)
        (text "グロリアはここにいると思ったのに。")
        (set-reg 502 #t))
       (//
        (? (= 795 #t))
        (text "不在のようだ、他をあたってみよう。"))
       (//
        (? (= 503 #f))
        (text "シンディが帰って来た形跡は無いな")
        (text-raw 60393 60393 60393)
        (text "グロリアもここには来ていないようだ。")
        (set-reg 503 #t))
       (//
        (text "シンディがいなければ、他の誰かがここに来るって事もなさそうだ。って事はここにいるだけ時間の無駄だな。"))))
  (cmd:203 1 0)
  (exec-mem 12288 0 20 (bytes 235 186) 72 368 0 1021 2)
  (text-frame 8 308 69 383)
  (cmd:203 1 1)
  (mes-jump "b:¥mes¥4_map.mes")))