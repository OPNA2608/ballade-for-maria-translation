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
  (image-mem 1 0)
  (exec-mem 256 11 1 58 36 1 2 0 2560 2560 1 1)
  (image-file "gpc¥b18.gpc")
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
  (branch-reg 303
   (</>
    (/
     (text "ギュンターと話がしたいと彼に面接を申し込んだが時間に余裕が無いから")
     (text-raw 60393 60393 60393)
     (text "と、会ってはもらえなかった。")
     (set-reg 303 #t))
    (/
     (text "精神科医の元を訪ねたが、会う時間など無いと追い返されてしまった。")
     (set-reg 303 #f))))
  (cmd:203 1 0)
  (exec-mem 12288 0 20 (bytes 235 186) 72 368 0 1021 2)
  (text-frame 8 308 69 383)
  (cmd:203 1 1)
  (if (</> (// (? (= 795 #t)) (nop@) (set-reg 637 #t))))
  (mes-jump "b:¥mes¥2_map.mes")))