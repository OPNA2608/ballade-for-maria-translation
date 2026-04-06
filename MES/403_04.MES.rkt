(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg*
  (cmd:209 0 2)
  (image-file "gpc¥wall1.gpc")
  (image-mem 0)
  (image-file "gpc¥wall2.gpc")
  (image-mem 0)
  (image-file "gpc¥win_m.gpc")
  (image-mem 1)
  (exec-mem 256 11 1 58 36 1 2 0 2560 2560 1 1)
  (image-file "b:¥gpc¥b30.gpc")
  (image-mem 0)
  (cmd:209 1 2)
  (text-color 0 2 2)
  (text-frame 14 328 69 383)
  (cmd:203 1 1)
  (branch-reg 510
   (</>
    (/
     (text "クラブ・カスバへとやって来た。")
     (proc 18)
     (text "しかし、残念ながら今日は営業していないようだ。")
     (set-reg 510 #t)
     (nop@))
    (/
     (text "クラブ・カバスの前だ。扉は固く閉ざされ、営業している様子はない。")
     (set-reg 510 #f))))
  (cmd:203 1 0)
  (exec-mem 12288 0 20 (bytes 235 186) 72 368 0 1021 2)
  (text-frame 8 308 69 383)
  (cmd:203 1 1)
  (mes-jump "b:¥mes¥4_map.mes")))