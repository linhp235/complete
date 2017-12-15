# Hướng Dẫn 
Cài đặt Gem redcarpet để hỗ trợ chuyển đổi file markdown sang HTML
```
$ [sudo] gem install redcarpet
```
Tài liệu đầu vào (md file) lưu tại /filemarkdown
Tại local folder chạy lệnh để tạo server ảo và chuyển đổi các file md từ đầu vào "filemarkdown" 
```
$ python -m SimpleHTTPServer 
$ ruby hdtest.rb
```

Trên trình duyệt, truy cập localhost:8000 để hiển thị trang web
```
localhost:8000/test.html
```
