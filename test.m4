include(`stack.m4')
changequote(`<<', `>>')

define(<<foo>>, <<omg omg omgomg>>)
define(<<foo2>>, <<omg omg omg omg>>)

foo

foo2

pushdef(<<foo>>, <<blue blue blue>>)
foo
popdef(<<foo>>)
foo
