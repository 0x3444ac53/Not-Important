changequote(`<<', `>>')
changecom(<<[[>>, <<]]>>)

[[

PLS PLS PLS write a fucking map function
or a stack foreach

idk just something this is important 

]]

define(<<test>>, <<HELLO$1>>)
define(<<name>>, <<Nora's Website>>)
define(<<github>>, <<https://github.com/0x3444ac53>>)
define(<<instagram>>, <<https://www.instagram.com/discounted_dyke>>)
define(<<atag>>, <<<a href="$1" target='_blank' class="$2">$3</a>>>)
define(<<page>>, atag($1, pages, $2))
define(<<art>>, atag($1, article, $2))
define(<<artist>>, atag($1, bloglink, $2))
define(<<list>>, <<<li>$*</li>
>>)
define(<<ulist>>, <<<ul>
$*
</ul>>>)
define(<<ulnested>>, <<<ul class='lbracket'>
</ul>>>)
define(<<headerlink>>, <<<link rel="$1" type="$2" href="$#">>>)
define(<<imgtag>>, <<<img src="$1" alt="$2" width="$3" height="$4">>>)
define(<<preimg>>, atag(/index.html, <<>>, imgtag(/src/imgs/squid.png, <<>>, <<120px>>, <<auto>>)))
define(<<marg>>, <<margin: {$1ch $2ch $3ch $4ch>>)
define(<<icon>>, <<<i style=color:inherit class='fa-solid $1'></i>>>)
define(<<nixshell>>, <<echo "$2" | nix-shell -p "$1" --run zsh>>)


<!DOCTYPE html>
<meta charset="utf-8"/>
<html>
    <meta name="viewport"  content="width=device-width">
    headerlink(stylesheet, "text/css",  "src/css/index.css")
    headerlink(<<icon>>, "image/jpg" "src/imgs/icon.jpg")
    <script src="https://kit.fontawesome.com/4806c69909.js" crossorigin="anonymous"></script>
    <!---
        define(doos, page(https://www.dictionaryofobscuresorrows.com/search/$1, $1))
        define(make_diag, <dialog id=$1><p>$2</p><form method='dialog'><button>$3</button></form></dialog>)
        define(make_link, <a class='$2' href='javascript:$1.showModal()'>$3</a>)
    --->
    <head>
        <title>
            name()
        </title>
    </head>
    <body>
    <pre>
        preimg
    </pre>
        <p style="font-family: HandWriting">
            Being me is kind of like
            reading a sequel to the 
            page(https://beinecke.library.yale.edu/collections/highlights/voynich-manuscript, voynich manuscript), 
            and the entire time there is a crushing feeling of 
            doos(agnosthesia), 
            references to books I've never read and a lot of meandering about 
            doos(midding). There is a trend toward 
            doos(altschmerz) somewhere in the middle, and a longing for 
            doos(flashover)s that may never come. The 
            doos(liberosis) is palatable. With this last chapter of my life closing there is a focus on 
            doos(adronitis), and a desperation towards creating a new 
            doos(rigor samsa) knowing this will only exacerbate the disconnected 
            doos(sonder) I'm prone to. I do what I can to submit myself to 
            page(https://archive.nytimes.com/opinionator.blogs.nytimes.com/2013/06/15/i-know-what-you-think-of-me/?smid=pl-share, <<the mortifying ordeal>>),
            and yet whenever I have, I've only felt mortified and never known.
            I can tell people I am in my 1989 era, or my modern philosophy era,
            but I am neither a page(https://open.spotify.com/track/1p80LdxRV74UKvL8gnD7ky, <<nightmare dressed like a daydream>>) nor 
            page(https://plato.stanford.edu/entries/descartes-ideas/<<#>>ideas, <<a thinking thing that thinks.>>)
            To my mind,
            I am the 
            collective efforts of the ancestors, and
            a mosaic of all the ideas I have ever encountered. 
            Why should I pretend to be  original, 
            make_link(<<pages_list>>, <<pages>>, <<when all I am is these ideas that belong to other people?>>)</br>
            make_diag(<<pages_list>>, <<
            ulist(
            list(icon(fa-book-journal-whills), page(./me/things.html, <<My Art>>))
            list(icon(fa-headphones), page(./spotify.html, <<Things I listen to>>))
            list(icon(fa-icons), page(./articles.html, <<Internet Things>>))
            list(icon(fa-book-bookmark), page(./books.html, <<Books>> )))>>, <<Okay>>)
            </p>
 ]]            
[[#            <!---
#            $<(push (concat " " (icon "fa-code-branch") (atag "https://github.com/0x3444ac53/Not-Important" "social" "this site") "on github"))>$
#            $<(push (concat " " (icon "fa-code-branch") (atag "https://github.com/0x3444ac53/HCSL" "social" "a dsl") "called 'slisp' that I created to template this site"))>$
#            $<(map li)>$
#            --->
#        </br>
#        <p>
#            Other Links :
#            $<(ul (concat "\n"))>$
#        </p>
#        </br>
#             <!---
#            $<(push (concat " " (icon "fa-camera-retro") (atag (instagram) social "discounted_dyke")))>$
#            $<(push (concat " " (icon "fa-camera-retro") (atag "https://www.instagram.com/squid_leafs/" social "squid_leafs")))>$
#            $<(push (concat " " (icon "fa-code-commit") (atag (github) social github)))>$
#            $<(map li)>$
#            --->
#        <p>
#            Social :
#        </p>
#            $<(ul (concat "\n"))>$
#        </br>
#            <!---
#            $<(push (execute (get_carbon_src "main.slisp")))>$
#            $<(carbon (pop))>$
#            --->
#        </body>
#</html>]]
