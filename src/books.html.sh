_ << EOF 
<meta charset="utf8"/>
<html>
    <meta name="viewport" content="width=device-width">
    $(headerlink stylesheet text/css src/css/index.css)
    <head>
    <title>
        Nora's Books List
    </title>
    <body>
    $(python3 Books.py | ~/.luarocks/bin/djot)
    </body>
</html>
EOF
