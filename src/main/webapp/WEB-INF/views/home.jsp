<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot Demo</title>
    <style>
        body {
            font-family: Arial;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: #f0f4f8;
        }
        .box {
            background: white;
            padding: 40px 60px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            text-align: center;
        }
        h1 { color: #2c3e50; }
        p  { color: #27ae60; font-size: 20px; font-weight: bold; }
        small { color: #999; }
    </style>
</head>
<body>
<div class="box">
    <h1>🚀 Spring Boot + Tomcat</h1>
    <p>${message}</p>
    <small>Saya ubah yang ni sikit!</small>
</div>
</body>
</html>
