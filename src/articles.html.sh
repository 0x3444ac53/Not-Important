_ << EOF
<meta charset="utf-8"/>
<html>
    <meta name="viewport"  content="width=device-width">
    $(headerlink stylesheet text/css  src/css/index.css)
    $(headerlink stylesheet text/css  src/css/newsletter.css)
    $(headerlink icon       image/jpg src/imgs/icon.jpg)
    <head>
        <title>
            $name
        </title>
    </head>
    <body>
    <pre>
       $(img src/imgs/squid.png "" "120px" "auto") 
    </pre>
    <details>
        <summary>
        Multimedia <span class="icon"></span>
        </summary>
       $(bash <(echo 'source main'; echo 'cat << EOF'; while read -r i; do extract "$i"; done < ./src/supportfiles/youtube_links.txt; echo 'EOF'))
       </details>
    </body>
</html>
EOF
