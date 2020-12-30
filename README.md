### Ubuntu
docker 安裝 ubuntu 19.04  
docker-compose 安裝  

創建 並 加入 GID 是 82 的 www-data 群組

/etc/hosts 修改

在家目錄建立 workspace 資料夾，把程式碼放進去

sudo chown www-data:www-data -R ~/workspace  
sudo chmod 775 -R ~/workspace  

docker nginx的上傳限制或php的上傳限制  

### Mac
在docker-server 下執行

開啟docker的虛擬機  docker-compose up -d
關閉docker的虛擬機  docker-compose down

docker-compose exec php bash


新增專案

先cd到docker-servery 的資料夾
cd docker-server

新增laravel的專案

先執行 docker-compose exec php bash 進入到虛擬機（在修改php檔案時使用）

安裝最新的larval
composer create-project laravel/laravel --prefer-dist

如果要新增新的專案，要指定專案的名稱
composer create-project laravel/laravel (專案名稱) --prefer-dist

到docker-server/nginx/conf.d 新增 app.conf
在app.conf中，
1.修改 server_name
Ex:
laravel-test.local

2.修改 location 的root
Ex:
/var/www/html/laravel/public

3.到sudo vim /etc/hosts 中(在docker-servery )，新增位址
Ex:
127.0.0.1          laravel-test.local

4.關閉docker的虛擬機  docker-compose down

5.開啟docker的虛擬機  docker-compose up -d

6.資料庫的設定
進入laravel的資料夾
cd workspace/laravel

修改 .env 檔案的參數：
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret
