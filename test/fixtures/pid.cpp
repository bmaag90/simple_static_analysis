#include <iostream>

class PIDController {
private:
    double K_p;
    double K_i;
    double K_d;
    double previous_error;
    double integral;

	double get_error(double setpoint, double input){
		return setpoint - input;
	}
	
	void update_integral(double error){
		
		integral += error;
		// clamping
		integral = std::max(-50.0, std::min(50.0, integral));
	}
	
	double get_derivative(double error){
		return error - previous_error;
	}
	
	double get_integral(double error){
		update_integral(error);
		
		return integral;
	}
	

public:
    PIDController(double K_p, double K_i, double K_d) : K_p(K_p), K_i(K_i), K_d(K_d), previous_error(0), integral(0) {}

	double update(double setpoint, double input){
		double current_error = get_error(setpoint, input);
		
		double control = K_p * current_error + K_i * get_integral(current_error) + K_d * get_derivative(current_error);
		
		previous_error = current_error;
		
		return control;
	}
	
	
};

double plant(double control){
	return 4 + 0.9*control;
}

int main() {

	PIDController pid_controller {0.65, 0.25, 0.0}; 

	double setpoint = 12;
	double control = 0;
	double input = plant(control);
	
	for (int i = 0; i < 50; i++) {
		control = pid_controller.update(setpoint, input); 
		
		input = plant(control);
		
		printf("[%d/20] Setpoint = %0.2f; control = %0.2f; plant = %0.2f\n",
			i+1,
			setpoint,
			control,
			input
		);
	}
	return 0;
}
