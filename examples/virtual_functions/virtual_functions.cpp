#include <stdio.h>

class Base {
public:
	Base() {}
	
	virtual void print_my_name(){
		printf("My name is Base\n");
	}
};

class Derived : public Base {
public:
	Derived() {}
	
	void print_my_name() override {
		printf("My name is Base\n");
	}
};

int main(){
	
	Base base = Base();
	base.print_my_name();
	
	Derived derived = Derived();
	derived.print_my_name();

	return 1;
}
