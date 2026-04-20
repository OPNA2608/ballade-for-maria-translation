; Ballade for Maria (PC-98) - 001D1.MEC
; Initial internal monologue. Split from main file for size reasons
; Actors:
; - Jake Snipes
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg* (nop@) (seg-call) (cmd:212))
 (seg
  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "僕の住むニューヨークから、飛行機でわずか１時間の距離に" 'br)
  ;(text "あるボストン。")
  (str "Boston's just an hour's flight away from New York, where I live.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "僕はいま、親友でメジャーリーグ選手のガイに誘われて、ハリウッドの巨匠と称されるファーバー監督の邸宅にいる。")
  (str "I'm currently at the home of John Fabio Farber, a legendary Hollywood director.")
  (proc 18)
  ; Note: Above line split over two boxes for length reasons.
  (str "I was invited here by my best friend, and Major League Baseball player, Guy Goldstein.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "監督の住まいはハリウッドにもニューヨークにもあるらしいがもともとの住まいはこのボストンの邸。")
  (str "The director apparently owns houses in Hollywood and New York, but his original home is this mansion in Boston.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "ここは、今は亡き奥様との思い出の場所だと何かの本で読んだ記憶がある。")
  (str "I remember reading in a book somewhere that this place was a place where he had memories of his late wife.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "広い居間は邸の豪華さを物語るにふさわしく華やかで美しい。")
  (str "The spacious living room is magnificent and beautiful, befitting the grandeur of the mansion.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "そしてまた、招かれた人々も僕にとって天上人のような存在。僕は、この夢のような現実に酔いしれていた。")
  (str "And the people who were invited were like celestial beings to me. I was intoxicated by this dreamlike reality.")
  (proc 18)
 )
)