                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Bool..vtable
Bool..vtable:           ## virtual function table for Bool
                        .quad string1
                        .quad Bool..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl BoolOp..vtable
BoolOp..vtable:         ## virtual function table for BoolOp
                        .quad string2
                        .quad BoolOp..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad BoolOp.and
                        .quad BoolOp.or
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl ECons..vtable
ECons..vtable:          ## virtual function table for ECons
                        .quad string3
                        .quad ECons..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad ECons.isNil
                        .quad ECons.head
                        .quad ECons.tail
                        .quad EList.cons
                        .quad EList.append
                        .quad ECons.print
                        .quad ECons.init
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList..vtable
EList..vtable:          ## virtual function table for EList
                        .quad string4
                        .quad EList..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad EList.isNil
                        .quad EList.head
                        .quad EList.tail
                        .quad EList.cons
                        .quad EList.append
                        .quad EList.print
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Edge..vtable
Edge..vtable:           ## virtual function table for Edge
                        .quad string5
                        .quad Edge..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Edge.init
                        .quad Edge.print
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Graph..vtable
Graph..vtable:          ## virtual function table for Graph
                        .quad string6
                        .quad Graph..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad Graph.add_vertice
                        .quad Graph.print_E
                        .quad Graph.print_V
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl IO..vtable
IO..vtable:             ## virtual function table for IO
                        .quad string7
                        .quad IO..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Int..vtable
Int..vtable:            ## virtual function table for Int
                        .quad string8
                        .quad Int..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main..vtable
Main..vtable:           ## virtual function table for Main
                        .quad string9
                        .quad Main..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Parse.read_input
                        .quad Parse.parse_line
                        .quad Parse.c2i
                        .quad Parse.a2i
                        .quad Parse.a2i_aux
                        .quad Main.main
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Object..vtable
Object..vtable:         ## virtual function table for Object
                        .quad string10
                        .quad Object..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Parse..vtable
Parse..vtable:          ## virtual function table for Parse
                        .quad string11
                        .quad Parse..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Parse.read_input
                        .quad Parse.parse_line
                        .quad Parse.c2i
                        .quad Parse.a2i
                        .quad Parse.a2i_aux
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl String..vtable
String..vtable:         ## virtual function table for String
                        .quad string12
                        .quad String..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad String.concat
                        .quad String.length
                        .quad String.substr
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VCons..vtable
VCons..vtable:          ## virtual function table for VCons
                        .quad string13
                        .quad VCons..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad VCons.isNil
                        .quad VCons.head
                        .quad VCons.tail
                        .quad VList.cons
                        .quad VCons.print
                        .quad VCons.init
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VList..vtable
VList..vtable:          ## virtual function table for VList
                        .quad string14
                        .quad VList..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad VList.isNil
                        .quad VList.head
                        .quad VList.tail
                        .quad VList.cons
                        .quad VList.print
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Vertice..vtable
Vertice..vtable:        ## virtual function table for Vertice
                        .quad string15
                        .quad Vertice..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Vertice.outgoing
                        .quad Vertice.number
                        .quad Vertice.init
                        .quad Vertice.add_out
                        .quad Vertice.print
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Bool..new
Bool..new:              ## constructor for Bool
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $4, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $0, %r14
                        movq %r14, 0(%r12)
                        movq $4, %r14
                        movq %r14, 8(%r12)
                        movq $Bool..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field (raw content) (Int)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[3] (raw content) initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl BoolOp..new
BoolOp..new:            ## constructor for BoolOp
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $3, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $10, %r14
                        movq %r14, 0(%r12)
                        movq $3, %r14
                        movq %r14, 8(%r12)
                        movq $BoolOp..vtable, %r14
                        movq %r14, 16(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl ECons..new
ECons..new:             ## constructor for ECons
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $5, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $11, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $ECons..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field car (Edge)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field cdr (EList)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] car initializer -- none 
                        ## self[4] cdr initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList..new
EList..new:             ## constructor for EList
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $4, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $12, %r14
                        movq %r14, 0(%r12)
                        movq $4, %r14
                        movq %r14, 8(%r12)
                        movq $EList..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field car (Edge)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[3] car initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Edge..new
