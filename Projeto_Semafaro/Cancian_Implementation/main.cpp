#include <iostream>
#include <string>

unsigned short time = 0;

void semaphore(std::string &NS, std::string &EW, std::string &P) {
    time ++;
    if (time == 45) {
        NS = "yellow";
    }
    if (time == 50) {
        NS = "red";
    }
    if (time == 55) {
        EW = "green";
    }
    if (time == 100) {
        EW = "yellow";
    }
    if (time == 105) {
        EW = "red";
    }
    if (time == 110) {
        P = "green";
    }
    if (time == 135) {
        P = "red";
    }
    if (time == 140) {
        NS = "green";
        time = 0;
    }
}

void simulate() {
    std::string NS_light = "green", EW_light = "red", P_light = "red";

    for (unsigned int i = 1; i < 290; i++) {
        semaphore(NS_light, EW_light, P_light);
        std::cout << "Pulso " << i << ": " << NS_light << ", " << EW_light << ", " << P_light << std::endl;
    }
}

int main() {
    simulate();
    return 0;
}
