// Loops.py 3
procedure main() returns () {
    var x0, x1: real;
    while (x0-x1>=1.0 && x0 +x1 >= 1.0 && x0 <=10.0) {
        x0, x1 := x1, x1-1.0;
    }
}
