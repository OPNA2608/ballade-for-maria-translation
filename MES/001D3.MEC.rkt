; Ballade for Maria (PC-98) - 001D3.MEC
; Initial Jake - Yuriko dialogue. Split from main file for size reasons
; Actors:
; - Jake Snipes
; - Yuriko O'Brien
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg* (nop@) (seg-call) (cmd:212))
 (seg
  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "ハ" '60517)
  ;(text "イ、ボス！　")
  ;(text-raw 60393 60393 60393 60393)
  ;(text "困りましたねぇ、うふふ。" '60392)
  (str "Hey" '60517)
  (str " boss! ")
  (text-raw 60393 60393 60393 60393)
  (str "Quite the predicament, ufufu." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "困惑の表情を浮かべる僕をからかいに、秘書の")
  ;(proc 13)
  ;(text "がやって来た。")
  (str "Seeing my confused expression, my secretary ")
  (proc 13)
  (str " came over to tease me.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "人一倍ミーハーで、探偵小説に憧れて、かわいい顔して性格はちょっと難ありの女の子だ。")
  (str "She's an extremely fanatical girl who loves detective novels, and has a cute face.")
  (proc 18)
  (str "And yet, she has a somewhat")
  (text-raw 60393 60393 60393 60393)
  (str " difficult personality.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "彼女は、きっと")
  ;(proc 14)
  ;(text "と僕のやりとりの一部始終を聞いていたのだろう")
  ;(text-raw 60393 60393 60393)
  (str "She must've heard the entire exchange between ")
  (proc 14)
  (str " and me")
  (text-raw 60393 60393 60393)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "ボスぅ、ものすご" '60517)
  ;(text "く憂鬱そうな顔してますよぉ。パーティの席でそんな顔しちゃダメです。" '60392)
  (str "Boss, you look soo" '60517)
  (str " depressed. You shouldn't make such a face at a party." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ; people's? peoples'? I HATE LANGUAGE.
  ;(text "言葉の内容とは裏腹な彼女のニヤケた表情。人の不幸は彼女の養分となるらしい。")
  (str "Her smirking expression said it all. It seems that she revels in other peoples' misfortunes.")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text-raw 60393 60393 60393)
  ;(text "どうせ、その地獄耳で全部聞いてたんだろう？" '60392)
  (text-raw 60393 60393 60393)
  (str "I bet you heard everything with those super-sensitive ears of yours, didn't you?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "えへへ" '60517)
  ;(text "、")
  ;(proc 13)
  ;(text "の耳はダンボのように大きい耳なのですよ。エッヘン！" '60392)
  (str "Hehe" '60517)
  (str ", my ears are as big as Dumbo's. Ahem!" '60392) ; "Ahem!" ?
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "あぁそう、それはよかったね")
  ;(text-raw 60393 60393 60393 60393 60393 60392)
  (str "Oh really, how interesting")
  (text-raw 60393 60393 60393 60393 60393 60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "はいっ、とっても重宝してま" '60517)
  ;(text "す。" '60392)
  (str "Yeah, it's been ve" '60517)
  (str "ry useful." '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "探偵にとって情報収集は重要なポイントですから、なんでも聞こえる地獄耳は必須技能とも言えますよね。" '60392)
  (str "For a detective, gathering information is crucial, so having a keen ear is an essential skill, wouldn't you say?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text-raw 60393 60393 60393 60393)
  ;(text "そ、そういうものかな？" '60392)
  (text-raw 60393 60393 60393 60393)
  (str "Is that so?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "イヤだなぁ、ボス。常識ですってば！" '60392)
  (str "Oh no, boss. That's common sense!" '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text-raw 60393 60393 60393 60393)
  ;(text "なにが常識だというのか。この娘とは１年程度の付合いだが、いまだにその思考回路が理解出来ない。")
  (text-raw 60393 60393 60393 60393)
  (str "Common sense? I've known this girl for about a year, but I still can't understand her way of thinking.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "もしかして、僕は２６にしてすでにオジサンと化してしまっているのだろうか？")
  (str "Could it be that I've already turned into an old man at the age of 26?")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "そうそう、そう言えば、今日は主役のテッドが来ないんですって")
  ;(text-raw 60393 60393 60393)
  ;(text "お目当てが来なくてガッカリ" '60517)
  ;(text "。" '60392)
  (str "That reminds me: The star of the show, Ted, isn't coming today")
  (text-raw 60393 60393 60393)
  (str " I was so" '60517)
  (str " looking forward to seeing him." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "この急な話題の切り替わりにも、時々ついていけない")
  ;(text-raw 60393 60393 60393 60393)
  (str "Sometimes, I can't keep up with these sudden topic changes")
  (text-raw 60393 60393 60393 60393)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "テッドって誰？" '60392)
  (str "Who's Ted?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "え" '60517)
  ;(text "、テッド・グレイスン、知らないんですかぁ？" '60392)
  (str "Wha" '60517)
  (str "t, you don't know Ted Grayson?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ; Note: no gay here :pensive:
  ;(text "俳優らしいのはわかるが、あいにく男に興味はないのでね。" '60392)
  (str "I assume that he's an actor or something? Unfortunately, I'm not interested in men." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "僕がそう言うと、")
  ;(proc 13) ; Yuriko
  ;(text "は思い切り顔をしかめた。")
  (str "When I said that, ")
  (proc 13)
  (str " frowned really intensely.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "テッドなんとかという男の名前を知らないのが、そんなに頭にくることなのだろうか？")
  (str "Is it really that upsetting that I don't know some guy named Ted?")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 13)
  (proc 19)
  ; Actor: Yuriko O'Brien
  ;(text "あ" '60517)
  ;(text "あ、もっと素敵な方達とお知り合いになって有意義な時を過ごそ" '60517)
  ;(text "っと！" '60392)
  (str "Ah" '60517)
  (str "h, I'd re" '60517)
  (str "ally like to meet more wonderful people and spend my time meaningfully!" '60392)
  (proc 18)
 )
)