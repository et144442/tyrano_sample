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
[wait time=5000]
[quake count=3 time=300]
[cm]

部屋が突然揺れ始めた。[l][r]
壁にひびが入り、天井が落ちてくる。あなたにはもうどうすることもできない。[l][r]
【 BAD END 】[l][cm]

[jump target=*start]

*tag_sleep
[wait_cancel]
[cm]

[bg storage=sleep.jpg time=500]

メロスは死んだように深く眠った。[l][r]
勇者は、ひどく赤面した。[r]
[eval exp="f.key=1"]
【 -】[l][cm]

[jump target=*start]

*tag_run
[wait_cancel]
[bg storage=run.jpg time=500]

[cm]
[if exp="f.key"]
メロスは黒い風のように走った。[l][r]
陽は、ゆらゆら地平線に没し、まさに最後の一片の残光も、消えようとした時、メロスは疾風の如く刑場に突入した。間に合った。[r]

【 GOOD END 】[l][cm]
[clearvar]
[jump target=*in]
a[l][cm]
[jump target=*start]

[else]
a[l][cm]
[jump target=*start]

[endif]