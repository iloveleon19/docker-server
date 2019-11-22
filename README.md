docker 安裝 ubuntu 19.04  
docker-compose 安裝  

創建 並 加入 GID 是 82 的 www-data 群組

/etc/hosts 修改

在家目錄建立 workspace 資料夾，把程式碼放進去

sudo chown www-data:www-data -R ~/workspace  
sudo chmod 775 -R ~/workspace  

docker nginx的上傳限制或php的上傳限制  