//  Compteur.java

public class Compteur {
    public void inc(int n) {
        require(n > 0 && count < upper);
        count += n;
        ensure(count == oldCount + n);
        ensure(invariant());
    }
    public boolean invariant() {
        return lower <= count && count <= upper;
    }
}
