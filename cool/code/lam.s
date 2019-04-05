                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl App..vtable
App..vtable:            ## virtual function table for App
                        .quad string1
                        .quad App..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad App.print_self
                        .quad App.beta
                        .quad App.substitute
                        .quad App.gen_code
                        .quad App.init
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Bool..vtable
Bool..vtable:           ## virtual function table for Bool
                        .quad string2
                        .quad Bool..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Expr..vtable
Expr..vtable:           ## virtual function table for Expr
                        .quad string3
                        .quad Expr..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Expr.print_self
                        .quad Expr.beta
                        .quad Expr.substitute
                        .quad Expr.gen_code
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl IO..vtable
IO..vtable:             ## virtual function table for IO
                        .quad string4
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
                        .quad string5
                        .quad Int..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda..vtable
Lambda..vtable:         ## virtual function table for Lambda
                        .quad string6
                        .quad Lambda..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Lambda.print_self
                        .quad Lambda.beta
                        .quad Lambda.substitute
                        .quad Lambda.gen_code
                        .quad Lambda.init
                        .quad Lambda.apply
                        .quad Lambda.gen_closure_code
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList..vtable
LambdaList..vtable:     ## virtual function table for LambdaList
                        .quad string7
                        .quad LambdaList..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad LambdaList.isNil
                        .quad LambdaList.headE
                        .quad LambdaList.headC
                        .quad LambdaList.headN
                        .quad LambdaList.tail
                        .quad LambdaList.add
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE..vtable
LambdaListNE..vtable:   ## virtual function table for LambdaListNE
                        .quad string8
                        .quad LambdaListNE..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad LambdaListNE.isNil
                        .quad LambdaListNE.headE
                        .quad LambdaListNE.headC
                        .quad LambdaListNE.headN
                        .quad LambdaListNE.tail
                        .quad LambdaList.add
                        .quad LambdaListNE.init
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef..vtable
LambdaListRef..vtable:  ## virtual function table for LambdaListRef
                        .quad string9
                        .quad LambdaListRef..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad LambdaListRef.isNil
                        .quad LambdaListRef.headE
                        .quad LambdaListRef.headC
                        .quad LambdaListRef.headN
                        .quad LambdaListRef.reset
                        .quad LambdaListRef.add
                        .quad LambdaListRef.removeHead
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main..vtable
Main..vtable:           ## virtual function table for Main
                        .quad string10
                        .quad Main..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Term.var
                        .quad Term.lam
                        .quad Term.app
                        .quad Term.i
                        .quad Term.k
                        .quad Term.s
                        .quad Main.beta_reduce
                        .quad Main.eval_class
                        .quad Main.closure_class
                        .quad Main.gen_code
                        .quad Main.main
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Object..vtable
Object..vtable:         ## virtual function table for Object
                        .quad string11
                        .quad Object..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
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
.globl Term..vtable
Term..vtable:           ## virtual function table for Term
                        .quad string13
                        .quad Term..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Term.var
                        .quad Term.lam
                        .quad Term.app
                        .quad Term.i
                        .quad Term.k
                        .quad Term.s
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarList..vtable
VarList..vtable:        ## virtual function table for VarList
                        .quad string14
                        .quad VarList..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad VarList.isNil
                        .quad VarList.head
                        .quad VarList.tail
                        .quad VarList.add
                        .quad VarList.print
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarListNE..vtable
VarListNE..vtable:      ## virtual function table for VarListNE
                        .quad string15
                        .quad VarListNE..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad VarListNE.isNil
                        .quad VarListNE.head
                        .quad VarListNE.tail
                        .quad VarList.add
                        .quad VarListNE.print
                        .quad VarListNE.init
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Variable..vtable
Variable..vtable:       ## virtual function table for Variable
                        .quad string16
                        .quad Variable..new
                        .quad Object.abort
                        .quad Object.copy
                        .quad Object.type_name
                        .quad IO.in_int
                        .quad IO.in_string
                        .quad IO.out_int
                        .quad IO.out_string
                        .quad Variable.print_self
                        .quad Variable.beta
                        .quad Variable.substitute
                        .quad Variable.gen_code
                        .quad Variable.init
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl App..new
App..new:               ## constructor for App
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
                        movq $10, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $App..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field fun (Expr)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field arg (Expr)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] fun initializer -- none 
                        ## self[4] arg initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
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
.globl Expr..new
Expr..new:              ## constructor for Expr
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
                        movq $11, %r14
                        movq %r14, 0(%r12)
                        movq $3, %r14
                        movq %r14, 8(%r12)
                        movq $Expr..vtable, %r14
                        movq %r14, 16(%r12)
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
                        movq $12, %r14
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
.globl Lambda..new
Lambda..new:            ## constructor for Lambda
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
                        movq $13, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $Lambda..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field arg (Variable)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field body (Expr)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] arg initializer -- none 
                        ## self[4] body initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList..new
