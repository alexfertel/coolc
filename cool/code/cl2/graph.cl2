




































class Graph { 

vertices : VList <- new VList ; 
edges : EList <- new EList ; 

add_vertice ( v : Vertice ) : Object { { 
edges <- v . outgoing ( ) . append ( edges ) ; 
vertices <- vertices . cons ( v ) ; 
} } ; 

print_E ( ) : Object { edges . print ( ) } ; 
print_V ( ) : Object { vertices . print ( ) } ; 

} ; 

class Vertice inherits IO { 

num : Int ; 
out : EList <- new EList ; 

outgoing ( ) : EList { out } ; 

number ( ) : Int { num } ; 

init ( n : Int ) : SELF_TYPE { 
{ 
num <- n ; 
self ; 
} 
} ; 


add_out ( s : Edge ) : SELF_TYPE { 
{ 
out <- out . cons ( s ) ; 
self ; 
} 
} ; 

print ( ) : Object { 
{ 
out_int ( num ) ; 
out . print ( ) ; 
} 
} ; 

} ; 

class Edge inherits IO { 

from : Int ; 
to : Int ; 
weight : Int ; 

init ( f : Int , t : Int , w : Int ) : SELF_TYPE { 
{ 
from <- f ; 
to <- t ; 
weight <- w ; 
self ; 
} 
} ; 

print ( ) : Object { 
{ 
out_string ( " (" ) ; 
out_int ( from ) ; 
out_string ( "," ) ; 
out_int ( to ) ; 
out_string ( ")" ) ; 
out_int ( weight ) ; 
} 
} ; 

} ; 



class EList inherits IO { 


car : Edge ; 

isNil ( ) : Bool { true } ; 

head ( ) : Edge { { abort ( ) ; car ; } } ; 

tail ( ) : EList { { abort ( ) ; self ; } } ; 








cons ( e : Edge ) : EList { 
( new ECons ) . init ( e , self ) 
} ; 

append ( l : EList ) : EList { 
if self . isNil ( ) then l 
else tail ( ) . append ( l ) . cons ( head ( ) ) 
fi 
} ; 

print ( ) : Object { 
out_string ( "\n" ) 
} ; 

} ; 















class ECons inherits EList { 

cdr : EList ; 

isNil ( ) : Bool { false } ; 

head ( ) : Edge { car } ; 

tail ( ) : EList { cdr } ; 

init ( e : Edge , rest : EList ) : EList { 
{ 
car <- e ; 
cdr <- rest ; 
self ; 
} 
} ; 

print ( ) : Object { 
{ 
car . print ( ) ; 
cdr . print ( ) ; 
} 
} ; 

} ; 




class VList inherits IO { 


car : Vertice ; 

isNil ( ) : Bool { true } ; 

head ( ) : Vertice { { abort ( ) ; car ; } } ; 

tail ( ) : VList { { abort ( ) ; self ; } } ; 








cons ( v : Vertice ) : VList { 
( new VCons ) . init ( v , self ) 
} ; 

print ( ) : Object { out_string ( "\n" ) } ; 

} ; 


class VCons inherits VList { 

cdr : VList ; 

isNil ( ) : Bool { false } ; 

head ( ) : Vertice { car } ; 

tail ( ) : VList { cdr } ; 

init ( v : Vertice , rest : VList ) : VList { 
{ 
car <- v ; 
cdr <- rest ; 
self ; 
} 
} ; 

print ( ) : Object { 
{ 
car . print ( ) ; 
cdr . print ( ) ; 
} 
} ; 

} ; 


class Parse inherits IO { 


boolop : BoolOp <- new BoolOp ; 



read_input ( ) : Graph { 

( let g : Graph <- new Graph in { 
( let line : String <- in_string ( ) in 
while ( boolop . and ( not line = "\n" , not line = "" ) ) loop { 


g . add_vertice ( parse_line ( line ) ) ; 
line <- in_string ( ) ; 
} pool 
) ; 
g ; 
} ) 
} ; 


parse_line ( s : String ) : Vertice { 
( let v : Vertice <- ( new Vertice ) . init ( a2i ( s ) ) in { 
while ( not rest . length ( ) = 0 ) loop { 


( let succ : Int <- a2i ( rest ) in ( let 
weight : Int <- a2i ( rest ) 
in 
v . add_out ( new Edge . init ( v . number ( ) , 
succ , 
weight ) ) 
) ) ; 
} pool ; 
v ; 
} 
) 
} ; 

c2i ( char : String ) : Int { 
if char = "0" then 0 else 
if char = "1" then 1 else 
if char = "2" then 2 else 
if char = "3" then 3 else 
if char = "4" then 4 else 
if char = "5" then 5 else 
if char = "6" then 6 else 
if char = "7" then 7 else 
if char = "8" then 8 else 
if char = "9" then 9 else 
{ abort ( ) ; 0 ; } 
fi fi fi fi fi fi fi fi fi fi 
} ; 

rest : String ; 

a2i ( s : String ) : Int { 
if s . length ( ) = 0 then 0 else 
if s . substr ( 0 , 1 ) = "-" then ~ a2i_aux ( s . substr ( 1 , s . length ( ) - 1 ) ) else 
if s . substr ( 0 , 1 ) = " " then a2i ( s . substr ( 1 , s . length ( ) - 1 ) ) else 
a2i_aux ( s ) 
fi fi fi 
} ; 







a2i_aux ( s : String ) : Int { 
( let int : Int <- 0 in 
{ 
( let j : Int <- s . length ( ) in 
( let i : Int <- 0 in 
while i < j loop 
( let c : String <- s . substr ( i , 1 ) in 
if ( c = " " ) then 
{ 
rest <- s . substr ( i + 1 , s . length ( ) - i - 1 ) ; 
i <- j ; 
} 
else if ( c = "," ) then 
{ 
rest <- s . substr ( i + 1 , s . length ( ) - i - 1 ) ; 
i <- j ; 
} 
else 
{ 
int <- int * 10 + c2i ( s . substr ( i , 1 ) ) ; 
i <- i + 1 ; 
if i = j then rest <- "" else "" fi ; 
} 
fi fi 
) 
pool 
) 
) ; 
int ; 
} 
) 
} ; 

} ; 


class Main inherits Parse { 

g : Graph <- read_input ( ) ; 

main ( ) : Object { 
{ 
g . print_V ( ) ; 
g . print_E ( ) ; 
} 
} ; 

} ; 

class BoolOp { 

and ( b1 : Bool , b2 : Bool ) : Bool { 
if b1 then b2 else false fi 
} ; 


or ( b1 : Bool , b2 : Bool ) : Bool { 
if b1 then true else b2 fi 
} ; 

} ; 