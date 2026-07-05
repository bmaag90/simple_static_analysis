int f(){
    return 6;
}

int e(){
    return 5;
}

int d(){
    int re = e();
    return re + 4;
}

int c(){
    return 3;
}

int b() {
    int rd = d();
    return rd + 2;
}

int a() {
    int rb = b();
    int rf = f();
    return rb + rf + 1;
}

int main(){
    int r = a();
    return 0;
}