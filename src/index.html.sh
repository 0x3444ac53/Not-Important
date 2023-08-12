_ << EOF
<meta charset="utf-8"/>
<html>
    <meta name="viewport"  content="width=device-width">
    $(link stylesheet text/css  src/css/index.css)
    $(link icon       image/jpg src/imgs/icon.jpg)
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
           $(item pages ./writing.html 'My writing' ', Non-ficiton, semi-interesting, reflective things.')
           $(item pages ./articles.html Other\'s\ writing)
           $(item pages ./books.html 'Reading list' ', An attempt to catalog everything I read')
           $(item pages https://github.com/0x3444ac53/Not-Important "this site" ' on github')
        </ul>
        </br>
        <p>
            Social :
        </p>
        <ul>
            $(item social "$github"   github)
            $(item social "$instagram" instagram)
        </ul>
        </br>
        <p>This site was created by forking $(atag social "https://catgirl.sh" "catgirl.sh") by $(atag social "https://github.com/turquoise-hexagon" Camille)</p>
    </body>
    <div id='footer'>
    </div>
</html>
EOF
