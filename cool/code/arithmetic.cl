class Main {
    main() : Object {
        (let a : Arith <- new Arith, x3 : Int in
            x3 <- a.sum()
        )
    };
};

class Arith {
    x1 : Int <- 1;
    x2 : Int <- 2;
    sum() : Int {
        x1 + x2
    };
};
