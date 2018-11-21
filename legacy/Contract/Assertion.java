//  Assertion.java

public class Assertion {
    public static void require(boolean expr) {
        if (!expr) throw new PreconditionException();
    }
    public static void ensure(boolean expr) {
        if (!expr) throw new PostconditionException();
    }    
}

class PreconditionException extends RuntimeException {
    PreconditionException() {
        super();
    }
}

class PostconditionException extends RuntimeException {
    PostconditionException() {
        super();
    }
}
