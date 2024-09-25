這是個自動化Steam腳本，製作的起因是因為台灣第一台Steam Content Server上線了
目前除了中華以外，其他的網路基本上都會跑去這台下載
小弟我本身是使用遠傳的Seednet, 這幾天剛上線每天GCX都塞車
所以想製作這腳本，藉此觀察流量變化

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
