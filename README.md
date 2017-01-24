# なんこれ

ラップトップでLinuxのデスクトップ環境としてcinnamonを使っているのですが、<br/>
バッテリーが減ったときのアラートの回数が少なく、バッテリーが減ったのに気づかず、<br/>
「めのまえが まっくらに なった!（強制シャットダウン）」<br/>
という事案が多発したので、バッテリーの残量が10%以下になったらアラートを出すようにしました。

Notify users that the battery level is low by sending alert messages. This program is for Linux users.

![Alt text](https://github.com/hm13/BatteryAlert/blob/master/notification_example.png "こんなやつです")

# 必要なもの

（たいていの環境では全部そろってると思います）<br/>
bash <br/>
acpiコマンド（バッテリーのステータスとかを表示するコマンド） <br/>
notify-sendコマンド（デスクトップ環境が持ってるアラート表示機能を呼ぶコマンド） <br/>

You need bash, acpi command, and notify-send command. Usually, you already have them. 


# 使い方

スタートアップ（.xinitrcなど）に加えてログインしなおしてください。<br/>
.bashrcに書いても一応大丈夫ですが、複数端末を立ち上げた場合に大量のアラートが出てしまいます。

Add to the startup program list.<br/>
Using .bashrc is not recommended because when you use some terminals, frequent alert messages make you dizzy.
