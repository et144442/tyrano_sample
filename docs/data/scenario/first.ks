*in
[eval exp="f.key=0"]
[title name="部屋"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

「部屋」[l][r]

あなたはふと気づくとどこか知らない部屋の中にいた。[l][r]

なぜその部屋にいるのかは定かではない。昨夜ベッドに入るまでの記憶はあるのだが…[l][r]
[jump target=*start]


*start


周囲を見渡すと本棚やベッド、そして扉があった。さて、ここからどうするべきか。[l][r]
あなたは...[l][r]

[link target=*tag_sleep] →部屋を調べる [endlink][r]
[link target=*tag_run] →扉を開ける [endlink][r]
[wait time=10000]
[quake count=3 time=300]
[cm]

部屋が突然揺れ始めた。[l][r]
壁にひびが入り、天井が落ちてくる。あなたにはもうどうすることもできない。[l][r]
【 BAD END 】[l][cm]

[jump target=*in]

*tag_sleep
[wait_cancel]
[cm]


本棚を見てみたが、特に役立ちそうなものはなかった。[l][r]
ベッドの下を覗いてみると、鍵が落ちていた。[r]
[eval exp="f.key=1"]
【 -】[l][cm]

[jump target=*start]

*tag_run
[wait_cancel]

[cm]
[if exp="f.key"]
鍵を使って扉を開けることができた。[l][r]
扉を開け、ふと気づくとあなたは自分の見慣れた部屋の中にいた。[r]

【 GOOD END 】[l][cm]
[clearvar]
[jump target=*in]

[else]
扉を開けようとしたが、しかし鍵がかかっていた。[l][cm]
[jump target=*start]

[endif]