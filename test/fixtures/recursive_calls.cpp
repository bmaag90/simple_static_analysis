int fibo(int n){

    if (n <= 1){
        return n; 
    }

    return fibo(n - 1) + fibo(n - 2);
}

int main(){
	
	int r = fibo(10);
	
	return r;
	
}