LambdaList..new:        ## constructor for LambdaList
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
                        movq $14, %r14
                        movq %r14, 0(%r12)
                        movq $3, %r14
                        movq %r14, 8(%r12)
                        movq $LambdaList..vtable, %r14
                        movq %r14, 16(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE..new
LambdaListNE..new:      ## constructor for LambdaListNE
                        pushq %rbp
                        movq %rsp, %rbp
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        movq $7, %r12
                        movq $8, %rsi
			movq %r12, %rdi
			call calloc
			movq %rax, %r12
                        ## store class tag, object size and vtable pointer
                        movq $15, %r14
                        movq %r14, 0(%r12)
                        movq $7, %r14
                        movq %r14, 8(%r12)
                        movq $LambdaListNE..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field lam (Lambda)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field num (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 32(%r12)
                        ## self[5] holds field env (VarList)
                        movq $0, %r13
                        movq %r13, 40(%r12)
                        ## self[6] holds field rest (LambdaList)
                        movq $0, %r13
                        movq %r13, 48(%r12)
                        ## self[3] lam initializer -- none 
                        ## self[4] num initializer -- none 
                        ## self[5] env initializer -- none 
                        ## self[6] rest initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef..new
LambdaListRef..new:     ## constructor for LambdaListRef
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
                        movq $16, %r14
                        movq %r14, 0(%r12)
                        movq $5, %r14
                        movq %r14, 8(%r12)
                        movq $LambdaListRef..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field nextNum (Int)
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 24(%r12)
                        ## self[4] holds field l (LambdaList)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] nextNum initializer <- 0
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        movq %r13, 24(%r12)
                        ## self[4] l initializer -- none 
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
                        movq $Main..vtable, %r14
                        movq %r14, 16(%r12)
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
                        movq $18, %r14
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
.globl Term..new
Term..new:              ## constructor for Term
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
                        movq $19, %r14
                        movq %r14, 0(%r12)
                        movq $3, %r14
                        movq %r14, 8(%r12)
                        movq $Term..vtable, %r14
                        movq %r14, 16(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarList..new
VarList..new:           ## constructor for VarList
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
                        movq $20, %r14
                        movq %r14, 0(%r12)
                        movq $3, %r14
                        movq %r14, 8(%r12)
                        movq $VarList..vtable, %r14
                        movq %r14, 16(%r12)
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarListNE..new
VarListNE..new:         ## constructor for VarListNE
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
                        movq $VarListNE..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field x (Variable)
                        movq $0, %r13
                        movq %r13, 24(%r12)
                        ## self[4] holds field rest (VarList)
                        movq $0, %r13
                        movq %r13, 32(%r12)
                        ## self[3] x initializer -- none 
                        ## self[4] rest initializer -- none 
                        movq %r12, %r13
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Variable..new
Variable..new:          ## constructor for Variable
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
                        movq $22, %r14
                        movq %r14, 0(%r12)
                        movq $4, %r14
                        movq %r14, 8(%r12)
                        movq $Variable..vtable, %r14
                        movq %r14, 16(%r12)
                        ## initialize attributes
                        ## self[3] holds field name (String)
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 24(%r12)
                        ## self[3] name initializer -- none 
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
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
                        ## method body begins
                        movq $string17, %r13
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
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
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
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
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
.globl IO.in_int
IO.in_int:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
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
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
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
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
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
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
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
.globl App.print_self
App.print_self:         ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
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
                        ## string18 holds "(("
                        movq $string18, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## fun.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## fun
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l3
                        movq $string19, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l3
l3:                     pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string20 holds ")@("
                        movq $string20, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## arg.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## arg
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l4
                        movq $string21, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l4
l4:                     pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string22 holds "))"
                        movq $string22, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl App.print_self.end
App.print_self.end:     ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl App.beta
App.beta:               ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 4
                        movq $32, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
                        ## method body begins
                        ## case expression begins
                        ## fun
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			je l5
                        movq %r13, 0(%rbp)
                        movq 0(%r13), %r13
                        ## case Lambda will jump to l6
                        ## case Expr will jump to l7
                        ## case expression: compare type tags
                        movq $10, %r14
                        cmpq %r14, %r13
			je l7
                        movq $0, %r14
                        cmpq %r14, %r13
			je l8
                        movq $11, %r14
                        cmpq %r14, %r13
			je l7
                        movq $12, %r14
                        cmpq %r14, %r13
			je l8
                        movq $1, %r14
                        cmpq %r14, %r13
			je l8
                        movq $13, %r14
                        cmpq %r14, %r13
			je l6
                        movq $14, %r14
                        cmpq %r14, %r13
			je l8
                        movq $15, %r14
                        cmpq %r14, %r13
			je l8
                        movq $16, %r14
                        cmpq %r14, %r13
			je l8
                        movq $17, %r14
                        cmpq %r14, %r13
			je l8
                        movq $18, %r14
                        cmpq %r14, %r13
			je l8
                        movq $3, %r14
                        cmpq %r14, %r13
			je l8
                        movq $19, %r14
                        cmpq %r14, %r13
			je l8
                        movq $20, %r14
                        cmpq %r14, %r13
			je l8
                        movq $21, %r14
                        cmpq %r14, %r13
			je l8
                        movq $22, %r14
                        cmpq %r14, %r13
			je l7
.globl l8
l8:                     ## case expression: error case
                        movq $string23, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l5
l5:                     ## case expression: void case
                        movq $string24, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
                        ## case expression: branches
.globl l6
l6:                     ## fp[0] holds case l (Lambda)
                        ## l.apply(...)
                        pushq %r12
                        pushq %rbp
                        ## arg
                        movq 32(%r12), %r13
                        pushq %r13
                        ## l
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l10
                        movq $string25, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l10
l10:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Lambda
                        movq 16(%r13), %r14
                        ## look up apply() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        jmp l9
.globl l7
l7:                     ## fp[0] holds case e (Expr)
                        ## fp[-1] holds local new_fun (Expr)
                        ## fun.beta(...)
                        pushq %r12
                        pushq %rbp
                        ## fun
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l11
                        movq $string26, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l11
l11:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up beta() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        ## fp[-2] holds local new_app (App)
                        ## new App
                        pushq %rbp
                        pushq %r12
                        movq $App..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, -16(%rbp)
                        ## new_app.init(...)
                        pushq %r12
                        pushq %rbp
                        ## new_fun
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## arg
                        movq 32(%r12), %r13
                        pushq %r13
                        ## new_app
                        movq -16(%rbp), %r13
                        cmpq $0, %r13
			jne l12
                        movq $string27, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l12
l12:                    pushq %r13
                        ## obtain vtable from object in r1 with static type App
                        movq 16(%r13), %r14
                        ## look up init() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        jmp l9
.globl l9
l9:                     ## case expression ends
.globl App.beta.end
App.beta.end:           ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl App.substitute
App.substitute:         ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 4
                        movq $32, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
                        ## fp[4] holds argument x (Variable)
                        ## fp[3] holds argument e (Expr)
                        ## method body begins
                        ## fp[0] holds local new_fun (Expr)
                        ## fun.substitute(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## e
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## fun
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l13
                        movq $string28, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l13
l13:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up substitute() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
                        ## fp[-1] holds local new_arg (Expr)
                        ## arg.substitute(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## e
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## arg
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l14
                        movq $string29, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l14
l14:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up substitute() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        ## fp[-2] holds local new_app (App)
                        ## new App
                        pushq %rbp
                        pushq %r12
                        movq $App..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, -16(%rbp)
                        ## new_app.init(...)
                        pushq %r12
                        pushq %rbp
                        ## new_fun
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## new_arg
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## new_app
                        movq -16(%rbp), %r13
                        cmpq $0, %r13
			jne l15
                        movq $string30, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l15
l15:                    pushq %r13
                        ## obtain vtable from object in r1 with static type App
                        movq 16(%r13), %r14
                        ## look up init() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl App.substitute.end
App.substitute.end:     ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl App.gen_code
App.gen_code:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
                        ## fp[4] holds argument env (VarList)
                        ## fp[3] holds argument closures (LambdaListRef)
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
                        ## string31 holds "(let x : EvalObject ..."
                        movq $string31, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## fun.gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## env
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## closures
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## fun
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l16
                        movq $string32, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l16
l16:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up gen_code() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $24, %rsp
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
                        ## string33 holds ",\n"
                        movq $string33, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string34 holds "     y : EvalObject ..."
                        movq $string34, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## arg.gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## env
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## closures
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## arg
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l17
                        movq $string35, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l17
l17:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up gen_code() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $24, %rsp
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
                        ## string36 holds " in\n"
                        movq $string36, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string37 holds "  case x of\n"
                        movq $string37, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string38 holds "    c : Closure => c..."
                        movq $string38, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string39 holds "    o : Object => { ..."
                        movq $string39, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string40 holds "  esac)"
                        movq $string40, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type App
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl App.gen_code.end
App.gen_code.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl App.init
App.init:               ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field fun (Expr)
                        ## self[4] holds field arg (Expr)
                        ## fp[4] holds argument f (Expr)
                        ## fp[3] holds argument a (Expr)
                        ## method body begins
                        ## f
                        movq 32(%rbp), %r13
                        movq %r13, 24(%r12)
                        ## a
                        movq 24(%rbp), %r13
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl App.init.end
App.init.end:           ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Expr.print_self
Expr.print_self:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
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
                        ## string41 holds "\nError: Expr is pur..."
                        movq $string41, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl Expr.print_self.end
Expr.print_self.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Expr.beta
Expr.beta:              ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
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
                        ## string42 holds "\nError: Expr is pur..."
                        movq $string42, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl Expr.beta.end
Expr.beta.end:          ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Expr.substitute
Expr.substitute:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[4] holds argument x (Variable)
                        ## fp[3] holds argument e (Expr)
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
                        ## string43 holds "\nError: Expr is pur..."
                        movq $string43, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl Expr.substitute.end
Expr.substitute.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Expr.gen_code
Expr.gen_code:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[4] holds argument env (VarList)
                        ## fp[3] holds argument closures (LambdaListRef)
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
                        ## string44 holds "\nError: Expr is pur..."
                        movq $string44, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Expr
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl Expr.gen_code.end
Expr.gen_code.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda.print_self
Lambda.print_self:      ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field arg (Variable)
                        ## self[4] holds field body (Expr)
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
                        ## string45 holds "\\"
                        movq $string45, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## arg.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## arg
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l18
                        movq $string46, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l18
l18:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Variable
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string47 holds "."
                        movq $string47, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## body.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## body
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l19
                        movq $string48, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l19
l19:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl Lambda.print_self.end
Lambda.print_self.end:  ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda.beta
Lambda.beta:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field arg (Variable)
                        ## self[4] holds field body (Expr)
                        ## method body begins
                        movq %r12, %r13
.globl Lambda.beta.end
Lambda.beta.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda.substitute
Lambda.substitute:      ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 3
                        movq $24, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field arg (Variable)
                        ## self[4] holds field body (Expr)
                        ## fp[4] holds argument x (Variable)
                        ## fp[3] holds argument e (Expr)
                        ## method body begins
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## arg
                        movq 24(%r12), %r13
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l20
.globl l21
l21:                    ## false branch
                        ## fp[0] holds local new_body (Expr)
                        ## body.substitute(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## e
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## body
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l23
                        movq $string49, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l23
l23:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up substitute() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
                        ## fp[-1] holds local new_lam (Lambda)
                        ## new Lambda
                        pushq %rbp
                        pushq %r12
                        movq $Lambda..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, -8(%rbp)
                        ## new_lam.init(...)
                        pushq %r12
                        pushq %rbp
                        ## arg
                        movq 24(%r12), %r13
                        pushq %r13
                        ## new_body
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## new_lam
                        movq -8(%rbp), %r13
                        cmpq $0, %r13
			jne l24
                        movq $string50, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l24
l24:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Lambda
                        movq 16(%r13), %r14
                        ## look up init() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        jmp l22
.globl l20
l20:                    ## true branch
                        movq %r12, %r13
.globl l22
l22:                    ## end of if conditional
.globl Lambda.substitute.end
Lambda.substitute.end:  ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda.gen_code
Lambda.gen_code:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field arg (Variable)
                        ## self[4] holds field body (Expr)
                        ## fp[4] holds argument env (VarList)
                        ## fp[3] holds argument closures (LambdaListRef)
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
                        ## string51 holds "((new Closure"
                        movq $string51, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
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
                        ## closures.add(...)
                        pushq %r12
                        pushq %rbp
                        ## env
                        movq 32(%rbp), %r13
                        pushq %r13
                        movq %r12, %r13
                        pushq %r13
                        ## closures
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l25
                        movq $string52, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l25
l25:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListRef
                        movq 16(%r13), %r14
                        ## look up add() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
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
                        ## string53 holds ").init("
                        movq $string53, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## env.isNil(...)
                        pushq %r12
                        pushq %rbp
                        ## env
                        movq 32(%rbp), %r13
                        cmpq $0, %r13
			jne l26
                        movq $string54, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l26
l26:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarList
                        movq 16(%r13), %r14
                        ## look up isNil() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l27
.globl l28
l28:                    ## false branch
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
                        ## string55 holds "self))"
                        movq $string55, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        jmp l29
.globl l27
l27:                    ## true branch
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
                        ## string56 holds "new Closure))"
                        movq $string56, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl l29
l29:                    ## end of if conditional
                        movq %r12, %r13
.globl Lambda.gen_code.end
Lambda.gen_code.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda.init
Lambda.init:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field arg (Variable)
                        ## self[4] holds field body (Expr)
                        ## fp[4] holds argument a (Variable)
                        ## fp[3] holds argument b (Expr)
                        ## method body begins
                        ## a
                        movq 32(%rbp), %r13
                        movq %r13, 24(%r12)
                        ## b
                        movq 24(%rbp), %r13
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl Lambda.init.end
Lambda.init.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda.apply
Lambda.apply:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field arg (Variable)
                        ## self[4] holds field body (Expr)
                        ## fp[3] holds argument actual (Expr)
                        ## method body begins
                        ## body.substitute(...)
                        pushq %r12
                        pushq %rbp
                        ## arg
                        movq 24(%r12), %r13
                        pushq %r13
                        ## actual
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## body
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l30
                        movq $string57, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l30
l30:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up substitute() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl Lambda.apply.end
Lambda.apply.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Lambda.gen_closure_code
Lambda.gen_closure_code:## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field arg (Variable)
                        ## self[4] holds field body (Expr)
                        ## fp[5] holds argument n (Int)
                        ## fp[4] holds argument env (VarList)
                        ## fp[3] holds argument closures (LambdaListRef)
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
                        ## string58 holds "class Closure"
                        movq $string58, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
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
                        ## n
                        movq 40(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
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
                        ## string59 holds " inherits Closure {\..."
                        movq $string59, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string60 holds "  apply(y : EvalObje..."
                        movq $string60, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string61 holds "    { out_string(\"A..."
                        movq $string61, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
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
                        ## n
                        movq 40(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
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
                        ## string62 holds "\\n\");\n"
                        movq $string62, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string63 holds "      x <- y;\n"
                        movq $string63, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## body.gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## env.add(...)
                        pushq %r12
                        pushq %rbp
                        ## arg
                        movq 24(%r12), %r13
                        pushq %r13
                        ## env
                        movq 32(%rbp), %r13
                        cmpq $0, %r13
			jne l31
                        movq $string64, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l31
l31:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarList
                        movq 16(%r13), %r14
                        ## look up add() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## closures
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## body
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l32
                        movq $string64, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l32
l32:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up gen_code() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $24, %rsp
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
                        ## string65 holds ";}};\n"
                        movq $string65, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string66 holds "};\n"
                        movq $string66, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Lambda
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl Lambda.gen_closure_code.end
Lambda.gen_closure_code.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList.isNil
LambdaList.isNil:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
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
.globl LambdaList.isNil.end
LambdaList.isNil.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList.headE
LambdaList.headE:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type LambdaList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## new VarList
                        pushq %rbp
                        pushq %r12
                        movq $VarList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl LambdaList.headE.end
LambdaList.headE.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList.headC
LambdaList.headC:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type LambdaList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## new Lambda
                        pushq %rbp
                        pushq %r12
                        movq $Lambda..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl LambdaList.headC.end
LambdaList.headC.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList.headN
LambdaList.headN:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type LambdaList
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
.globl LambdaList.headN.end
LambdaList.headN.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList.tail
LambdaList.tail:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type LambdaList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## new LambdaList
                        pushq %rbp
                        pushq %r12
                        movq $LambdaList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl LambdaList.tail.end
LambdaList.tail.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaList.add
LambdaList.add:         ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[5] holds argument e (VarList)
                        ## fp[4] holds argument x (Lambda)
                        ## fp[3] holds argument n (Int)
                        ## method body begins
                        ## new LambdaListNE.init(...)
                        pushq %r12
                        pushq %rbp
                        ## e
                        movq 40(%rbp), %r13
                        pushq %r13
                        ## x
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## n
                        movq 24(%rbp), %r13
                        pushq %r13
                        movq %r12, %r13
                        pushq %r13
                        ## new LambdaListNE
                        pushq %rbp
                        pushq %r12
                        movq $LambdaListNE..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        cmpq $0, %r13
			jne l33
                        movq $string67, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l33
l33:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListNE
                        movq 16(%r13), %r14
                        ## look up init() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $40, %rsp
                        popq %rbp
                        popq %r12
.globl LambdaList.add.end
LambdaList.add.end:     ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE.isNil
LambdaListNE.isNil:     ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field lam (Lambda)
                        ## self[4] holds field num (Int)
                        ## self[5] holds field env (VarList)
                        ## self[6] holds field rest (LambdaList)
                        ## method body begins
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl LambdaListNE.isNil.end
LambdaListNE.isNil.end: ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE.headE
LambdaListNE.headE:     ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field lam (Lambda)
                        ## self[4] holds field num (Int)
                        ## self[5] holds field env (VarList)
                        ## self[6] holds field rest (LambdaList)
                        ## method body begins
                        ## env
                        movq 40(%r12), %r13
.globl LambdaListNE.headE.end
LambdaListNE.headE.end: ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE.headC
LambdaListNE.headC:     ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field lam (Lambda)
                        ## self[4] holds field num (Int)
                        ## self[5] holds field env (VarList)
                        ## self[6] holds field rest (LambdaList)
                        ## method body begins
                        ## lam
                        movq 24(%r12), %r13
.globl LambdaListNE.headC.end
LambdaListNE.headC.end: ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE.headN
LambdaListNE.headN:     ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field lam (Lambda)
                        ## self[4] holds field num (Int)
                        ## self[5] holds field env (VarList)
                        ## self[6] holds field rest (LambdaList)
                        ## method body begins
                        ## num
                        movq 32(%r12), %r13
.globl LambdaListNE.headN.end
LambdaListNE.headN.end: ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE.tail
LambdaListNE.tail:      ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field lam (Lambda)
                        ## self[4] holds field num (Int)
                        ## self[5] holds field env (VarList)
                        ## self[6] holds field rest (LambdaList)
                        ## method body begins
                        ## rest
                        movq 48(%r12), %r13
.globl LambdaListNE.tail.end
LambdaListNE.tail.end:  ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListNE.init
LambdaListNE.init:      ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field lam (Lambda)
                        ## self[4] holds field num (Int)
                        ## self[5] holds field env (VarList)
                        ## self[6] holds field rest (LambdaList)
                        ## fp[6] holds argument e (VarList)
                        ## fp[5] holds argument l (Lambda)
                        ## fp[4] holds argument n (Int)
                        ## fp[3] holds argument r (LambdaList)
                        ## method body begins
                        ## e
                        movq 48(%rbp), %r13
                        movq %r13, 40(%r12)
                        ## l
                        movq 40(%rbp), %r13
                        movq %r13, 24(%r12)
                        ## n
                        movq 32(%rbp), %r13
                        movq %r13, 32(%r12)
                        ## r
                        movq 24(%rbp), %r13
                        movq %r13, 48(%r12)
                        movq %r12, %r13
.globl LambdaListNE.init.end
LambdaListNE.init.end:  ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef.isNil
LambdaListRef.isNil:    ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field nextNum (Int)
                        ## self[4] holds field l (LambdaList)
                        ## method body begins
                        ## l.isNil(...)
                        pushq %r12
                        pushq %rbp
                        ## l
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l34
                        movq $string68, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l34
l34:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaList
                        movq 16(%r13), %r14
                        ## look up isNil() at offset 5 in vtable
                        movq 40(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl LambdaListRef.isNil.end
LambdaListRef.isNil.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef.headE
LambdaListRef.headE:    ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field nextNum (Int)
                        ## self[4] holds field l (LambdaList)
                        ## method body begins
                        ## l.headE(...)
                        pushq %r12
                        pushq %rbp
                        ## l
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l35
                        movq $string69, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l35
l35:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaList
                        movq 16(%r13), %r14
                        ## look up headE() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl LambdaListRef.headE.end
LambdaListRef.headE.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef.headC
LambdaListRef.headC:    ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field nextNum (Int)
                        ## self[4] holds field l (LambdaList)
                        ## method body begins
                        ## l.headC(...)
                        pushq %r12
                        pushq %rbp
                        ## l
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l36
                        movq $string70, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l36
l36:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaList
                        movq 16(%r13), %r14
                        ## look up headC() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl LambdaListRef.headC.end
LambdaListRef.headC.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef.headN
LambdaListRef.headN:    ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field nextNum (Int)
                        ## self[4] holds field l (LambdaList)
                        ## method body begins
                        ## l.headN(...)
                        pushq %r12
                        pushq %rbp
                        ## l
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l37
                        movq $string71, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l37
l37:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaList
                        movq 16(%r13), %r14
                        ## look up headN() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
.globl LambdaListRef.headN.end
LambdaListRef.headN.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef.reset
LambdaListRef.reset:    ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field nextNum (Int)
                        ## self[4] holds field l (LambdaList)
                        ## method body begins
                        ## new Int
                        pushq %rbp
                        pushq %r12
                        movq $Int..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $0, %r14
                        movq %r14, 24(%r13)
                        movq %r13, 24(%r12)
                        ## new LambdaList
                        pushq %rbp
                        pushq %r12
                        movq $LambdaList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl LambdaListRef.reset.end
LambdaListRef.reset.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef.add
LambdaListRef.add:      ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 2
                        movq $16, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field nextNum (Int)
                        ## self[4] holds field l (LambdaList)
                        ## fp[4] holds argument env (VarList)
                        ## fp[3] holds argument c (Lambda)
                        ## method body begins
                        ## l.add(...)
                        pushq %r12
                        pushq %rbp
                        ## env
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## c
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## nextNum
                        movq 24(%r12), %r13
                        pushq %r13
                        ## l
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l38
                        movq $string72, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l38
l38:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaList
                        movq 16(%r13), %r14
                        ## look up add() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $32, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 32(%r12)
                        ## nextNum
                        movq 24(%r12), %r13
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
                        addq %r14, %r13
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
                        movq %r13, 24(%r12)
                        ## nextNum
                        movq 24(%r12), %r13
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
.globl LambdaListRef.add.end
LambdaListRef.add.end:  ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl LambdaListRef.removeHead
LambdaListRef.removeHead:## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field nextNum (Int)
                        ## self[4] holds field l (LambdaList)
                        ## method body begins
                        ## l.tail(...)
                        pushq %r12
                        pushq %rbp
                        ## l
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l39
                        movq $string73, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l39
l39:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaList
                        movq 16(%r13), %r14
                        ## look up tail() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl LambdaListRef.removeHead.end
LambdaListRef.removeHead.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Term.var
Term.var:               ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 2
                        movq $16, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[3] holds argument x (String)
                        ## method body begins
                        ## fp[0] holds local v (Variable)
                        ## new Variable
                        pushq %rbp
                        pushq %r12
                        movq $Variable..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 0(%rbp)
                        ## v.init(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## v
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l40
                        movq $string74, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l40
l40:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Variable
                        movq 16(%r13), %r14
                        ## look up init() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl Term.var.end
Term.var.end:           ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Term.lam
Term.lam:               ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 2
                        movq $16, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[4] holds argument x (Variable)
                        ## fp[3] holds argument e (Expr)
                        ## method body begins
                        ## fp[0] holds local l (Lambda)
                        ## new Lambda
                        pushq %rbp
                        pushq %r12
                        movq $Lambda..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 0(%rbp)
                        ## l.init(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## e
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## l
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l41
                        movq $string75, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l41
l41:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Lambda
                        movq 16(%r13), %r14
                        ## look up init() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl Term.lam.end
Term.lam.end:           ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Term.app
Term.app:               ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 2
                        movq $16, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[4] holds argument e1 (Expr)
                        ## fp[3] holds argument e2 (Expr)
                        ## method body begins
                        ## fp[0] holds local a (App)
                        ## new App
                        pushq %rbp
                        pushq %r12
                        movq $App..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 0(%rbp)
                        ## a.init(...)
                        pushq %r12
                        pushq %rbp
                        ## e1
                        movq 32(%rbp), %r13
                        pushq %r13
                        ## e2
                        movq 24(%rbp), %r13
                        pushq %r13
                        ## a
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l42
                        movq $string76, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l42
l42:                    pushq %r13
                        ## obtain vtable from object in r1 with static type App
                        movq 16(%r13), %r14
                        ## look up init() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl Term.app.end
Term.app.end:           ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Term.i
Term.i:                 ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 2
                        movq $16, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## fp[0] holds local x (Variable)
                        ## var(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string77 holds "x"
                        movq $string77, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up var() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
                        ## lam(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## x
                        movq 0(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up lam() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl Term.i.end
Term.i.end:             ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Term.k
Term.k:                 ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 3
                        movq $24, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## fp[0] holds local x (Variable)
                        ## var(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string77 holds "x"
                        movq $string77, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up var() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
                        ## fp[-1] holds local y (Variable)
                        ## var(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string78 holds "y"
                        movq $string78, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up var() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        ## lam(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## lam(...)
                        pushq %r12
                        pushq %rbp
                        ## y
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## x
                        movq 0(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up lam() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up lam() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl Term.k.end
Term.k.end:             ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Term.s
Term.s:                 ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 4
                        movq $32, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## fp[0] holds local x (Variable)
                        ## var(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string77 holds "x"
                        movq $string77, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up var() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
                        ## fp[-1] holds local y (Variable)
                        ## var(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string78 holds "y"
                        movq $string78, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up var() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        ## fp[-2] holds local z (Variable)
                        ## var(...)
                        pushq %r12
                        pushq %rbp
                        ## new String
                        pushq %rbp
                        pushq %r12
                        movq $String..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        ## string79 holds "z"
                        movq $string79, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up var() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -16(%rbp)
                        ## lam(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## lam(...)
                        pushq %r12
                        pushq %rbp
                        ## y
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## lam(...)
                        pushq %r12
                        pushq %rbp
                        ## z
                        movq -16(%rbp), %r13
                        pushq %r13
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## z
                        movq -16(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## y
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## z
                        movq -16(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up lam() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up lam() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up lam() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl Term.s.end
Term.s.end:             ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main.beta_reduce
Main.beta_reduce:       ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 5
                        movq $40, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[3] holds argument e (Expr)
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
                        ## string80 holds "beta-reduce: "
                        movq $string80, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## e.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## e
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l43
                        movq $string81, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l43
l43:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## fp[0] holds local done (Bool)
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq %r13, 0(%rbp)
                        ## fp[-1] holds local new_expr (Expr)
                        movq $0, %r13
                        movq %r13, -8(%rbp)
.globl l44
l44:                    ## while conditional check
                        ## done
                        movq 0(%rbp), %r13
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l46
.globl l47
l47:                    ## false branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp l48
.globl l46
l46:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl l48
l48:                    ## end of if conditional
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			je l45
                        ## e.beta(...)
                        pushq %r12
                        pushq %rbp
                        ## e
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l49
                        movq $string82, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l49
l49:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up beta() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        pushq %r12
                        pushq %rbp
                        ## new_expr
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## e
                        movq 24(%rbp), %r13
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l50
.globl l51
l51:                    ## false branch
                        ## new_expr
                        movq -8(%rbp), %r13
                        movq %r13, 24(%rbp)
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
                        ## string83 holds " =>\n"
                        movq $string83, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## e.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## e
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l53
                        movq $string84, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l53
l53:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        jmp l52
.globl l50
l50:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        movq %r13, 0(%rbp)
.globl l52
l52:                    ## end of if conditional
                        jmp l44
.globl l45
l45:                    ## end of while loop
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
                        ## string85 holds "\n"
                        movq $string85, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## e
                        movq 24(%rbp), %r13
.globl Main.beta_reduce.end
Main.beta_reduce.end:   ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main.eval_class
Main.eval_class:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
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
                        ## string86 holds "class EvalObject inh..."
                        movq $string86, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string87 holds "  eval() : EvalObjec..."
                        movq $string87, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string66 holds "};\n"
                        movq $string66, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl Main.eval_class.end
Main.eval_class.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main.closure_class
Main.closure_class:     ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
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
                        ## string88 holds "class Closure inheri..."
                        movq $string88, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string89 holds "  parent : Closure;\..."
                        movq $string89, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string90 holds "  x : EvalObject;\n"
                        movq $string90, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string91 holds "  get_parent() : Clo..."
                        movq $string91, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string92 holds "  get_x() : EvalObje..."
                        movq $string92, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string93 holds "  init(p : Closure) ..."
                        movq $string93, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string94 holds "  apply(y : EvalObje..."
                        movq $string94, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string66 holds "};\n"
                        movq $string66, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl Main.closure_class.end
Main.closure_class.end: ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Main.gen_code
Main.gen_code:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 6
                        movq $48, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[3] holds argument e (Expr)
                        ## method body begins
                        ## fp[0] holds local cl (LambdaListRef)
                        ## new LambdaListRef.reset(...)
                        pushq %r12
                        pushq %rbp
                        ## new LambdaListRef
                        pushq %rbp
                        pushq %r12
                        movq $LambdaListRef..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        cmpq $0, %r13
			jne l54
                        movq $string95, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l54
l54:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListRef
                        movq 16(%r13), %r14
                        ## look up reset() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
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
                        ## string96 holds "Generating code for "
                        movq $string96, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## e.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## e
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l55
                        movq $string97, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l55
l55:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string98 holds "\n------------------..."
                        movq $string98, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string99 holds "(*Generated by lam.c..."
                        movq $string99, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## eval_class(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up eval_class() at offset 16 in vtable
                        movq 128(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## closure_class(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up closure_class() at offset 17 in vtable
                        movq 136(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string100 holds "class Main {\n"
                        movq $string100, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
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
                        ## string101 holds "  main() : EvalObjec..."
                        movq $string101, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## e.gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## new VarList
                        pushq %rbp
                        pushq %r12
                        movq $VarList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        pushq %r13
                        ## cl
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## e
                        movq 24(%rbp), %r13
                        cmpq $0, %r13
			jne l56
                        movq $string102, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l56
l56:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up gen_code() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $24, %rsp
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
                        ## string103 holds "\n};\n};\n"
                        movq $string103, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl l57
l57:                    ## while conditional check
                        ## cl.isNil(...)
                        pushq %r12
                        pushq %rbp
                        ## cl
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l59
                        movq $string104, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l59
l59:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListRef
                        movq 16(%r13), %r14
                        ## look up isNil() at offset 5 in vtable
                        movq 40(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l60
.globl l61
l61:                    ## false branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp l62
.globl l60
l60:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl l62
l62:                    ## end of if conditional
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			je l58
                        ## fp[-1] holds local e (VarList)
                        ## cl.headE(...)
                        pushq %r12
                        pushq %rbp
                        ## cl
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l63
                        movq $string105, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l63
l63:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListRef
                        movq 16(%r13), %r14
                        ## look up headE() at offset 6 in vtable
                        movq 48(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -8(%rbp)
                        ## fp[-2] holds local c (Lambda)
                        ## cl.headC(...)
                        pushq %r12
                        pushq %rbp
                        ## cl
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l64
                        movq $string106, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l64
l64:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListRef
                        movq 16(%r13), %r14
                        ## look up headC() at offset 7 in vtable
                        movq 56(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -16(%rbp)
                        ## fp[-3] holds local n (Int)
                        ## cl.headN(...)
                        pushq %r12
                        pushq %rbp
                        ## cl
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l65
                        movq $string107, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l65
l65:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListRef
                        movq 16(%r13), %r14
                        ## look up headN() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, -24(%rbp)
                        ## cl.removeHead(...)
                        pushq %r12
                        pushq %rbp
                        ## cl
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l66
                        movq $string108, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l66
l66:                    pushq %r13
                        ## obtain vtable from object in r1 with static type LambdaListRef
                        movq 16(%r13), %r14
                        ## look up removeHead() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## c.gen_closure_code(...)
                        pushq %r12
                        pushq %rbp
                        ## n
                        movq -24(%rbp), %r13
                        pushq %r13
                        ## e
                        movq -8(%rbp), %r13
                        pushq %r13
                        ## cl
                        movq 0(%rbp), %r13
                        pushq %r13
                        ## c
                        movq -16(%rbp), %r13
                        cmpq $0, %r13
			jne l67
                        movq $string109, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l67
l67:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Lambda
                        movq 16(%r13), %r14
                        ## look up gen_closure_code() at offset 15 in vtable
                        movq 120(%r14), %r14
                        call *%r14
                        addq $32, %rsp
                        popq %rbp
                        popq %r12
                        jmp l57
.globl l58
l58:                    ## end of while loop
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
                        ## string98 holds "\n------------------..."
                        movq $string98, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl Main.gen_code.end
Main.gen_code.end:      ## method body ends
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
                        ## method body begins
                        ## i(...).print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        cmpq $0, %r13
			jne l68
                        movq $string110, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l68
l68:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string85 holds "\n"
                        movq $string85, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## k(...).print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        cmpq $0, %r13
			jne l69
                        movq $string111, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l69
l69:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string85 holds "\n"
                        movq $string85, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## s(...).print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        cmpq $0, %r13
			jne l70
                        movq $string112, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l70
l70:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Expr
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string85 holds "\n"
                        movq $string85, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## beta_reduce(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up beta_reduce() at offset 15 in vtable
                        movq 120(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## beta_reduce(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up beta_reduce() at offset 15 in vtable
                        movq 120(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up gen_code() at offset 18 in vtable
                        movq 144(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up gen_code() at offset 18 in vtable
                        movq 144(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up gen_code() at offset 18 in vtable
                        movq 144(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## gen_code(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## i(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up i() at offset 12 in vtable
                        movq 96(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## k(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up k() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## app(...)
                        pushq %r12
                        pushq %rbp
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        ## s(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up s() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up app() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Main
                        movq 16(%r12), %r14
                        ## look up gen_code() at offset 18 in vtable
                        movq 144(%r14), %r14
                        call *%r14
                        addq $16, %rsp
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
			jne l71
                        movq $string113, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l71
l71:                    movq %r13, 24(%r15)
                        movq %r15, %r13
.globl String.substr.end
String.substr.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarList.isNil
VarList.isNil:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
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
.globl VarList.isNil.end
VarList.isNil.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarList.head
VarList.head:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type VarList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## new Variable
                        pushq %rbp
                        pushq %r12
                        movq $Variable..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl VarList.head.end
VarList.head.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarList.tail
VarList.tail:           ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## method body begins
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type VarList
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        ## new VarList
                        pushq %rbp
                        pushq %r12
                        movq $VarList..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl VarList.tail.end
VarList.tail.end:       ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarList.add
VarList.add:            ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## fp[3] holds argument x (Variable)
                        ## method body begins
                        ## new VarListNE.init(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 24(%rbp), %r13
                        pushq %r13
                        movq %r12, %r13
                        pushq %r13
                        ## new VarListNE
                        pushq %rbp
                        pushq %r12
                        movq $VarListNE..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        cmpq $0, %r13
			jne l72
                        movq $string114, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l72
l72:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarListNE
                        movq 16(%r13), %r14
                        ## look up init() at offset 14 in vtable
                        movq 112(%r14), %r14
                        call *%r14
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
.globl VarList.add.end
VarList.add.end:        ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarList.print
VarList.print:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
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
                        ## string85 holds "\n"
                        movq $string85, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type VarList
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl VarList.print.end
VarList.print.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarListNE.isNil
VarListNE.isNil:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field x (Variable)
                        ## self[4] holds field rest (VarList)
                        ## method body begins
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl VarListNE.isNil.end
VarListNE.isNil.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarListNE.head
VarListNE.head:         ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field x (Variable)
                        ## self[4] holds field rest (VarList)
                        ## method body begins
                        ## x
                        movq 24(%r12), %r13
.globl VarListNE.head.end
VarListNE.head.end:     ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarListNE.tail
VarListNE.tail:         ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field x (Variable)
                        ## self[4] holds field rest (VarList)
                        ## method body begins
                        ## rest
                        movq 32(%r12), %r13
.globl VarListNE.tail.end
VarListNE.tail.end:     ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarListNE.print
VarListNE.print:        ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field x (Variable)
                        ## self[4] holds field rest (VarList)
                        ## method body begins
                        ## x.print_self(...)
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 24(%r12), %r13
                        cmpq $0, %r13
			jne l73
                        movq $string115, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l73
l73:                    pushq %r13
                        ## obtain vtable from object in r1 with static type Variable
                        movq 16(%r13), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string116 holds " "
                        movq $string116, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type VarListNE
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## rest.print(...)
                        pushq %r12
                        pushq %rbp
                        ## rest
                        movq 32(%r12), %r13
                        cmpq $0, %r13
			jne l74
                        movq $string117, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l74
l74:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarList
                        movq 16(%r13), %r14
                        ## look up print() at offset 13 in vtable
                        movq 104(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl VarListNE.print.end
VarListNE.print.end:    ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl VarListNE.init
VarListNE.init:         ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field x (Variable)
                        ## self[4] holds field rest (VarList)
                        ## fp[4] holds argument y (Variable)
                        ## fp[3] holds argument r (VarList)
                        ## method body begins
                        ## y
                        movq 32(%rbp), %r13
                        movq %r13, 24(%r12)
                        ## r
                        movq 24(%rbp), %r13
                        movq %r13, 32(%r12)
                        movq %r12, %r13
.globl VarListNE.init.end
VarListNE.init.end:     ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Variable.print_self
Variable.print_self:    ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field name (String)
                        ## method body begins
                        ## out_string(...)
                        pushq %r12
                        pushq %rbp
                        ## name
                        movq 24(%r12), %r13
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Variable
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
.globl Variable.print_self.end
Variable.print_self.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Variable.beta
Variable.beta:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field name (String)
                        ## method body begins
                        movq %r12, %r13
.globl Variable.beta.end
Variable.beta.end:      ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Variable.substitute
Variable.substitute:    ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 2
                        movq $16, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field name (String)
                        ## fp[4] holds argument x (Variable)
                        ## fp[3] holds argument e (Expr)
                        ## method body begins
                        pushq %r12
                        pushq %rbp
                        ## x
                        movq 32(%rbp), %r13
                        pushq %r13
                        movq %r12, %r13
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l75
.globl l76
l76:                    ## false branch
                        movq %r12, %r13
                        jmp l77
.globl l75
l75:                    ## true branch
                        ## e
                        movq 24(%rbp), %r13
.globl l77
l77:                    ## end of if conditional
.globl Variable.substitute.end
Variable.substitute.end:## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Variable.gen_code
Variable.gen_code:      ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 3
                        movq $24, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field name (String)
                        ## fp[4] holds argument env (VarList)
                        ## fp[3] holds argument closures (LambdaListRef)
                        ## method body begins
                        ## fp[0] holds local cur_env (VarList)
                        ## env
                        movq 32(%rbp), %r13
                        movq %r13, 0(%rbp)
.globl l78
l78:                    ## while conditional check
                        ## cur_env.isNil(...)
                        pushq %r12
                        pushq %rbp
                        ## cur_env
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l80
                        movq $string118, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l80
l80:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarList
                        movq 16(%r13), %r14
                        ## look up isNil() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l81
.globl l82
l82:                    ## false branch
                        pushq %r12
                        pushq %rbp
                        ## cur_env.head(...)
                        pushq %r12
                        pushq %rbp
                        ## cur_env
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l84
                        movq $string119, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l84
l84:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarList
                        movq 16(%r13), %r14
                        ## look up head() at offset 10 in vtable
                        movq 80(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        pushq %r13
                        movq %r12, %r13
                        pushq %r13
                        pushq %r12
                        call eq_handler
                        addq $24, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l85
.globl l86
l86:                    ## false branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
                        movq $1, %r14
                        movq %r14, 24(%r13)
                        jmp l87
.globl l85
l85:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl l87
l87:                    ## end of if conditional
                        jmp l83
.globl l81
l81:                    ## true branch
                        ## new Bool
                        pushq %rbp
                        pushq %r12
                        movq $Bool..new, %r14
                        call *%r14
                        popq %r12
                        popq %rbp
.globl l83
l83:                    ## end of if conditional
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			je l79
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
                        ## string120 holds "get_parent()."
                        movq $string120, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Variable
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## cur_env.tail(...)
                        pushq %r12
                        pushq %rbp
                        ## cur_env
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l88
                        movq $string121, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l88
l88:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarList
                        movq 16(%r13), %r14
                        ## look up tail() at offset 11 in vtable
                        movq 88(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r13, 0(%rbp)
                        jmp l78
.globl l79
l79:                    ## end of while loop
                        ## cur_env.isNil(...)
                        pushq %r12
                        pushq %rbp
                        ## cur_env
                        movq 0(%rbp), %r13
                        cmpq $0, %r13
			jne l89
                        movq $string122, %r13
                        movq %r13, %rdi
			call cooloutstr
                        movl $0, %edi
			call exit
.globl l89
l89:                    pushq %r13
                        ## obtain vtable from object in r1 with static type VarList
                        movq 16(%r13), %r14
                        ## look up isNil() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq 24(%r13), %r13
                        cmpq $0, %r13
			jne l90
.globl l91
l91:                    ## false branch
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
                        ## string123 holds "get_x()"
                        movq $string123, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Variable
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        jmp l92
.globl l90
l90:                    ## true branch
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
                        ## string124 holds "Error:  free occurre..."
                        movq $string124, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Variable
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## print_self(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Variable
                        movq 16(%r12), %r14
                        ## look up print_self() at offset 9 in vtable
                        movq 72(%r14), %r14
                        call *%r14
                        addq $8, %rsp
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
                        ## string85 holds "\n"
                        movq $string85, %r14
                        movq %r14, 24(%r13)
                        pushq %r13
                        pushq %r12
                        ## obtain vtable for self object of type Variable
                        movq 16(%r12), %r14
                        ## look up out_string() at offset 8 in vtable
                        movq 64(%r14), %r14
                        call *%r14
                        addq $16, %rsp
                        popq %rbp
                        popq %r12
                        ## abort(...)
                        pushq %r12
                        pushq %rbp
                        pushq %r12
                        ## obtain vtable for self object of type Variable
                        movq 16(%r12), %r14
                        ## look up abort() at offset 2 in vtable
                        movq 16(%r14), %r14
                        call *%r14
                        addq $8, %rsp
                        popq %rbp
                        popq %r12
                        movq %r12, %r13
.globl l92
l92:                    ## end of if conditional
.globl Variable.gen_code.end
Variable.gen_code.end:  ## method body ends
                        ## return address handling
                        movq %rbp, %rsp
                        popq %rbp
                        ret
                        ## ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
.globl Variable.init
Variable.init:          ## method definition
                        pushq %rbp
                        movq %rsp, %rbp
                        movq 16(%rbp), %r12
                        ## stack room for temporaries: 1
                        movq $8, %r14
                        subq %r14, %rsp
                        ## return address handling
                        ## self[3] holds field name (String)
                        ## fp[3] holds argument n (String)
                        ## method body begins
                        ## n
                        movq 24(%rbp), %r13
                        movq %r13, 24(%r12)
                        movq %r12, %r13
.globl Variable.init.end
Variable.init.end:      ## method body ends
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
string1:                # "App"
.byte  65 # 'A'
.byte 112 # 'p'
.byte 112 # 'p'
.byte 0

.globl string2
string2:                # "Bool"
.byte  66 # 'B'
.byte 111 # 'o'
.byte 111 # 'o'
.byte 108 # 'l'
.byte 0

.globl string3
string3:                # "Expr"
.byte  69 # 'E'
.byte 120 # 'x'
.byte 112 # 'p'
.byte 114 # 'r'
.byte 0

.globl string4
string4:                # "IO"
.byte  73 # 'I'
.byte  79 # 'O'
.byte 0

.globl string5
string5:                # "Int"
.byte  73 # 'I'
.byte 110 # 'n'
.byte 116 # 't'
.byte 0

.globl string6
string6:                # "Lambda"
.byte  76 # 'L'
.byte  97 # 'a'
.byte 109 # 'm'
.byte  98 # 'b'
.byte 100 # 'd'
.byte  97 # 'a'
.byte 0

.globl string7
string7:                # "LambdaList"
.byte  76 # 'L'
.byte  97 # 'a'
.byte 109 # 'm'
.byte  98 # 'b'
.byte 100 # 'd'
.byte  97 # 'a'
.byte  76 # 'L'
.byte 105 # 'i'
.byte 115 # 's'
.byte 116 # 't'
.byte 0

.globl string8
string8:                # "LambdaListNE"
.byte  76 # 'L'
.byte  97 # 'a'
.byte 109 # 'm'
.byte  98 # 'b'
.byte 100 # 'd'
.byte  97 # 'a'
.byte  76 # 'L'
.byte 105 # 'i'
.byte 115 # 's'
.byte 116 # 't'
.byte  78 # 'N'
.byte  69 # 'E'
.byte 0

.globl string9
string9:                # "LambdaListRef"
.byte  76 # 'L'
.byte  97 # 'a'
.byte 109 # 'm'
.byte  98 # 'b'
.byte 100 # 'd'
.byte  97 # 'a'
.byte  76 # 'L'
.byte 105 # 'i'
.byte 115 # 's'
.byte 116 # 't'
.byte  82 # 'R'
.byte 101 # 'e'
.byte 102 # 'f'
.byte 0

.globl string10
string10:               # "Main"
.byte  77 # 'M'
.byte  97 # 'a'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 0

.globl string11
string11:               # "Object"
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
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
string13:               # "Term"
.byte  84 # 'T'
.byte 101 # 'e'
.byte 114 # 'r'
.byte 109 # 'm'
.byte 0

.globl string14
string14:               # "VarList"
.byte  86 # 'V'
.byte  97 # 'a'
.byte 114 # 'r'
.byte  76 # 'L'
.byte 105 # 'i'
.byte 115 # 's'
.byte 116 # 't'
.byte 0

.globl string15
string15:               # "VarListNE"
.byte  86 # 'V'
.byte  97 # 'a'
.byte 114 # 'r'
.byte  76 # 'L'
.byte 105 # 'i'
.byte 115 # 's'
.byte 116 # 't'
.byte  78 # 'N'
.byte  69 # 'E'
.byte 0

.globl string16
string16:               # "Variable"
.byte  86 # 'V'
.byte  97 # 'a'
.byte 114 # 'r'
.byte 105 # 'i'
.byte  97 # 'a'
.byte  98 # 'b'
.byte 108 # 'l'
.byte 101 # 'e'
.byte 0

.globl string17
string17:               # "abort\\n"
.byte  97 # 'a'
.byte  98 # 'b'
.byte 111 # 'o'
.byte 114 # 'r'
.byte 116 # 't'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string18
string18:               # "(("
.byte  40 # '('
.byte  40 # '('
.byte 0

.globl string19
string19:               # "ERROR: 289: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  56 # '8'
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

.globl string20
string20:               # ")@("
.byte  41 # ')'
.byte  64 # '@'
.byte  40 # '('
.byte 0

.globl string21
string21:               # "ERROR: 291: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  57 # '9'
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

.globl string22
string22:               # "))"
.byte  41 # ')'
.byte  41 # ')'
.byte 0

.globl string23
string23:               # "ERROR: 298: Exception: case without matching branch\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  57 # '9'
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
.byte  99 # 'c'
.byte  97 # 'a'
.byte 115 # 's'
.byte 101 # 'e'
.byte  32 # ' '
.byte 119 # 'w'
.byte 105 # 'i'
.byte 116 # 't'
.byte 104 # 'h'
.byte 111 # 'o'
.byte 117 # 'u'
.byte 116 # 't'
.byte  32 # ' '
.byte 109 # 'm'
.byte  97 # 'a'
.byte 116 # 't'
.byte  99 # 'c'
.byte 104 # 'h'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 103 # 'g'
.byte  32 # ' '
.byte  98 # 'b'
.byte 114 # 'r'
.byte  97 # 'a'
.byte 110 # 'n'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string24
string24:               # "ERROR: 298: Exception: case on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  57 # '9'
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
.byte  99 # 'c'
.byte  97 # 'a'
.byte 115 # 's'
.byte 101 # 'e'
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

.globl string25
string25:               # "ERROR: 299: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  57 # '9'
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

.globl string26
string26:               # "ERROR: 301: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  48 # '0'
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

.globl string27
string27:               # "ERROR: 303: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  48 # '0'
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

.globl string28
string28:               # "ERROR: 308: Exception: dispatch on void\\n"
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

.globl string29
string29:               # "ERROR: 309: Exception: dispatch on void\\n"
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

.globl string30
string30:               # "ERROR: 311: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  49 # '1'
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

.globl string31
string31:               # "(let x : EvalObject <- "
.byte  40 # '('
.byte 108 # 'l'
.byte 101 # 'e'
.byte 116 # 't'
.byte  32 # ' '
.byte 120 # 'x'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte  60 # '<'
.byte  45 # '-'
.byte  32 # ' '
.byte 0

.globl string32
string32:               # "ERROR: 317: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  49 # '1'
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

.globl string33
string33:               # ",\\n"
.byte  44 # ','
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string34
string34:               # "     y : EvalObject <- "
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte 121 # 'y'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte  60 # '<'
.byte  45 # '-'
.byte  32 # ' '
.byte 0

.globl string35
string35:               # "ERROR: 320: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  50 # '2'
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
string36:               # " in\\n"
.byte  32 # ' '
.byte 105 # 'i'
.byte 110 # 'n'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string37
string37:               # "  case x of\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte  99 # 'c'
.byte  97 # 'a'
.byte 115 # 's'
.byte 101 # 'e'
.byte  32 # ' '
.byte 120 # 'x'
.byte  32 # ' '
.byte 111 # 'o'
.byte 102 # 'f'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string38
string38:               # "    c : Closure => c.apply(y);\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  99 # 'c'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte  61 # '='
.byte  62 # '>'
.byte  32 # ' '
.byte  99 # 'c'
.byte  46 # '.'
.byte  97 # 'a'
.byte 112 # 'p'
.byte 112 # 'p'
.byte 108 # 'l'
.byte 121 # 'y'
.byte  40 # '('
.byte 121 # 'y'
.byte  41 # ')'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string39
string39:               # "    o : Object => { abort(); new EvalObject; };\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte 111 # 'o'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte  61 # '='
.byte  62 # '>'
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte  97 # 'a'
.byte  98 # 'b'
.byte 111 # 'o'
.byte 114 # 'r'
.byte 116 # 't'
.byte  40 # '('
.byte  41 # ')'
.byte  59 # ';'
.byte  32 # ' '
.byte 110 # 'n'
.byte 101 # 'e'
.byte 119 # 'w'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  59 # ';'
.byte  32 # ' '
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string40
string40:               # "  esac)"
.byte  32 # ' '
.byte  32 # ' '
.byte 101 # 'e'
.byte 115 # 's'
.byte  97 # 'a'
.byte  99 # 'c'
.byte  41 # ')'
.byte 0

.globl string41
string41:               # "\\nError: Expr is pure virtual; can't print self\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte  69 # 'E'
.byte 114 # 'r'
.byte 114 # 'r'
.byte 111 # 'o'
.byte 114 # 'r'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte 112 # 'p'
.byte 114 # 'r'
.byte  32 # ' '
.byte 105 # 'i'
.byte 115 # 's'
.byte  32 # ' '
.byte 112 # 'p'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 118 # 'v'
.byte 105 # 'i'
.byte 114 # 'r'
.byte 116 # 't'
.byte 117 # 'u'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  59 # ';'
.byte  32 # ' '
.byte  99 # 'c'
.byte  97 # 'a'
.byte 110 # 'n'
.byte  39 # '\''
.byte 116 # 't'
.byte  32 # ' '
.byte 112 # 'p'
.byte 114 # 'r'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 116 # 't'
.byte  32 # ' '
.byte 115 # 's'
.byte 101 # 'e'
.byte 108 # 'l'
.byte 102 # 'f'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string42
string42:               # "\\nError: Expr is pure virtual; can't beta-reduce\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte  69 # 'E'
.byte 114 # 'r'
.byte 114 # 'r'
.byte 111 # 'o'
.byte 114 # 'r'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte 112 # 'p'
.byte 114 # 'r'
.byte  32 # ' '
.byte 105 # 'i'
.byte 115 # 's'
.byte  32 # ' '
.byte 112 # 'p'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 118 # 'v'
.byte 105 # 'i'
.byte 114 # 'r'
.byte 116 # 't'
.byte 117 # 'u'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  59 # ';'
.byte  32 # ' '
.byte  99 # 'c'
.byte  97 # 'a'
.byte 110 # 'n'
.byte  39 # '\''
.byte 116 # 't'
.byte  32 # ' '
.byte  98 # 'b'
.byte 101 # 'e'
.byte 116 # 't'
.byte  97 # 'a'
.byte  45 # '-'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 100 # 'd'
.byte 117 # 'u'
.byte  99 # 'c'
.byte 101 # 'e'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string43
string43:               # "\\nError: Expr is pure virtual; can't substitute\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte  69 # 'E'
.byte 114 # 'r'
.byte 114 # 'r'
.byte 111 # 'o'
.byte 114 # 'r'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte 112 # 'p'
.byte 114 # 'r'
.byte  32 # ' '
.byte 105 # 'i'
.byte 115 # 's'
.byte  32 # ' '
.byte 112 # 'p'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 118 # 'v'
.byte 105 # 'i'
.byte 114 # 'r'
.byte 116 # 't'
.byte 117 # 'u'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  59 # ';'
.byte  32 # ' '
.byte  99 # 'c'
.byte  97 # 'a'
.byte 110 # 'n'
.byte  39 # '\''
.byte 116 # 't'
.byte  32 # ' '
.byte 115 # 's'
.byte 117 # 'u'
.byte  98 # 'b'
.byte 115 # 's'
.byte 116 # 't'
.byte 105 # 'i'
.byte 116 # 't'
.byte 117 # 'u'
.byte 116 # 't'
.byte 101 # 'e'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string44
string44:               # "\\nError: Expr is pure virtual; can't gen_code\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte  69 # 'E'
.byte 114 # 'r'
.byte 114 # 'r'
.byte 111 # 'o'
.byte 114 # 'r'
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 120 # 'x'
.byte 112 # 'p'
.byte 114 # 'r'
.byte  32 # ' '
.byte 105 # 'i'
.byte 115 # 's'
.byte  32 # ' '
.byte 112 # 'p'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 118 # 'v'
.byte 105 # 'i'
.byte 114 # 'r'
.byte 116 # 't'
.byte 117 # 'u'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  59 # ';'
.byte  32 # ' '
.byte  99 # 'c'
.byte  97 # 'a'
.byte 110 # 'n'
.byte  39 # '\''
.byte 116 # 't'
.byte  32 # ' '
.byte 103 # 'g'
.byte 101 # 'e'
.byte 110 # 'n'
.byte  95 # '_'
.byte  99 # 'c'
.byte 111 # 'o'
.byte 100 # 'd'
.byte 101 # 'e'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string45
string45:               # "\\\\"
.byte  92 # '\\'
.byte  92 # '\\'
.byte 0

.globl string46
string46:               # "ERROR: 216: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  49 # '1'
.byte  54 # '6'
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
string47:               # "."
.byte  46 # '.'
.byte 0

.globl string48
string48:               # "ERROR: 218: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  49 # '1'
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

.globl string49
string49:               # "ERROR: 234: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  51 # '3'
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

.globl string50
string50:               # "ERROR: 236: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  51 # '3'
.byte  54 # '6'
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

.globl string51
string51:               # "((new Closure"
.byte  40 # '('
.byte  40 # '('
.byte 110 # 'n'
.byte 101 # 'e'
.byte 119 # 'w'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 0

.globl string52
string52:               # "ERROR: 243: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  52 # '4'
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

.globl string53
string53:               # ").init("
.byte  41 # ')'
.byte  46 # '.'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 105 # 'i'
.byte 116 # 't'
.byte  40 # '('
.byte 0

.globl string54
string54:               # "ERROR: 245: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
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

.globl string55
string55:               # "self))"
.byte 115 # 's'
.byte 101 # 'e'
.byte 108 # 'l'
.byte 102 # 'f'
.byte  41 # ')'
.byte  41 # ')'
.byte 0

.globl string56
string56:               # "new Closure))"
.byte 110 # 'n'
.byte 101 # 'e'
.byte 119 # 'w'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  41 # ')'
.byte  41 # ')'
.byte 0

.globl string57
string57:               # "ERROR: 226: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
.byte  50 # '2'
.byte  54 # '6'
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
string58:               # "class Closure"
.byte  99 # 'c'
.byte 108 # 'l'
.byte  97 # 'a'
.byte 115 # 's'
.byte 115 # 's'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 0

.globl string59
string59:               # " inherits Closure {\\n"
.byte  32 # ' '
.byte 105 # 'i'
.byte 110 # 'n'
.byte 104 # 'h'
.byte 101 # 'e'
.byte 114 # 'r'
.byte 105 # 'i'
.byte 116 # 't'
.byte 115 # 's'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 123 # '{'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string60
string60:               # "  apply(y : EvalObject) : EvalObject {\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte  97 # 'a'
.byte 112 # 'p'
.byte 112 # 'p'
.byte 108 # 'l'
.byte 121 # 'y'
.byte  40 # '('
.byte 121 # 'y'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  41 # ')'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte 123 # '{'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string61
string61:               # "    { out_string(\\\"Applying closure "
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte 111 # 'o'
.byte 117 # 'u'
.byte 116 # 't'
.byte  95 # '_'
.byte 115 # 's'
.byte 116 # 't'
.byte 114 # 'r'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 103 # 'g'
.byte  40 # '('
.byte  92 # '\\'
.byte  34 # '"'
.byte  65 # 'A'
.byte 112 # 'p'
.byte 112 # 'p'
.byte 108 # 'l'
.byte 121 # 'y'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 103 # 'g'
.byte  32 # ' '
.byte  99 # 'c'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 0

.globl string62
string62:               # "\\\\n\\\");\\n"
.byte  92 # '\\'
.byte  92 # '\\'
.byte 110 # 'n'
.byte  92 # '\\'
.byte  34 # '"'
.byte  41 # ')'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string63
string63:               # "      x <- y;\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte  32 # ' '
.byte 120 # 'x'
.byte  32 # ' '
.byte  60 # '<'
.byte  45 # '-'
.byte  32 # ' '
.byte 121 # 'y'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string64
string64:               # "ERROR: 264: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
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

.globl string65
string65:               # ";}};\\n"
.byte  59 # ';'
.byte 125 # '}'
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string66
string66:               # "};\\n"
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string67
string67:               # "ERROR: 51: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  53 # '5'
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

.globl string68
string68:               # "ERROR: 79: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  55 # '7'
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

.globl string69
string69:               # "ERROR: 80: Exception: dispatch on void\\n"
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

.globl string70
string70:               # "ERROR: 81: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  56 # '8'
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

.globl string71
string71:               # "ERROR: 82: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  56 # '8'
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

.globl string72
string72:               # "ERROR: 92: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  57 # '9'
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

.globl string73
string73:               # "ERROR: 99: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  57 # '9'
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

.globl string74
string74:               # "ERROR: 341: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
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

.globl string75
string75:               # "ERROR: 346: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  52 # '4'
.byte  54 # '6'
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

.globl string76
string76:               # "ERROR: 351: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  53 # '5'
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

.globl string77
string77:               # "x"
.byte 120 # 'x'
.byte 0

.globl string78
string78:               # "y"
.byte 121 # 'y'
.byte 0

.globl string79
string79:               # "z"
.byte 122 # 'z'
.byte 0

.globl string80
string80:               # "beta-reduce: "
.byte  98 # 'b'
.byte 101 # 'e'
.byte 116 # 't'
.byte  97 # 'a'
.byte  45 # '-'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 100 # 'd'
.byte 117 # 'u'
.byte  99 # 'c'
.byte 101 # 'e'
.byte  58 # ':'
.byte  32 # ' '
.byte 0

.globl string81
string81:               # "ERROR: 388: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  56 # '8'
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

.globl string82
string82:               # "ERROR: 394: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  57 # '9'
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

.globl string83
string83:               # " =>\\n"
.byte  32 # ' '
.byte  61 # '='
.byte  62 # '>'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string84
string84:               # "ERROR: 401: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  48 # '0'
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

.globl string85
string85:               # "\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string86
string86:               # "class EvalObject inherits IO {\\n"
.byte  99 # 'c'
.byte 108 # 'l'
.byte  97 # 'a'
.byte 115 # 's'
.byte 115 # 's'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte 105 # 'i'
.byte 110 # 'n'
.byte 104 # 'h'
.byte 101 # 'e'
.byte 114 # 'r'
.byte 105 # 'i'
.byte 116 # 't'
.byte 115 # 's'
.byte  32 # ' '
.byte  73 # 'I'
.byte  79 # 'O'
.byte  32 # ' '
.byte 123 # '{'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string87
string87:               # "  eval() : EvalObject { { abort(); self; } };\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte 101 # 'e'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  40 # '('
.byte  41 # ')'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte  97 # 'a'
.byte  98 # 'b'
.byte 111 # 'o'
.byte 114 # 'r'
.byte 116 # 't'
.byte  40 # '('
.byte  41 # ')'
.byte  59 # ';'
.byte  32 # ' '
.byte 115 # 's'
.byte 101 # 'e'
.byte 108 # 'l'
.byte 102 # 'f'
.byte  59 # ';'
.byte  32 # ' '
.byte 125 # '}'
.byte  32 # ' '
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string88
string88:               # "class Closure inherits EvalObject {\\n"
.byte  99 # 'c'
.byte 108 # 'l'
.byte  97 # 'a'
.byte 115 # 's'
.byte 115 # 's'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 105 # 'i'
.byte 110 # 'n'
.byte 104 # 'h'
.byte 101 # 'e'
.byte 114 # 'r'
.byte 105 # 'i'
.byte 116 # 't'
.byte 115 # 's'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte 123 # '{'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string89
string89:               # "  parent : Closure;\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte 112 # 'p'
.byte  97 # 'a'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 110 # 'n'
.byte 116 # 't'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string90
string90:               # "  x : EvalObject;\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte 120 # 'x'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string91
string91:               # "  get_parent() : Closure { parent };\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte 103 # 'g'
.byte 101 # 'e'
.byte 116 # 't'
.byte  95 # '_'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 110 # 'n'
.byte 116 # 't'
.byte  40 # '('
.byte  41 # ')'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte 112 # 'p'
.byte  97 # 'a'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 110 # 'n'
.byte 116 # 't'
.byte  32 # ' '
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string92
string92:               # "  get_x() : EvalObject { x };\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte 103 # 'g'
.byte 101 # 'e'
.byte 116 # 't'
.byte  95 # '_'
.byte 120 # 'x'
.byte  40 # '('
.byte  41 # ')'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte 120 # 'x'
.byte  32 # ' '
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string93
string93:               # "  init(p : Closure) : Closure {{ parent <- p; self; }};\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte 105 # 'i'
.byte 110 # 'n'
.byte 105 # 'i'
.byte 116 # 't'
.byte  40 # '('
.byte 112 # 'p'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  41 # ')'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  67 # 'C'
.byte 108 # 'l'
.byte 111 # 'o'
.byte 115 # 's'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  32 # ' '
.byte 123 # '{'
.byte 123 # '{'
.byte  32 # ' '
.byte 112 # 'p'
.byte  97 # 'a'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 110 # 'n'
.byte 116 # 't'
.byte  32 # ' '
.byte  60 # '<'
.byte  45 # '-'
.byte  32 # ' '
.byte 112 # 'p'
.byte  59 # ';'
.byte  32 # ' '
.byte 115 # 's'
.byte 101 # 'e'
.byte 108 # 'l'
.byte 102 # 'f'
.byte  59 # ';'
.byte  32 # ' '
.byte 125 # '}'
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string94
string94:               # "  apply(y : EvalObject) : EvalObject { { abort(); self; } };\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte  97 # 'a'
.byte 112 # 'p'
.byte 112 # 'p'
.byte 108 # 'l'
.byte 121 # 'y'
.byte  40 # '('
.byte 121 # 'y'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  41 # ')'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte 123 # '{'
.byte  32 # ' '
.byte  97 # 'a'
.byte  98 # 'b'
.byte 111 # 'o'
.byte 114 # 'r'
.byte 116 # 't'
.byte  40 # '('
.byte  41 # ')'
.byte  59 # ';'
.byte  32 # ' '
.byte 115 # 's'
.byte 101 # 'e'
.byte 108 # 'l'
.byte 102 # 'f'
.byte  59 # ';'
.byte  32 # ' '
.byte 125 # '}'
.byte  32 # ' '
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string95
string95:               # "ERROR: 434: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  51 # '3'
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

.globl string96
string96:               # "Generating code for "
.byte  71 # 'G'
.byte 101 # 'e'
.byte 110 # 'n'
.byte 101 # 'e'
.byte 114 # 'r'
.byte  97 # 'a'
.byte 116 # 't'
.byte 105 # 'i'
.byte 110 # 'n'
.byte 103 # 'g'
.byte  32 # ' '
.byte  99 # 'c'
.byte 111 # 'o'
.byte 100 # 'd'
.byte 101 # 'e'
.byte  32 # ' '
.byte 102 # 'f'
.byte 111 # 'o'
.byte 114 # 'r'
.byte  32 # ' '
.byte 0

.globl string97
string97:               # "ERROR: 437: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  51 # '3'
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

.globl string98
string98:               # "\\n------------------cut here------------------\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  99 # 'c'
.byte 117 # 'u'
.byte 116 # 't'
.byte  32 # ' '
.byte 104 # 'h'
.byte 101 # 'e'
.byte 114 # 'r'
.byte 101 # 'e'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  45 # '-'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string99
string99:               # "(*Generated by lam.cl (Jeff Foster, March 2000)*)\\n"
.byte  40 # '('
.byte  42 # '*'
.byte  71 # 'G'
.byte 101 # 'e'
.byte 110 # 'n'
.byte 101 # 'e'
.byte 114 # 'r'
.byte  97 # 'a'
.byte 116 # 't'
.byte 101 # 'e'
.byte 100 # 'd'
.byte  32 # ' '
.byte  98 # 'b'
.byte 121 # 'y'
.byte  32 # ' '
.byte 108 # 'l'
.byte  97 # 'a'
.byte 109 # 'm'
.byte  46 # '.'
.byte  99 # 'c'
.byte 108 # 'l'
.byte  32 # ' '
.byte  40 # '('
.byte  74 # 'J'
.byte 101 # 'e'
.byte 102 # 'f'
.byte 102 # 'f'
.byte  32 # ' '
.byte  70 # 'F'
.byte 111 # 'o'
.byte 115 # 's'
.byte 116 # 't'
.byte 101 # 'e'
.byte 114 # 'r'
.byte  44 # ','
.byte  32 # ' '
.byte  77 # 'M'
.byte  97 # 'a'
.byte 114 # 'r'
.byte  99 # 'c'
.byte 104 # 'h'
.byte  32 # ' '
.byte  50 # '2'
.byte  48 # '0'
.byte  48 # '0'
.byte  48 # '0'
.byte  41 # ')'
.byte  42 # '*'
.byte  41 # ')'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string100
string100:              # "class Main {\\n"
.byte  99 # 'c'
.byte 108 # 'l'
.byte  97 # 'a'
.byte 115 # 's'
.byte 115 # 's'
.byte  32 # ' '
.byte  77 # 'M'
.byte  97 # 'a'
.byte 105 # 'i'
.byte 110 # 'n'
.byte  32 # ' '
.byte 123 # '{'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string101
string101:              # "  main() : EvalObject {\\n"
.byte  32 # ' '
.byte  32 # ' '
.byte 109 # 'm'
.byte  97 # 'a'
.byte 105 # 'i'
.byte 110 # 'n'
.byte  40 # '('
.byte  41 # ')'
.byte  32 # ' '
.byte  58 # ':'
.byte  32 # ' '
.byte  69 # 'E'
.byte 118 # 'v'
.byte  97 # 'a'
.byte 108 # 'l'
.byte  79 # 'O'
.byte  98 # 'b'
.byte 106 # 'j'
.byte 101 # 'e'
.byte  99 # 'c'
.byte 116 # 't'
.byte  32 # ' '
.byte 123 # '{'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string102
string102:              # "ERROR: 444: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
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

.globl string103
string103:              # "\\n};\\n};\\n"
.byte  92 # '\\'
.byte 110 # 'n'
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 125 # '}'
.byte  59 # ';'
.byte  92 # '\\'
.byte 110 # 'n'
.byte 0

.globl string104
string104:              # "ERROR: 446: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  52 # '4'
.byte  54 # '6'
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

.globl string105
string105:              # "ERROR: 447: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  52 # '4'
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

.globl string106
string106:              # "ERROR: 448: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
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

.globl string107
string107:              # "ERROR: 449: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
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

.globl string108
string108:              # "ERROR: 451: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  53 # '5'
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

.globl string109
string109:              # "ERROR: 452: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  53 # '5'
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

.globl string110
string110:              # "ERROR: 461: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  54 # '6'
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

.globl string111
string111:              # "ERROR: 463: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
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

.globl string112
string112:              # "ERROR: 465: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  52 # '4'
.byte  54 # '6'
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

.globl string113
string113:              # "ERROR: 0: Exception: String.substr out of range\\n"
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

.globl string114
string114:              # "ERROR: 25: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  50 # '2'
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

.globl string115
string115:              # "ERROR: 36: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
.byte  54 # '6'
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

.globl string116
string116:              # " "
.byte  32 # ' '
.byte 0

.globl string117
string117:              # "ERROR: 37: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  51 # '3'
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

.globl string118
string118:              # "ERROR: 175: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  55 # '7'
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

.globl string119
string119:              # "ERROR: 178: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  55 # '7'
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

.globl string120
string120:              # "get_parent()."
.byte 103 # 'g'
.byte 101 # 'e'
.byte 116 # 't'
.byte  95 # '_'
.byte 112 # 'p'
.byte  97 # 'a'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 110 # 'n'
.byte 116 # 't'
.byte  40 # '('
.byte  41 # ')'
.byte  46 # '.'
.byte 0

.globl string121
string121:              # "ERROR: 181: Exception: dispatch on void\\n"
.byte  69 # 'E'
.byte  82 # 'R'
.byte  82 # 'R'
.byte  79 # 'O'
.byte  82 # 'R'
.byte  58 # ':'
.byte  32 # ' '
.byte  49 # '1'
.byte  56 # '8'
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

.globl string122
string122:              # "ERROR: 184: Exception: dispatch on void\\n"
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

.globl string123
string123:              # "get_x()"
.byte 103 # 'g'
.byte 101 # 'e'
.byte 116 # 't'
.byte  95 # '_'
.byte 120 # 'x'
.byte  40 # '('
.byte  41 # ')'
.byte 0

.globl string124
string124:              # "Error:  free occurrence of "
.byte  69 # 'E'
.byte 114 # 'r'
.byte 114 # 'r'
.byte 111 # 'o'
.byte 114 # 'r'
.byte  58 # ':'
.byte  32 # ' '
.byte  32 # ' '
.byte 102 # 'f'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 101 # 'e'
.byte  32 # ' '
.byte 111 # 'o'
.byte  99 # 'c'
.byte  99 # 'c'
.byte 117 # 'u'
.byte 114 # 'r'
.byte 114 # 'r'
.byte 101 # 'e'
.byte 110 # 'n'
.byte  99 # 'c'
.byte 101 # 'e'
.byte  32 # ' '
.byte 111 # 'o'
.byte 102 # 'f'
.byte  32 # ' '
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

