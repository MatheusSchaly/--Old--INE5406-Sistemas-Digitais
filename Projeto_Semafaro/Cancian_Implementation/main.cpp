#include <iostream>
#include <string>

unsigned short time = 0;

void semaphore(std::string &NS, std::string &EW, std::string &P) {
    if (time == 45) {   // after 45 seconds
        NS = "yellow";  // changes north-south traffic light to yellow
    }
    if (time == 50) {   // after 50 seconds
        NS = "red";     // changes north-south traffic light to red
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
    if (time == 140) {  // after 140 seconds
        NS = "green";   // changes north-south traffic light to green
        time = 0;       // resets timer
    }
    time ++;            // increases one second
}

void simulate() {
    std::string NS_light = "green", EW_light = "red", P_light = "red"; // initialization

    for (unsigned int i = 1; i < 290; i++) { // simulates 290 clock pulses
        semaphore(NS_light, EW_light, P_light);
        std::cout << "Pulse " << i << ": " << NS_light << ", " << EW_light << ", " << P_light << std::endl;
    }
}

int main() {
    simulate();
    return 0;
}
