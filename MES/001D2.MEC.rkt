; Ballade for Maria (PC-98) - 001D2.MEC
; Initial Jake - Patricia conversation. Split from main file for size reasons
; Actors:
; - Jake Snipes
; - Patricia Farber
(mes
 (meta (engine 'ADV) (charset "pc98") (extraop #t))
 (seg* (nop@) (seg-call) (cmd:212))
 (seg
  (text-frame 8 308 71 323)
  ;(text "女の子")
  (str "Girl")
  (proc 19)
  ; Actor: Patricia Farber
  ;(text "今日はようこそ。ファーバーの一人娘の")
  ;(proc 14)
  ;(text "です。" '60392)
  (str "Welcome. I'm ")
  (proc 14)
  (str ", Mr. Farber's only daughter." '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "お招きありがとう。")
  ;(proc 12)
  ;(text "・スナイプスです。" '60392)
  (str "Thank you for the invitation. I'm ")
  (proc 12)
  (str " Snipes." '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 14)
  (proc 19)
  ; Actor: Patricia Farber
  ;(text "まぁ、あなたがニューヨークの探偵さんなの！？" '60392)
  (str "Wow, you're the detective from New York?!" '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "意外な事に、そう言った彼女は嬉々とした表情で僕を見つめている。")
  (str "Surprisingly, she looked at me with a joyful expression as she said that.")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "僕が探偵であるという話はガイから？" '60392)
  (str "Did Guy tell you that I'm a detective?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 14)
  (proc 19)
  ; Actor: Patricia Farber
  ;(text "もちろんそうよ！　わたしね、あなたに会うのが楽しみだったの。本物の探偵に会うの、初めてなのよ。" '60392)
  (str "Of course! I was really looking forward to meeting you. It's my first time meeting a real detective." '60392)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "僕は、穴があったら隠れたい心境だった")
  ;(text-raw 60393 60393 60393 60393) ; 60393: ··
  (str "I wanted to crawl into a hole and hide")
  (text-raw 60393 60393 60393 60393)
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "私立探偵と言えば聞こえはいいが、実際には、開業して３年で大した仕事などしていない情けない状態にあったからだ。")
  (str "While the title of \"private detective\" sounded impressive, the reality was anything but.")
  (proc 18)
  (str "After three years in business, I hadn't done any significant work. It was rather pathetic.")
  (proc 18)

  ; Actor: Jake Snipes (inner monologue / thought)
  ;(text "探偵の鑑札だって、半ば金で買ったようなものだ。")
  (str "Even a detective's license is something anyone with money can buy.")
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 14)
  (proc 19)
  ; Actor: Patricia Farber
  ;(text "あのぉ")
  ;(text-raw 60393 60393 60393)
  ;(text "会うのを楽しみにされるの、迷惑でした？" '60392)
  (str "Uhm")
  (text-raw 60393 60393 60393)
  (str " Does it bother you that I was looking forward to seeing you?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "え、いや、そんな")
  ;(text-raw 60393 60393 60393)
  ;(text "光栄ですよ。" '60392)
  (str "Oh, no, it's uhh")
  (text-raw 60393 60393 60393)
  (str " It's an honour." '60392)
  (proc 18)

  ; Actor: Patricia Farber
  (text-frame 8 308 71 323)
  ;(proc 14)
  ;(proc 19)
  ;(text "よかったぁ。いま、表情が暗かったから、マズイこと言っちゃったかな、って、ちょっと不安になっちゃった。" '60392)
  (proc 14)
  (proc 19)
  (str "That's a relief. You looked so gloomy just now, I was a little worried that I'd said something wrong." '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 14)
  (proc 19)
  ; Actor: Patricia Farber
  ;(text "あの、あとで探偵さんのお仕事について聞かせてもらえますよね？" '60392)
  (str "Um, can I ask you about your detective work later?" '60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "え、あ、ああ")
  ;(text-raw 60393 60393 60393 60393 60393 60392)
  (str "Oh, uh, uhh")
  (text-raw 60393 60393 60393 60393 60393 60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 14)
  (proc 19)
  ; Actor: Patricia Farber
  ;(text "私ね、実は探偵に憧れてるんですよぉ。卒業したら雇ってもらえると嬉しいなぁ、なんて")
  ;(text-raw 60393 60393 60393 60392)
  (str "I've actually always dreamed of becoming a detective. I'd be so happy if I could get hired after graduating")
  (text-raw 60393 60393 60393 60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 12)
  (proc 19)
  ; Actor: Jake Snipes
  ;(text "えっ、そ、そんな")
  ;(text-raw 60393 60393)
  ;(text "突然言われてもね")
  ;(text-raw 60393 60393 60393 60392)
  (str "Oh, huh")
  (text-raw 60393 60393)
  (str " That's surprising to hear")
  (text-raw 60393 60393 60393 60392)
  (proc 18)

  (text-frame 8 308 71 323)
  (proc 14)
  (proc 19)
  ; Actor: Patricia Farber
  ;(text "考えておいて下さいね！　それじゃまた")
  ;(text-raw 60393 60393 60393 60393 60392)
  (str "Please consider it! See you later")
  (text-raw 60393 60393 60393 60393 60392)
  (proc 18)
 )
)