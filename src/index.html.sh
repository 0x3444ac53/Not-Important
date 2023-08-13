_ << EOF
<meta charset="utf-8"/>
<html>
    <meta name="viewport"  content="width=device-width">
    $(headerlink stylesheet text/css  src/css/index.css)
    $(headerlink icon       image/jpg src/imgs/icon.jpg)
    <head>
        <title>
            $name
        </title>
    </head>
    <body>
        <p>
            Hello! My name is Leonora and I wanted to make a personal site.
        </p>

        <p> I wouldn't expect things to
            show up on here regularly, but I wanted a small corner of the internet to aggregate things 
            I make and like.
        </p>
        </br>
        <p>
            Pages :
        </p>
        <ul>
           $(list $(page ./writing.html 'My writing' ', Non-ficiton, semi-interesting, reflective things.'))
           $(list $(page ./articles.html Other\'s\ writing))
           $(list $(page ./books.html 'Reading list' ', An attempt to catalog everything I read'))
           $(list $(page https://github.com/0x3444ac53/Not-Important "this site" ' on github'))
        </ul>
        </br>
        <p>
            Social :
        </p>
        <ul>
            $(list $(atag social "$github" github))
            $(list $(atag social "$instagram" instagram))
        </ul>
        </br>
        <p>This site was created by forking $(atag acknowledge "https://catgirl.sh" "catgirl.sh") by $(atag acknowledge "https://github.com/turquoise-hexagon" Camille)</p>
    </body>
    <div id='footer'>
    </div>
</html>
EOF
