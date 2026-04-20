; Ballade for Maria (PC-98) - 001D3.MEC
; Initial Jake - Kristy dialogue. Split from main file for size reasons
; Actors:
; - Jake Snipes
; - Kristy Dern
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg* (nop@) (seg-call) (cmd:212))
 (seg
  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text "ハイ、")
  ;(proc 12)
  ;(text "！　どう、楽しんでる？" '60392)
  (str "Hey, ")
  (proc 12)
  (str "! How're you, are you having fun?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "やぁ")
  ;(proc 17)
  ;(text "。そっちはどうなの？" '60392)
  (str "Heya ")
  (proc 17)
  (str ". How's it going over there?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text "ご覧の通りよ。ガイはファーバー監督に取られちゃったわ。" '60392)
  (str "As you can see, Guy has been snatched up by director Farber." '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "おやおや、それはご愁傷様。" '60392)
  (str "Oh dear, I'm so sorry to hear that." '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text "べつにいいんだけどね")
  ;(text-raw 60393 60393 60393 60393 60392)
  (str "It's fine, I guess")
  (text-raw 60393 60393 60393 60393 60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text "でも")
  ;(text-raw 60393 60393)
  ;(text "ねぇ、監督の家がこれほど凄いなんて想像してた？" '60392)
  (str "But")
  (text-raw 60393 60393)
  (str " hey, could you've ever imagined that the director's house would be this amazing?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "いいや。だけど")
  ;(proc 17)
  ;(text "の家はもっと大きいじゃないか。" '60392)
  (str "Nope. But your house is much bigger, isn't it?")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text "嫌だ、私の家はこじんまりした慎ましやかなものです。" '60392)
  (proc 17)
  (proc 19)
  (str "No, my house is small and modest." '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "訂正。キミの住んでる所じゃなくて実家の話。部屋数はゆうに５０、プールはもちろんのこと")
  ;(text-raw 60393 60393 60393 60392)
  (str "Correction: I was thinking of your parents' house, not where you live. It has well over 50 rooms, and of course, a swimming pool")
  (text-raw 60393 60393 60393 60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text "やめてよ！　こんな時に実家の話なんてしないで頂戴。" '60392)
  (str "Stop it! Don't bring up my family home at a time like this." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(proc 17)
  ;(text "は、その美しい顔を曇らせ僕を睨みつけた。")
  (proc 17)
  (str "'s beautiful face clouded over as she glared at me.")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "ゴメン")
  ;(text-raw 60393 60393)
  ;(text "キミがそんなに気にしてるなんて知らなかった。" '60392)
  (str "I'm sorry")
  (text-raw 60393 60393)
  (str " I didn't know you were so worried about it." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(proc 17)
  ;(text "が家を出たのは両親の不仲が原因だと聞いたことがあったが、こんなにも家を毛嫌いしているとは思わなかった。")
  (str "I had heard that ")
  (proc 17)
  (str " left home because of her parents' strained relationship, but I never imagined she hated her home this much.")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text-raw 60393 60393 60393)
  ;(text "私こそごめんなさい。実家の話となるとつい")
  ;(text-raw 60393 60393 60393 60392)
  (text-raw 60393 60393 60393)
  (str "No, I'm the one who should apologize. When the topic of my family comes up, I tend to get carried away")
  (text-raw 60393 60393 60393 60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "いや、いいよ")
  ;(text-raw 60393 60393 60393)
  ;(text "僕が悪かったんだから。" '60392)
  (str "No, it's okay")
  (text-raw 60393 60393 60393)
  (str " It was my fault for bringing it up." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "彼女は僕に力ない微笑みをかえすと")
  ;(text-raw 60393 60393 60393)
  (str "I gave a weak smile, and she returned the gesture")
  (text-raw 60393 60393 60393)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 17)
  (proc 19)
  ; Actor: Kristy Dern
  ;(text "悪いけど、一人にしてね。" '60392)
  (str "I'm sorry, but please leave me alone for a while." '60392)
  (proc 18)
 )
)