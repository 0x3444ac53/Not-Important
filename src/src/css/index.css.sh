_ << EOF
@font-face {
    font-family: Handjet;
    src: url("../fonts/Handjet-VariableFont_ELGR,ELSH,wght.ttf") format("truetype");
}

* {
    font-family: Handjet;
    font-size: 32px;
    filter: contrast(1);
    -webkit-font-smoothing: none;
    -moz-osx-font-smoothing: none;
}

body {
    background-color: $base00;
    color: $base06;
    margin-bottom: 2ch;
}

li { list-style-type: none; }

ul {
    padding: 0;
    $(margin 0 4 0 4);
}

pre { $(margin 2 2 1 2); }

p   { 
    $(margin 0 2 0 2); 
    width: 60ch;
    max-width: 100%;
}

a { text-decoration: none; }

a.social { color: $base0B; }
a.pages  { color: $base0C; }
a.acknowledge { color: $base0D; }

a:hover {
    text-decoration: underline 2px;
    color: $base07;
}

table {
  margin-bottom: 2em;
  width: 50%; 
  margin-right: auto;
  background-color: $base01
  color: $base04
}

th {
  border-bottom: 2px solid #ccc;
  font-weight: bold;
  text-align: left; 
  background-color: $base01;  
  color: $base04;
}

.emoji {
 font-size: 22px;
}

td {
  border-bottom: 1px solid #ddd; }

caption, th, td {
  padding: 4px 10px 4px 0; }

caption {
  background: #f1f1f1;
  margin-bottom: 1em;
  padding: 10px 0; }

tr, td, th {
  vertical-align: middle; }

/* Use this if you use span-x classes on th/td. */
table .last {
  padding-right: 0; }

@media only screen and (min-width: 600px) {
    pre  { $(margin 4  4 2  4); }
    ul   { $(margin 0 12 0 12); }
    p    { $(margin 0  8  0 8); }
    body { margin-bottom: 4ch;  }
}
EOF