Edge..new:              ## constructor for Edge
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $6, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $13, %r14
                        movq %r14, 0(%r12)
                        movq $6, %r14
                        movq %r14, 8(%r12)
                        movq $Edge..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field from (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 24(%r12)
                        ## self[4] holds field to (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 32(%r12)
                        ## self[5] holds field weight (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 40(%r12)
                        ## self[3] from initializer -- none 
                        ## self[4] to initializer -- none 
                        ## self[5] weight initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Graph..new
Graph..new:             ## constructor for Graph
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $5, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $14, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $Graph..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field vertices (VList)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field edges (EList)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] vertices initializer <- new VList
                        ## new VList
                        pushq %rbp
                        pushq %r12
                        movq $VList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 24(%r12)
                        ## self[4] edges initializer <- new EList
                        ## new EList
                        pushq %rbp
                        pushq %r12
                        movq $EList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 32(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl IO..new
IO..new:                ## constructor for IO
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $3, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $15, %r14
                        movq %r14, 0(%r12)
                        movq $3, %r14
                        movq %r14, 8(%r12)
                        movq $IO..vtable, %r14
                        movq %r14, 16(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Int..new
Int..new:               ## constructor for Int
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $4, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $1, %r14
                        movq %r14, 0(%r12)
                        movq $4, %r14
                        movq %r14, 8(%r12)
                        movq $Int..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field (raw content) (Int)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[3] (raw content) initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main..new
Main..new:              ## constructor for Main
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $6, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $16, %r14
                        movq %r14, 0(%r12)
                        movq $6, %r14
                        movq %r14, 8(%r12)
                        movq $Main..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field boolop (BoolOp)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field rest (String)
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 32(%r12)
                        ## self[5] holds field g (Graph)
                        movq $0, %r13
                        movq %r13, 40(%r12)
                        ## self[3] boolop initializer <- new BoolOp
                        ## new BoolOp
                        pushq %rbp
                        pushq %r12
                        movq $BoolOp..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 24(%r12)
                        ## self[4] rest initializer -- none 
                        ## self[5] g initializer <- read_input(...)
                        ## read_input(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up read_input() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 40(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Object..new
Object..new:            ## constructor for Object
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $3, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $17, %r14
                        movq %r14, 0(%r12)
                        movq $3, %r14
                        movq %r14, 8(%r12)
                        movq $Object..vtable, %r14
                        movq %r14, 16(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Parse..new
Parse..new:             ## constructor for Parse
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $5, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $18, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $Parse..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field boolop (BoolOp)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field rest (String)
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 32(%r12)
                        ## self[3] boolop initializer <- new BoolOp
                        ## new BoolOp
                        pushq %rbp
                        pushq %r12
                        movq $BoolOp..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 24(%r12)
                        ## self[4] rest initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl String..new
String..new:            ## constructor for String
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $4, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $3, %r14
                        movq %r14, 0(%r12)
                        movq $4, %r14
                        movq %r14, 8(%r12)
                        movq $String..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field (raw content) (String)
                        movq $the.empty.string, %r13
                        movq %r13, 24(%r12)
                        ## self[3] (raw content) initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VCons..new
VCons..new:             ## constructor for VCons
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $5, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $19, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $VCons..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field car (Vertice)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field cdr (VList)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] car initializer -- none 
                        ## self[4] cdr initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VList..new
VList..new:             ## constructor for VList
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $4, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $20, %r14
                        movq %r14, 0(%r12)
                        movq $4, %r14
                        movq %r14, 8(%r12)
                        movq $VList..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field car (Vertice)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[3] car initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Vertice..new
Vertice..new:           ## constructor for Vertice
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $5, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $21, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $Vertice..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field num (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 24(%r12)
                        ## self[4] holds field out (EList)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] num initializer -- none 
                        ## self[4] out initializer <- new EList
                        ## new EList
                        pushq %rbp
                        pushq %r12
                        movq $EList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 32(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Object.abort
Object.abort:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        movq $string16, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl Object.abort.end
Object.abort.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Object.copy
Object.copy:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        movq 8(%r12), %r14
                        movq $8, %rsi
			movq %r14, %rdi
			call calloc
			movq %rax, %r13
                        pushq %r13
.globl l1
l1:                     cmpq $0, %r14
			je l2
                        movq 0(%r12), %r15
                        movq %r15, 0(%r13)
                        movq $8, %r15
                        addq %r15, %r12
                        addq %r15, %r13
                        movq $1, %r15
                        subq %r15, %r14
                        jmp l1
.globl l2
l2:                     ## done with Object.copy loop
                        popq %r13
.globl Object.copy.end
Object.copy.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Object.type_name
Object.type_name:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## obtain vtable for self object
                        movq 16(%r12), %r14
                        ## look up type name at offset 0 in vtable
                        movq 0(%r14), %r14
                        movq %r14, 24(%r13)
.globl Object.type_name.end
Object.type_name.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl BoolOp.and
BoolOp.and:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[4] holds argument b1 (Bool)
                        ## fp[3] holds argument b2 (Bool)
                        ## method body begins
                        ## b1
                        movq 32(%rbp), %r13
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l3
.globl l4
l4:                     ## false branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        jmp l5
.globl l3
l3:                     ## true branch
                        ## b2
                        movq 24(%rbp), %r13
.globl l5
l5:                     ## end of if conditional
.globl BoolOp.and.end
BoolOp.and.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl BoolOp.or
BoolOp.or:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[4] holds argument b1 (Bool)
                        ## fp[3] holds argument b2 (Bool)
                        ## method body begins
                        ## b1
                        movq 32(%rbp), %r13
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l6
.globl l7
l7:                     ## false branch
                        ## b2
                        movq 24(%rbp), %r13
                        jmp l8
.globl l6
l6:                     ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
.globl l8
l8:                     ## end of if conditional
.globl BoolOp.or.end
BoolOp.or.end:          ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl IO.in_int
IO.in_int:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## method body begins
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, %r14
                        movl	$1, %esi
			movl $4096, %edi
			call calloc
			pushq %rax
			movq %rax, %rdi
			movq $4096, %rsi 
			movq stdin(%rip), %rdx
			call fgets 
			popq %rdi 
			movl $0, %eax
			pushq %rax
			movq %rsp, %rdx
			movq $percent.ld, %rsi
			call sscanf
			popq %rax
			movq $0, %rsi 
			cmpq $2147483647, %rax 
			cmovg %rsi, %rax
			cmpq $-2147483648, %rax 
			cmovl %rsi, %rax
			movq %rax, %r13
                        movq %r13, 24(%r14)
                        movq %r14, %r13
.globl IO.in_int.end
IO.in_int.end:          ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl IO.in_string
IO.in_string:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## method body begins
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, %r14
                        call coolgetstr 
			movq %rax, %r13
                        movq %r13, 24(%r14)
                        movq %r14, %r13
.globl IO.in_string.end
IO.in_string.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl IO.out_int
IO.out_int:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## fp[3] holds argument x (Int)
                        ## method body begins
                        movq 24(%rbp), %r14
                        movq 24(%r14), %r13
                        movq $percent.d, %rdi
		movl %r13d, %eax
		cdqe
		movq %rax, %rsi
			movl $0, %eax
			call printf
                        movq %r12, %r13
.globl IO.out_int.end
IO.out_int.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl IO.out_string
IO.out_string:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## fp[3] holds argument x (String)
                        ## method body begins
                        movq 24(%rbp), %r14
                        movq 24(%r14), %r13
                        movq %r13, %rdi
			call cooloutstr
                        movq %r12, %r13
.globl IO.out_string.end
IO.out_string.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl ECons.isNil
ECons.isNil:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## method body begins
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl ECons.isNil.end
ECons.isNil.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl ECons.head
ECons.head:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## method body begins
                        ## car
                        movq 24(%r12), %r13
.globl ECons.head.end
ECons.head.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl ECons.tail
ECons.tail:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## method body begins
                        ## cdr
                        movq 32(%r12), %r13
.globl ECons.tail.end
ECons.tail.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList.cons
EList.cons:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## fp[3] holds argument e (Edge)
                        ## method body begins
                        ## new ECons.init(...)
                        pushq %r12
                        pushq %rbp
                        ## e
                        movq 24(%rbp), %r13
                        pushq %r13
                        movq %r12, %r13
                        pushq %r13
                        ## new ECons
                        pushq %rbp
                        pushq %r12
                        movq $ECons..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        cmpq $0, %r13
			jne l9
                        movq $string17, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l9
l9:                     pushq %r13
                        ## obtain vtable from object in r1 with static type ECons
                        movq 16(%r13), %r14
                        ## look up init() at offset 15 in vtable
                        movq 120(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl EList.cons.end
EList.cons.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList.append
EList.append:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## fp[3] holds argument l (EList)
                        ## method body begins
                        ## self.isNil(...)
                        pushq %r12
                        pushq %rbp
                        movq %r12, %r13
                        cmpq $0, %r13
			jne l10
                        movq $string18, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l10
l10:                    pushq %r13
                        ## obtain vtable from object in r1 with static type SELF_TYPE
                        movq 16(%r13), %r14
                        ## look up isNil() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l11
.globl l12
l12:                    ## false branch
                        ## tail(...).append(...).cons(...)
                        pushq %r12
                        pushq %rbp
                        ## head(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type ECons
                        movq 16(%r12), %r14
                        ## look up head() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## tail(...).append(...)
                        pushq %r12
                        pushq %rbp
                        ## l
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## tail(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type ECons
                        movq 16(%r12), %r14
                        ## look up tail() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        cmpq $0, %r13
			jne l14
                        movq $string19, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l14
l14:                    pushq %r13
                        ## obtain vtable from object in r1 with static type EList
                        movq 16(%r13), %r14
                        ## look up append() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        cmpq $0, %r13
			jne l15
                        movq $string19, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l15
l15:                    pushq %r13
                        ## obtain vtable from object in r1 with static type EList
                        movq 16(%r13), %r14
                        ## look up cons() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        jmp l13
.globl l11
l11:                    ## true branch
                        ## l
                        movq 24(%rbp), %r13
.globl l13
l13:                    ## end of if conditional
.globl EList.append.end
EList.append.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl ECons.print
ECons.print:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## method body begins
                        ## car.print(...)
                        pushq %r12
                        pushq %rbp
                        ## car
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l16
                        movq $string20, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l16
l16:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Edge
                        movq 16(%r13), %r14
                        ## look up print() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## cdr.print(...)
                        pushq %r12
                        pushq %rbp
                        ## cdr
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l17
                        movq $string21, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l17
l17:                    pushq %r13
                        ## obtain vtable from object in r1 with static type EList
                        movq 16(%r13), %r14
                        ## look up print() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl ECons.print.end
ECons.print.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl ECons.init
ECons.init:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## self[4] holds field cdr (EList)
                        ## fp[4] holds argument e (Edge)
                        ## fp[3] holds argument rest (EList)
                        ## method body begins
                        ## e
                        movq 32(%rbp), %r13
                        movq %r13, 24(%r12)
                        ## rest
                        movq 24(%rbp), %r13
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl ECons.init.end
ECons.init.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList.isNil
EList.isNil:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## method body begins
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
.globl EList.isNil.end
EList.isNil.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList.head
EList.head:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type EList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## car
                        movq 24(%r12), %r13
.globl EList.head.end
EList.head.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList.tail
EList.tail:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type EList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl EList.tail.end
EList.tail.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl EList.print
EList.print:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Edge)
                        ## method body begins
                        ## out_string(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string22 holds "\n"
                        movq $string22, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type EList
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl EList.print.end
EList.print.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Edge.init
Edge.init:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field from (Int)
                        ## self[4] holds field to (Int)
                        ## self[5] holds field weight (Int)
                        ## fp[5] holds argument f (Int)
                        ## fp[4] holds argument t (Int)
                        ## fp[3] holds argument w (Int)
                        ## method body begins
                        ## f
                        movq 40(%rbp), %r13
                        movq %r13, 24(%r12)
                        ## t
                        movq 32(%rbp), %r13
                        movq %r13, 32(%r12)
                        ## w
                        movq 24(%rbp), %r13
                        movq %r13, 40(%r12)
                        movq %r12, %r13
.globl Edge.init.end
Edge.init.end:          ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Edge.print
Edge.print:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field from (Int)
                        ## self[4] holds field to (Int)
                        ## self[5] holds field weight (Int)
                        ## method body begins
                        ## out_string(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string23 holds " ("
                        movq $string23, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Edge
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## out_int(...)
                        pushq %r12
                        pushq %rbp
                        ## from
                        movq 24(%r12), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Edge
                        movq 16(%r12), %r14
                        ## look up out_int() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## out_string(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string24 holds ","
                        movq $string24, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Edge
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## out_int(...)
                        pushq %r12
                        pushq %rbp
                        ## to
                        movq 32(%r12), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Edge
                        movq 16(%r12), %r14
                        ## look up out_int() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## out_string(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string25 holds ")"
                        movq $string25, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Edge
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## out_int(...)
                        pushq %r12
                        pushq %rbp
                        ## weight
                        movq 40(%r12), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Edge
                        movq 16(%r12), %r14
                        ## look up out_int() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl Edge.print.end
Edge.print.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Graph.add_vertice
Graph.add_vertice:      ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field vertices (VList)
                        ## self[4] holds field edges (EList)
                        ## fp[3] holds argument v (Vertice)
                        ## method body begins
                        ## v.outgoing(...).append(...)
                        pushq %r12
                        pushq %rbp
                        ## edges
                        movq 32(%r12), %r13
                        pushq %r13
                        ## v.outgoing(...)
                        pushq %r12
                        pushq %rbp
                        ## v
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l18
                        movq $string26, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l18
l18:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Vertice
                        movq 16(%r13), %r14
                        ## look up outgoing() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        cmpq $0, %r13
			jne l19
                        movq $string26, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l19
l19:                    pushq %r13
                        ## obtain vtable from object in r1 with static type EList
                        movq 16(%r13), %r14
                        ## look up append() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 32(%r12)
                        ## vertices.cons(...)
                        pushq %r12
                        pushq %rbp
                        ## v
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## vertices
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l20
                        movq $string27, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l20
l20:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VList
                        movq 16(%r13), %r14
                        ## look up cons() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 24(%r12)
.globl Graph.add_vertice.end
Graph.add_vertice.end:  ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Graph.print_E
Graph.print_E:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field vertices (VList)
                        ## self[4] holds field edges (EList)
                        ## method body begins
                        ## edges.print(...)
                        pushq %r12
                        pushq %rbp
                        ## edges
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l21
                        movq $string28, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l21
l21:                    pushq %r13
                        ## obtain vtable from object in r1 with static type EList
                        movq 16(%r13), %r14
                        ## look up print() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl Graph.print_E.end
Graph.print_E.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Graph.print_V
Graph.print_V:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field vertices (VList)
                        ## self[4] holds field edges (EList)
                        ## method body begins
                        ## vertices.print(...)
                        pushq %r12
                        pushq %rbp
                        ## vertices
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l22
                        movq $string29, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l22
l22:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VList
                        movq 16(%r13), %r14
                        ## look up print() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl Graph.print_V.end
Graph.print_V.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Parse.read_input
Parse.read_input:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 4
                        movq $32, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field boolop (BoolOp)
                        ## self[4] holds field rest (String)
                        ## self[5] holds field g (Graph)
                        ## method body begins
                        ## fp[0] holds local g (Graph)
                        ## new Graph
                        pushq %rbp
                        pushq %r12
                        movq $Graph..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 0(%rbp)
                        ## fp[-1] holds local line (String)
                        ## in_string(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up in_string() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
.globl l23
l23:                    ## while conditional check
                        ## boolop.and(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        pushq %rbp
                        ## line
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string22 holds "\n"
                        movq $string22, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l25
.globl l26
l26:                    ## false branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp l27
.globl l25
l25:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl l27
l27:                    ## end of if conditional
                        pushq %r13
                        pushq %r12
                        pushq %rbp
                        ## line
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string30 holds ""
                        movq $string30, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l28
.globl l29
l29:                    ## false branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp l30
.globl l28
l28:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl l30
l30:                    ## end of if conditional
                        pushq %r13
                        ## boolop
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l31
                        movq $string31, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l31
l31:                    pushq %r13
                        ## obtain vtable from object in r1 with static type BoolOp
                        movq 16(%r13), %r14
                        ## look up and() at offset 5 in vtable
                        movq 40(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			je l24
                        ## g.add_vertice(...)
                        pushq %r12
                        pushq %rbp
                        ## parse_line(...)
                        pushq %r12
                        pushq %rbp
                        ## line
                        movq -8(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up parse_line() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## g
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l32
                        movq $string32, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l32
l32:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Graph
                        movq 16(%r13), %r14
                        ## look up add_vertice() at offset 5 in vtable
                        movq 40(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## in_string(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up in_string() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        jmp l23
.globl l24
l24:                    ## end of while loop
                        ## g
                        movq 0(%rbp), %r13
.globl Parse.read_input.end
Parse.read_input.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Parse.parse_line
Parse.parse_line:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 5
                        movq $40, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field boolop (BoolOp)
                        ## self[4] holds field rest (String)
                        ## self[5] holds field g (Graph)
                        ## fp[3] holds argument s (String)
                        ## method body begins
                        ## fp[0] holds local v (Vertice)
                        ## new Vertice.init(...)
                        pushq %r12
                        pushq %rbp
                        ## a2i(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up a2i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## new Vertice
                        pushq %rbp
                        pushq %r12
                        movq $Vertice..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        cmpq $0, %r13
			jne l33
                        movq $string33, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l33
l33:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Vertice
                        movq 16(%r13), %r14
                        ## look up init() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
.globl l34
l34:                    ## while conditional check
                        pushq %r12
                        pushq %rbp
                        ## rest.length(...)
                        pushq %r12
                        pushq %rbp
                        ## rest
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l36
                        movq $string34, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l36
l36:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up length() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l37
.globl l38
l38:                    ## false branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp l39
.globl l37
l37:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl l39
l39:                    ## end of if conditional
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			je l35
                        ## fp[-1] holds local succ (Int)
                        ## a2i(...)
                        pushq %r12
                        pushq %rbp
                        ## rest
                        movq 32(%r12), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up a2i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        ## fp[-2] holds local weight (Int)
                        ## a2i(...)
                        pushq %r12
                        pushq %rbp
                        ## rest
                        movq 32(%r12), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up a2i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -16(%rbp)
                        ## v.add_out(...)
                        pushq %r12
                        pushq %rbp
                        ## new Edge.init(...)
                        pushq %r12
                        pushq %rbp
                        ## v.number(...)
                        pushq %r12
                        pushq %rbp
                        ## v
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l40
                        movq $string35, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l40
l40:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Vertice
                        movq 16(%r13), %r14
                        ## look up number() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## succ
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## weight
                        movq -16(%rbp), %r13
                        pushq %r13
                        ## new Edge
                        pushq %rbp
                        pushq %r12
                        movq $Edge..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        cmpq $0, %r13
			jne l41
                        movq $string35, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l41
l41:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Edge
                        movq 16(%r13), %r14
                        ## look up init() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $32, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## v
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l42
                        movq $string35, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l42
l42:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Vertice
                        movq 16(%r13), %r14
                        ## look up add_out() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        jmp l34
.globl l35
l35:                    ## end of while loop
                        ## v
                        movq 0(%rbp), %r13
.globl Parse.parse_line.end
Parse.parse_line.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Parse.c2i
Parse.c2i:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 2
                        movq $16, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field boolop (BoolOp)
                        ## self[4] holds field rest (String)
                        ## self[5] holds field g (Graph)
                        ## fp[3] holds argument char (String)
                        ## method body begins
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string36 holds "0"
                        movq $string36, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l43
.globl l44
l44:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string37 holds "1"
                        movq $string37, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l46
.globl l47
l47:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string38 holds "2"
                        movq $string38, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l49
.globl l50
l50:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string39 holds "3"
                        movq $string39, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l52
.globl l53
l53:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string40 holds "4"
                        movq $string40, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l55
.globl l56
l56:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string41 holds "5"
                        movq $string41, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l58
.globl l59
l59:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string42 holds "6"
                        movq $string42, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l61
.globl l62
l62:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string43 holds "7"
                        movq $string43, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l64
.globl l65
l65:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string44 holds "8"
                        movq $string44, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l67
.globl l68
l68:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## char
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string45 holds "9"
                        movq $string45, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l70
.globl l71
l71:                    ## false branch
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        jmp l72
.globl l70
l70:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $9, %r14
                        movq %r14, 24(%r13)
.globl l72
l72:                    ## end of if conditional
                        jmp l69
.globl l67
l67:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $8, %r14
                        movq %r14, 24(%r13)
.globl l69
l69:                    ## end of if conditional
                        jmp l66
.globl l64
l64:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $7, %r14
                        movq %r14, 24(%r13)
.globl l66
l66:                    ## end of if conditional
                        jmp l63
.globl l61
l61:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $6, %r14
                        movq %r14, 24(%r13)
.globl l63
l63:                    ## end of if conditional
                        jmp l60
.globl l58
l58:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $5, %r14
                        movq %r14, 24(%r13)
.globl l60
l60:                    ## end of if conditional
                        jmp l57
.globl l55
l55:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $4, %r14
                        movq %r14, 24(%r13)
.globl l57
l57:                    ## end of if conditional
                        jmp l54
.globl l52
l52:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $3, %r14
                        movq %r14, 24(%r13)
.globl l54
l54:                    ## end of if conditional
                        jmp l51
.globl l49
l49:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $2, %r14
                        movq %r14, 24(%r13)
.globl l51
l51:                    ## end of if conditional
                        jmp l48
.globl l46
l46:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
.globl l48
l48:                    ## end of if conditional
                        jmp l45
.globl l43
l43:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
.globl l45
l45:                    ## end of if conditional
.globl Parse.c2i.end
Parse.c2i.end:          ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Parse.a2i
Parse.a2i:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 3
                        movq $24, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field boolop (BoolOp)
                        ## self[4] holds field rest (String)
                        ## self[5] holds field g (Graph)
                        ## fp[3] holds argument s (String)
                        ## method body begins
                        pushq %r12
                        pushq %rbp
                        ## s.length(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l73
                        movq $string46, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l73
l73:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up length() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l74
.globl l75
l75:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l77
                        movq $string47, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l77
l77:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string48 holds "-"
                        movq $string48, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l78
.globl l79
l79:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l81
                        movq $string49, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l81
l81:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string50 holds " "
                        movq $string50, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l82
.globl l83
l83:                    ## false branch
                        ## a2i_aux(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up a2i_aux() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        jmp l84
.globl l82
l82:                    ## true branch
                        ## a2i(...)
                        pushq %r12
                        pushq %rbp
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s.length(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l85
                        movq $string49, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l85
l85:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up length() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        movq %r13, 0(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq 0(%rbp), %r14
                        movq %r14, %rax
			subq %r13, %rax
			movq %rax, %r13
                        movq %r13, 0(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq 0(%rbp), %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l86
                        movq $string49, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l86
l86:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up a2i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl l84
l84:                    ## end of if conditional
                        jmp l80
.globl l78
l78:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq %r13, 0(%rbp)
                        ## a2i_aux(...)
                        pushq %r12
                        pushq %rbp
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s.length(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l87
                        movq $string47, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l87
l87:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up length() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        movq %r13, -8(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq -8(%rbp), %r14
                        movq %r14, %rax
			subq %r13, %rax
			movq %rax, %r13
                        movq %r13, -8(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -8(%rbp), %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l88
                        movq $string47, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l88
l88:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up a2i_aux() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        movq 0(%rbp), %r14
                        movq %r14, %rax
			subq %r13, %rax
			movq %rax, %r13
                        movq %r13, 0(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq 0(%rbp), %r14
                        movq %r14, 24(%r13)
.globl l80
l80:                    ## end of if conditional
                        jmp l76
.globl l74
l74:                    ## true branch
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
.globl l76
l76:                    ## end of if conditional
.globl Parse.a2i.end
Parse.a2i.end:          ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Parse.a2i_aux
Parse.a2i_aux:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 7
                        movq $56, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field boolop (BoolOp)
                        ## self[4] holds field rest (String)
                        ## self[5] holds field g (Graph)
                        ## fp[3] holds argument s (String)
                        ## method body begins
                        ## fp[0] holds local int (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        movq %r13, 0(%rbp)
                        ## fp[-1] holds local j (Int)
                        ## s.length(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l89
                        movq $string51, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l89
l89:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up length() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        ## fp[-2] holds local i (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        movq %r13, -16(%rbp)
.globl l90
l90:                    ## while conditional check
                        pushq %r12
                        pushq %rbp
                        ## i
                        movq -16(%rbp), %r13
                        pushq %r13
                        ## j
                        movq -8(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        call lt_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			je l91
                        ## fp[-3] holds local c (String)
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## i
                        movq -16(%rbp), %r13
                        pushq %r13
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l92
                        movq $string52, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l92
l92:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -24(%rbp)
                        pushq %r12
                        pushq %rbp
                        ## c
                        movq -24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string50 holds " "
                        movq $string50, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l93
.globl l94
l94:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## c
                        movq -24(%rbp), %r13
                        pushq %r13
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string24 holds ","
                        movq $string24, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l96
.globl l97
l97:                    ## false branch
                        ## int
                        movq 0(%rbp), %r13
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $10, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        
movq %r14, %rax
imull %r13d, %eax
shlq $32, %rax
shrq $32, %rax
movl %eax, %r13d
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## c2i(...)
                        pushq %r12
                        pushq %rbp
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## i
                        movq -16(%rbp), %r13
                        pushq %r13
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l99
                        movq $string53, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l99
l99:                    pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up c2i() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        addq %r14, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        movq %r13, 0(%rbp)
                        ## i
                        movq -16(%rbp), %r13
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        addq %r14, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        movq %r13, -16(%rbp)
                        pushq %r12
                        pushq %rbp
                        ## i
                        movq -16(%rbp), %r13
                        pushq %r13
                        ## j
                        movq -8(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l100
.globl l101
l101:                   ## false branch
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string30 holds ""
                        movq $string30, %r14
                        movq %r14, 24(%r13)
                        jmp l102
.globl l100
l100:                   ## true branch
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string30 holds ""
                        movq $string30, %r14
                        movq %r14, 24(%r13)
                        movq %r13, 32(%r12)
.globl l102
l102:                   ## end of if conditional
                        jmp l98
.globl l96
l96:                    ## true branch
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## i
                        movq -16(%rbp), %r13
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        addq %r14, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s.length(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l103
                        movq $string54, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l103
l103:                   pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up length() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## i
                        movq -16(%rbp), %r13
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        movq %r14, %rax
			subq %r13, %rax
			movq %rax, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        movq %r14, %rax
			subq %r13, %rax
			movq %rax, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l104
                        movq $string54, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l104
l104:                   pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 32(%r12)
                        ## j
                        movq -8(%rbp), %r13
                        movq %r13, -16(%rbp)
.globl l98
l98:                    ## end of if conditional
                        jmp l95
.globl l93
l93:                    ## true branch
                        ## s.substr(...)
                        pushq %r12
                        pushq %rbp
                        ## i
                        movq -16(%rbp), %r13
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        addq %r14, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s.length(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l105
                        movq $string55, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l105
l105:                   pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up length() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## i
                        movq -16(%rbp), %r13
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        movq %r14, %rax
			subq %r13, %rax
			movq %rax, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq 24(%r13), %r13
                        movq -32(%rbp), %r14
                        movq %r14, %rax
			subq %r13, %rax
			movq %rax, %r13
                        movq %r13, -32(%rbp)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq -32(%rbp), %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        ## s
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l106
                        movq $string55, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l106
l106:                   pushq %r13
                        ## obtain vtable from object in r1 with static type String
                        movq 16(%r13), %r14
                        ## look up substr() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 32(%r12)
                        ## j
                        movq -8(%rbp), %r13
                        movq %r13, -16(%rbp)
.globl l95
l95:                    ## end of if conditional
                        jmp l90
.globl l91
l91:                    ## end of while loop
                        ## int
                        movq 0(%rbp), %r13
.globl Parse.a2i_aux.end
Parse.a2i_aux.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main.main
Main.main:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field boolop (BoolOp)
                        ## self[4] holds field rest (String)
                        ## self[5] holds field g (Graph)
                        ## method body begins
                        ## g.print_V(...)
                        pushq %r12
                        pushq %rbp
                        ## g
                        movq 40(%r12), %r13
                        cmpq $0, %r13
			jne l107
                        movq $string56, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l107
l107:                   pushq %r13
                        ## obtain vtable from object in r1 with static type Graph
                        movq 16(%r13), %r14
                        ## look up print_V() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## g.print_E(...)
                        pushq %r12
                        pushq %rbp
                        ## g
                        movq 40(%r12), %r13
                        cmpq $0, %r13
			jne l108
                        movq $string57, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l108
l108:                   pushq %r13
                        ## obtain vtable from object in r1 with static type Graph
                        movq 16(%r13), %r14
                        ## look up print_E() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl Main.main.end
Main.main.end:          ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl String.concat
String.concat:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[3] holds argument s (String)
                        ## method body begins
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, %r15
                        movq 24(%rbp), %r14
                        movq 24(%r14), %r14
                        movq 24(%r12), %r13
                        movq %r13, %rdi
			movq %r14, %rsi
			call coolstrcat
			movq %rax, %r13
                        movq %r13, 24(%r15)
                        movq %r15, %r13
.globl String.concat.end
String.concat.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl String.length
String.length:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, %r14
                        movq 24(%r12), %r13
                        movq %r13, %rdi
			movl $0, %eax
			call coolstrlen
			movq %rax, %r13
                        movq %r13, 24(%r14)
                        movq %r14, %r13
.globl String.length.end
String.length.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl String.substr
String.substr:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[4] holds argument i (Int)
                        ## fp[3] holds argument l (Int)
                        ## method body begins
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, %r15
                        movq 24(%rbp), %r14
                        movq 24(%r14), %r14
                        movq 32(%rbp), %r13
                        movq 24(%r13), %r13
                        movq 24(%r12), %r12
                        movq %r12, %rdi
			movq %r13, %rsi
			movq %r14, %rdx
			call coolsubstr
			movq %rax, %r13
                        cmpq $0, %r13
			jne l109
                        movq $string58, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l109
l109:                   movq %r13, 24(%r15)
                        movq %r15, %r13
.globl String.substr.end
String.substr.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VCons.isNil
VCons.isNil:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## self[4] holds field cdr (VList)
                        ## method body begins
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl VCons.isNil.end
VCons.isNil.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VCons.head
VCons.head:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## self[4] holds field cdr (VList)
                        ## method body begins
                        ## car
                        movq 24(%r12), %r13
.globl VCons.head.end
VCons.head.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VCons.tail
VCons.tail:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## self[4] holds field cdr (VList)
                        ## method body begins
                        ## cdr
                        movq 32(%r12), %r13
.globl VCons.tail.end
VCons.tail.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VList.cons
VList.cons:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## self[4] holds field cdr (VList)
                        ## fp[3] holds argument v (Vertice)
                        ## method body begins
                        ## new VCons.init(...)
                        pushq %r12
                        pushq %rbp
                        ## v
                        movq 24(%rbp), %r13
                        pushq %r13
                        movq %r12, %r13
                        pushq %r13
                        ## new VCons
                        pushq %rbp
                        pushq %r12
                        movq $VCons..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        cmpq $0, %r13
			jne l110
                        movq $string59, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l110
l110:                   pushq %r13
                        ## obtain vtable from object in r1 with static type VCons
                        movq 16(%r13), %r14
                        ## look up init() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl VList.cons.end
VList.cons.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VCons.print
VCons.print:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## self[4] holds field cdr (VList)
                        ## method body begins
                        ## car.print(...)
                        pushq %r12
                        pushq %rbp
                        ## car
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l111
                        movq $string60, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l111
l111:                   pushq %r13
                        ## obtain vtable from object in r1 with static type Vertice
                        movq 16(%r13), %r14
                        ## look up print() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## cdr.print(...)
                        pushq %r12
                        pushq %rbp
                        ## cdr
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l112
                        movq $string61, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l112
l112:                   pushq %r13
                        ## obtain vtable from object in r1 with static type VList
                        movq 16(%r13), %r14
                        ## look up print() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl VCons.print.end
VCons.print.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VCons.init
VCons.init:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## self[4] holds field cdr (VList)
                        ## fp[4] holds argument v (Vertice)
                        ## fp[3] holds argument rest (VList)
                        ## method body begins
                        ## v
                        movq 32(%rbp), %r13
                        movq %r13, 24(%r12)
                        ## rest
                        movq 24(%rbp), %r13
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl VCons.init.end
VCons.init.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VList.isNil
VList.isNil:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## method body begins
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
.globl VList.isNil.end
VList.isNil.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VList.head
VList.head:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type VList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## car
                        movq 24(%r12), %r13
.globl VList.head.end
VList.head.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VList.tail
VList.tail:             ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type VList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl VList.tail.end
VList.tail.end:         ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VList.print
VList.print:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field car (Vertice)
                        ## method body begins
                        ## out_string(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string22 holds "\n"
                        movq $string22, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type VList
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl VList.print.end
VList.print.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Vertice.outgoing
Vertice.outgoing:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field num (Int)
                        ## self[4] holds field out (EList)
                        ## method body begins
                        ## out
                        movq 32(%r12), %r13
.globl Vertice.outgoing.end
Vertice.outgoing.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Vertice.number
Vertice.number:         ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field num (Int)
                        ## self[4] holds field out (EList)
                        ## method body begins
                        ## num
                        movq 24(%r12), %r13
.globl Vertice.number.end
Vertice.number.end:     ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Vertice.init
Vertice.init:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field num (Int)
                        ## self[4] holds field out (EList)
                        ## fp[3] holds argument n (Int)
                        ## method body begins
                        ## n
                        movq 24(%rbp), %r13
                        movq %r13, 24(%r12)
                        movq %r12, %r13
.globl Vertice.init.end
Vertice.init.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Vertice.add_out
Vertice.add_out:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field num (Int)
                        ## self[4] holds field out (EList)
                        ## fp[3] holds argument s (Edge)
                        ## method body begins
                        ## out.cons(...)
                        pushq %r12
                        pushq %rbp
                        ## s
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## out
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l113
                        movq $string62, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l113
l113:                   pushq %r13
                        ## obtain vtable from object in r1 with static type EList
                        movq 16(%r13), %r14
                        ## look up cons() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl Vertice.add_out.end
Vertice.add_out.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Vertice.print
Vertice.print:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field num (Int)
                        ## self[4] holds field out (EList)
                        ## method body begins
                        ## out_int(...)
                        pushq %r12
                        pushq %rbp
                        ## num
                        movq 24(%r12), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Vertice
                        movq 16(%r12), %r14
                        ## look up out_int() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## out.print(...)
                        pushq %r12
                        pushq %rbp
                        ## out
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l114
                        movq $string63, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l114
l114:                   pushq %r13
                        ## obtain vtable from object in r1 with static type EList
                        movq 16(%r13), %r14
                        ## look up print() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl Vertice.print.end
Vertice.print.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                        ## global string constants
.globl the.empty.string
the.empty.string:       # ""
.byte 0

.globl percent.d
percent.d:              # "%ld"
.byte  37 # '%'
.byte 108 # 'l'
.byte 100 # 'd'
.byte 0

.globl percent.ld
percent.ld:             # " %ld"
.byte  32 # ' '
.byte  37 # '%'
.byte 108 # 'l'
.byte 100 # 'd'
.byte 0

.globl string1
string1:                # "Bool"
.byte  66 # 'B'
.byte 111 # 'o'
.byte 111 # 'o'
.byte 108 # 'l'
.byte 0

.globl string2
string2:                # "BoolOp"
.byte  66 # 'B'
.byte 111 # 'o'
.byte 111 # 'o'
.byte 108 # 'l'
.byte  79 # 'O'
.byte 112 # 'p'
.byte 0

.globl string3
string3:                # "ECons"
.byte  69 # 'E'
.byte  67 # 'C'
.byte 111 # 'o'
.byte 110 # 'n'
.byte 115 # 's'
.byte 0

.globl string4
string4:                # "EList"
.byte  69 # 'E'
.byte  76 # 'L'
.byte 105 # 'i'
.byte 115 # 's'
.byte 116 # 't'
.byte 0

.globl string5
string5:                # "Edge"
.byte  69 # 'E'
.byte 100 # 'd'
.byte 103 # 'g'
.byte 101 # 'e'
.byte 0

.globl string6
string6:                # "Graph"
.byte  71 # 'G'
.byte 114 # 'r'
.byte  97 # 'a'
.byte 112 # 'p'
.byte 104 # 'h'
.byte 0

.globl string7
string7:                # "IO"
.byte  73 # 'I'
.byte  79 # 'O'
.byte 0

.globl string8
string8:                # "Int"
.byte  73 # 'I'
.byte 110 # 'n'
.byte 116 # 't'
.byte 0

.globl string9
string9:                # "Main"
.byte  77 # 'M'
.byte  97 # 'a'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 0

.globl string10
string10:               # "Object"
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte 0

.globl string11
string11:               # "Parse"
.byte  80 # 'P'
.byte  97 # 'a'
.byte 114 # 'r'
.byte 115 # 's'
.byte 101 # 'e'
.byte 0

.globl string12
string12:               # "String"
.byte  83 # 'S'
.byte 116 # 't'
.byte 114 # 'r'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 103 # 'g'
.byte 0

.globl string13
string13:               # "VCons"
.byte  86 # 'V'
.byte  67 # 'C'
.byte 111 # 'o'
.byte 110 # 'n'
.byte 115 # 's'
.byte 0

.globl string14
string14:               # "VList"
.byte  86 # 'V'
.byte  76 # 'L'
.byte 105 # 'i'
.byte 115 # 's'
.byte 116 # 't'
.byte 0

.globl string15
string15:               # "Vertice"
.byte  86 # 'V'
.byte 101 # 'e'
.byte 114 # 'r'
.byte 116 # 't'
.byte 105 # 'i'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 0

.globl string16
string16:               # "abort\\n"
.byte  97 # 'a'
.byte  98 # 'b'
.byte 111 # 'o'
.byte 114 # 'r'
.byte 116 # 't'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string17
string17:               # "ERROR: 135: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  51 # '3'
.byte  53 # '5'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string18
string18:               # "ERROR: 139: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  51 # '3'
.byte  57 # '9'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string19
string19:               # "ERROR: 140: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  52 # '4'
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string20
string20:               # "ERROR: 184: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  56 # '8'
.byte  52 # '4'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string21
string21:               # "ERROR: 185: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  56 # '8'
.byte  53 # '5'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string22
string22:               # "\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string23
string23:               # " ("
.byte  32 # ' '
.byte  40 # '('
.byte 0

.globl string24
string24:               # ","
.byte  44 # ','
.byte 0

.globl string25
string25:               # ")"
.byte  41 # ')'
.byte 0

.globl string26
string26:               # "ERROR: 44: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  52 # '4'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string27
string27:               # "ERROR: 45: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  53 # '5'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string28
string28:               # "ERROR: 48: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  56 # '8'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string29
string29:               # "ERROR: 49: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  57 # '9'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string30
string30:               # ""
.byte 0

.globl string31
string31:               # "ERROR: 260: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  54 # '6'
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string32
string32:               # "ERROR: 263: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  54 # '6'
.byte  51 # '3'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string33
string33:               # "ERROR: 273: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  55 # '7'
.byte  51 # '3'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string34
string34:               # "ERROR: 274: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  55 # '7'
.byte  52 # '4'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string35
string35:               # "ERROR: 280: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  56 # '8'
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string36
string36:               # "0"
.byte  48 # '0'
.byte 0

.globl string37
string37:               # "1"
.byte  49 # '1'
.byte 0

.globl string38
string38:               # "2"
.byte  50 # '2'
.byte 0

.globl string39
string39:               # "3"
.byte  51 # '3'
.byte 0

.globl string40
string40:               # "4"
.byte  52 # '4'
.byte 0

.globl string41
string41:               # "5"
.byte  53 # '5'
.byte 0

.globl string42
string42:               # "6"
.byte  54 # '6'
.byte 0

.globl string43
string43:               # "7"
.byte  55 # '7'
.byte 0

.globl string44
string44:               # "8"
.byte  56 # '8'
.byte 0

.globl string45
string45:               # "9"
.byte  57 # '9'
.byte 0

.globl string46
string46:               # "ERROR: 308: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  48 # '0'
.byte  56 # '8'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string47
string47:               # "ERROR: 309: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  48 # '0'
.byte  57 # '9'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string48
string48:               # "-"
.byte  45 # '-'
.byte 0

.globl string49
string49:               # "ERROR: 310: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  49 # '1'
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string50
string50:               # " "
.byte  32 # ' '
.byte 0

.globl string51
string51:               # "ERROR: 324: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  50 # '2'
.byte  52 # '4'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string52
string52:               # "ERROR: 327: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  50 # '2'
.byte  55 # '7'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string53
string53:               # "ERROR: 340: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  52 # '4'
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string54
string54:               # "ERROR: 335: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  51 # '3'
.byte  53 # '5'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string55
string55:               # "ERROR: 330: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  51 # '3'
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string56
string56:               # "ERROR: 363: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  54 # '6'
.byte  51 # '3'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string57
string57:               # "ERROR: 364: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  54 # '6'
.byte  52 # '4'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string58
string58:               # "ERROR: 0: Exception: String.substr out of range\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte  83 # 'S'
.byte 116 # 't'
.byte 114 # 'r'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 103 # 'g'
.byte  46 # '.'
.byte 115 # 's'
.byte 117 # 'u'
.byte  98 # 'b'
.byte 115 # 's'
.byte 116 # 't'
.byte 114 # 'r'
.byte  32 # ' '
.byte 111 # 'o'
.byte 117 # 'u'
.byte 116 # 't'
.byte  32 # ' '
.byte 111 # 'o'
.byte 102 # 'f'
.byte  32 # ' '
.byte 114 # 'r'
.byte  97 # 'a'
.byte 110 # 'n'
.byte 103 # 'g'
.byte 101 # 'e'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string59
string59:               # "ERROR: 213: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  49 # '1'
.byte  51 # '3'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string60
string60:               # "ERROR: 241: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  52 # '4'
.byte  49 # '1'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string61
string61:               # "ERROR: 242: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  52 # '4'
.byte  50 # '2'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string62
string62:               # "ERROR: 72: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  55 # '7'
.byte  50 # '2'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string63
string63:               # "ERROR: 80: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  56 # '8'
.byte  48 # '0'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte  99 # 'c'
.byte 101 # 'e'
.byte 112 # 'p'
.byte 116 # 't'
.byte 105 # 'i'
.byte 111 # 'o'
.byte 110 # 'n'
.byte  58 # ':'
.byte  32 # ' '
.byte 100 # 'd'
.byte 105 # 'i'
.byte 115 # 's'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte 111 # 'o'
.byte 110 # 'n'
.byte  32 # ' '
.byte 118 # 'v'
.byte 111 # 'o'
.byte 105 # 'i'
.byte 100 # 'd'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl eq_handler
eq_handler:             ## helper function for =
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 32(%rbp), %r12
                        ## return address handling
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        cmpq %r14, %r13
			je eq_true
                        movq $0, %r15
                        cmpq %r15, %r13
			je eq_false
                        cmpq %r15, %r14
			je eq_false
                        movq 0(%r13), %r13
                        movq 0(%r14), %r14
                        ## place the sum of the type tags in r1
                        addq %r14, %r13
                        movq $0, %r14
                        cmpq %r14, %r13
			je eq_bool
                        movq $2, %r14
                        cmpq %r14, %r13
			je eq_int
                        movq $6, %r14
                        cmpq %r14, %r13
			je eq_string
                        ## otherwise, use pointer comparison
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        cmpq %r14, %r13
			je eq_true
.globl eq_false
eq_false:               ## not equal
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        jmp eq_end
.globl eq_true
eq_true:                ## equal
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp eq_end
.globl eq_bool
eq_bool:                ## two Bools
.globl eq_int
eq_int:                 ## two Ints
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        movq 24(%r13), %r13
                        movq 24(%r14), %r14
                        cmpq %r14, %r13
			je eq_true
                        jmp eq_false
.globl eq_string
eq_string:              ## two Strings
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        movq 24(%r13), %r13
                        movq 24(%r14), %r14
                        
  movq %r13, %rdi
  movq %r14, %rsi
  call strcmp 
  cmp $0, %eax
  je eq_true
                        jmp eq_false
.globl eq_end
eq_end:                 ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl le_handler
le_handler:             ## helper function for <=
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 32(%rbp), %r12
                        ## return address handling
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        cmpq %r14, %r13
			je le_true
                        movq $0, %r15
                        cmpq %r15, %r13
			je le_false
                        cmpq %r15, %r14
			je le_false
                        movq 0(%r13), %r13
                        movq 0(%r14), %r14
                        ## place the sum of the type tags in r1
                        addq %r14, %r13
                        movq $0, %r14
                        cmpq %r14, %r13
			je le_bool
                        movq $2, %r14
                        cmpq %r14, %r13
			je le_int
                        movq $6, %r14
                        cmpq %r14, %r13
			je le_string
                        ## for non-primitives, equality is our only hope
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        cmpq %r14, %r13
			je le_true
.globl le_false
le_false:               ## not less-than-or-equal
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        jmp le_end
.globl le_true
le_true:                ## less-than-or-equal
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp le_end
.globl le_bool
le_bool:                ## two Bools
.globl le_int
le_int:                 ## two Ints
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        movq 24(%r13), %r13
                        movq 24(%r14), %r14
                        cmpl %r14d, %r13d
			jle le_true
                        jmp le_false
.globl le_string
le_string:              ## two Strings
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        movq 24(%r13), %r13
                        movq 24(%r14), %r14
                        
  movq %r13, %rdi
  movq %r14, %rsi
  call strcmp 
  cmp $0, %eax
  jle le_true
                        jmp le_false
.globl le_end
le_end:                 ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl lt_handler
lt_handler:             ## helper function for <
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 32(%rbp), %r12
                        ## return address handling
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        movq $0, %r15
                        cmpq %r15, %r13
			je lt_false
                        cmpq %r15, %r14
			je lt_false
                        movq 0(%r13), %r13
                        movq 0(%r14), %r14
                        ## place the sum of the type tags in r1
                        addq %r14, %r13
                        movq $0, %r14
                        cmpq %r14, %r13
			je lt_bool
                        movq $2, %r14
                        cmpq %r14, %r13
			je lt_int
                        movq $6, %r14
                        cmpq %r14, %r13
			je lt_string
                        ## for non-primitives, < is always false
.globl lt_false
lt_false:               ## not less than
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        jmp lt_end
.globl lt_true
lt_true:                ## less than
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp lt_end
.globl lt_bool
lt_bool:                ## two Bools
.globl lt_int
lt_int:                 ## two Ints
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        movq 24(%r13), %r13
                        movq 24(%r14), %r14
                        cmpl %r14d, %r13d
			jl lt_true
                        jmp lt_false
.globl lt_string
lt_string:              ## two Strings
                        movq 32(%rbp), %r13
                        movq 24(%rbp), %r14
                        movq 24(%r13), %r13
                        movq 24(%r14), %r14
                        
  movq %r13, %rdi
  movq %r14, %rsi
  call strcmp 
  cmp $0, %eax
  jl lt_true
                        jmp lt_false
.globl lt_end
lt_end:                 ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl start
start:                  ## program begins here
                        .globl main
			.type main, @function
main:
                        movq $Main..new, %r14
                        pushq %rbp
                        call *%r14
                        pushq %rbp
                        pushq %r13
                        movq $Main.main, %r14
                        call *%r14
                        movl $0, %edi
			call exit
                        
.globl cooloutstr
	.type	cooloutstr, @function
cooloutstr:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	cltq
	addq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L3
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	addq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$110, %al
	jne	.L3
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$10, %edi
	call	fputc
	addl	$2, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	addq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$92, %al
	jne	.L4
	movl	-4(%rbp), %eax
	cltq
	addq	$1, %rax
	addq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$116, %al
	jne	.L4
	movq	stdout(%rip), %rax
	movq	%rax, %rsi
	movl	$9, %edi
	call	fputc
	addl	$2, -4(%rbp)
	jmp	.L2
.L4:
	movq	stdout(%rip), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	fputc
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cltq
	addq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movq	stdout(%rip), %rax
	movq	%rax, %rdi
	call	fflush
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cooloutstr, .-cooloutstr
.globl coolstrlen
	.type	coolstrlen, @function
coolstrlen:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L7
.L8:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.L7:
	movl	-4(%rbp), %eax
	mov	%eax, %eax
	addq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	coolstrlen, .-coolstrlen
	.section	.rodata
.LC0:
	.string	"%s%s"
	.text
.globl coolstrcat
	.type	coolstrcat, @function
coolstrcat:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L10
	.cfi_offset 3, -24
	movq	-48(%rbp), %rax
	jmp	.L11
.L10:
	cmpq	$0, -48(%rbp)
	jne	.L12
	movq	-40(%rbp), %rax
	jmp	.L11
.L12:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	coolstrlen
	movl	%eax, %ebx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	coolstrlen
	leal	(%rbx,%rax), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movl	$1, %esi
	movq	%rax, %rdi
	call	calloc
	movq	%rax, -32(%rbp)
	movl	$.LC0, %edx
	movl	-20(%rbp), %eax
	movslq	%eax, %rbx
	movq	-48(%rbp), %rsi
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rsi, %r8
	movq	%rbx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf
	movq	-32(%rbp), %rax
.L11:
	addq	$40, %rsp
	popq	%rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	coolstrcat, .-coolstrcat
	.section	.rodata
.LC1:
	.string	""
	.text
.globl coolgetstr
	.type	coolgetstr, @function
coolgetstr:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$1, %esi
	movl	$40960, %edi
	call	calloc
	movq	%rax, -16(%rbp)
	movl	$0, -4(%rbp)
.L20:
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fgetc
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	je	.L14
	cmpl	$10, -20(%rbp)
	jne	.L15
.L14:
	cmpl	$0, -4(%rbp)
	je	.L16
	movl	$.LC1, %eax
	jmp	.L17
.L16:
	movq	-16(%rbp), %rax
	jmp	.L17
.L15:
	cmpl	$0, -20(%rbp)
	jne	.L18
	movl	$1, -4(%rbp)
	jmp	.L20
.L18:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	coolstrlen
	mov	%eax, %eax
	addq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movb	%dl, (%rax)
	jmp	.L20
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	coolgetstr, .-coolgetstr
.globl coolsubstr
	.type	coolsubstr, @function
coolsubstr:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	coolstrlen
	movl	%eax, -4(%rbp)
	cmpq	$0, -32(%rbp)
	js	.L22
	cmpq	$0, -40(%rbp)
	js	.L22
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdx
	addq	%rax, %rdx
	movl	-4(%rbp), %eax
	cltq
	cmpq	%rax, %rdx
	jle	.L23
.L22:
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strndup
.L24:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	coolsubstr, .-coolsubstr

