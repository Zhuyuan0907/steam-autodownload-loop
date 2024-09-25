這是個自動化使用Debian下載Steam遊戲的腳本，製作的起因是因為台灣第一台Steam Content Server上線了
目前除了中華以外，其他家電信網路基本上都會跑去這台下載
小弟我本身是使用遠傳的Seednet, 這幾天剛上線每天GCX都塞車
所以想製作這腳本，透過實際跑下載的情況，藉此觀察流量變化

首先你要先下載steamcmd，以及在/etc/中創建/steam的資料夾
```
mkdir /etc/steam
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
```
接著就跑腳本，該腳本會下載CS:GO的遊戲，因為此遊戲有支援Windows, macOS以及Linux
```
steamdownload.sh
```
在下載的時候，可以順便去開另外一個Terminal觀察nload的情況
如果你不確定你steam連的server是什麼，可以至下列的網址查看你目前網路連接到的server
https://api.steampowered.com/IContentServerDirectoryService/GetServersForSteamPipe/v1/

成功範例：
<img width="1919" alt="iShot_2024-09-26_00 44 25" src="https://github.com/user-attachments/assets/a215b111-4fb0-45bd-a0ca-c349de2c4aed">
