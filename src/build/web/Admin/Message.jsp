<html>
<head>
    <title>Homepage | Library Management System</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Dosis');
        h1{
            display: block;
            font-size: 70;
            font-family: 'Dosis', sans-serif;
            color: rgba( 247, 247, 247, 0.672 );
        }
        
        .main{
            justify-content: center;
            display: flex;
            background-color: rgba( 0, 0, 0, 0.617 );
            width: 80%;
            height: 100%;
            border-radius: 20px;
            padding: 10px;
            box-shadow: 0 0 50px #000000;
            position: inherit;
        }
        
        .b{
            display: flex;
            justify-content: center;
        }
        
        .b1{
            display: flex;
            justify-content: center;
        }
        
        body{
            background-image: url(img/back1.jpg);
        }
        
        .quote1{
            width: 100%;
            justify-content: center;
            transform: translateY(90px);
            font-size: 50px;
            display: flex;
            padding: 10px;
            background-color: rgba( 41, 41, 50, 0.523 );
            
        }
        h2{
            color: rgba( 247, 247, 247, 0.523 );
            text-shadow: 0 0 2px rgba( 255, 255, 255, 0.672 );
        }
        
        .row1{
            justify-content: center;
            display: flex;
            font-size: 80px;
            margin: 10px;
            background-color: rgba( 31, 55, 106, 0.672 );
            transform: translateY(200px);
            box-shadow: 0 0 20px #4147bd;
        }
        
        .btn1{
            justify-content: center;
            display: inline-block;
            margin: 40px;
            width: 30%;
        }
        
        .f1{
            display: flex;
            justify-content: center;
            color: #000000;
            padding: 20px;
            text-shadow: 0 0 2px #0c0c0c;
            transition: box-shadow 0.3s, border-radius 0.3s;
        }
        
        .f1:hover{
            box-shadow: 0 0 20px #f7f7f7;
            border-radius: 50px;
        }
    </style>
</head>
    
    
<body>
    
    <div class="b">
    <div class="main">
        <h1>Library Management System</h1>
    </div>
    </div>
    <div class="b1">
    <div class="quote1">
    <h2>"Books are a uniquely portable magic,..!</h2>
    </div>
    </div>
    
    <div class="row1">
        <div class="btn1"><a href="Login.html">
            <div class="f1">Login</div>
            </a></div>
        <div class="btn1"><a href="LoadBooksForAll.html">
            <div class="f1">Book</div>
            </a></div>
        <div class="btn1"><a href="Login.html">
            <div class="f1">Register</div>
            </a></div>
    </div>
    
</body>
</html>