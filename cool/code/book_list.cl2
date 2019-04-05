

class Book inherits IO { 
title : String ; 
author : String ; 

initBook ( title_p : String , author_p : String ) : Book { 
{ 
title <- title_p ; 
author <- author_p ; 
self ; 
} 
} ; 

print ( ) : Book { 
{ 
out_string ( "title:      " ) . out_string ( title ) . out_string ( "\n" ) ; 
out_string ( "author:     " ) . out_string ( author ) . out_string ( "\n" ) ; 
self ; 
} 
} ; 
} ; 

class Article inherits Book { 
per_title : String ; 

initArticle ( title_p : String , author_p : String , 
per_title_p : String ) : Article { 
{ 
initBook ( title_p , author_p ) ; 
per_title <- per_title_p ; 
self ; 
} 
} ; 

print ( ) : Book { 
{ 
self @ Book . print ( ) ; 
out_string ( "periodical:  " ) . out_string ( per_title ) . out_string ( "\n" ) ; 
self ; 
} 
} ; 
} ; 

class BookList inherits IO { 




isNil ( ) : Bool { { abort ( ) ; true ; } } ; 

cons ( hd : Book ) : Cons { 
( let new_cell : Cons <- new Cons in 
new_cell . init ( hd , self ) 
) 
} ; 





car ( ) : Book { { abort ( ) ; new Book ; } } ; 





cdr ( ) : BookList { { abort ( ) ; new BookList ; } } ; 

print_list ( ) : Object { abort ( ) } ; 
} ; 

class Cons inherits BookList { 
xcar : Book ; 
xcdr : BookList ; 



isNil ( ) : Bool { false } ; 

init ( hd : Book , tl : BookList ) : Cons { 
{ 
xcar <- hd ; 
xcdr <- tl ; 
self ; 
} 
} ; 

car ( ) : Book { xcar } ; 

cdr ( ) : BookList { xcdr } ; 

print_list ( ) : Object { 
{ 
case xcar . print ( ) of 
dummy : Book => out_string ( "- dynamic type was Book -\n" ) ; 
dummy : Article => out_string ( "- dynamic type was Article -\n" ) ; 
esac ; 
xcdr . print_list ( ) ; 
} 
} ; 
} ; 

class Nil inherits BookList { 
isNil ( ) : Bool { true } ; 

print_list ( ) : Object { true } ; 
} ; 


class Main { 

books : BookList ; 

main ( ) : Object { 
( let a_book : Book <- 
( new Book ) . initBook ( "Compilers, Principles, Techniques, and Tools" , 
"Aho, Sethi, and Ullman" ) 
in 
( let an_article : Article <- 
( new Article ) . initArticle ( "The Top 100 CD_ROMs" , 
"Ulanoff" , 
"PC Magazine" ) 
in 
{ 
books <- ( new Nil ) . cons ( a_book ) . cons ( an_article ) ; 
books . print_list ( ) ; 
} 
) 
) 
} ; 
} ; 