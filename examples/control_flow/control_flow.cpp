

int main(){
	
	int a = 10;
	int b = 20;
	int c = 30;
	
	int r = 0;
	
	for (int i = 0; i < 10; i++){
		switch (i % 3) {
			case 0:
				r += a;
				break;
			case 1:
				b += a;
				r *= b;
				break;
			case 2:
				c = b - a;
				b -= c;
				a += a;
				break;
			default:
				break;			
		}
	}
	
	return 0;
	
}
