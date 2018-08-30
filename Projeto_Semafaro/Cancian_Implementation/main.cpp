#include <iostream>

using namespace std;

enum LAMP {
    verde=0x01,
    amarelo=0x02,
    vermelho=0x04
};
unsigned short Intsem1=LAMP::verde, Intsem2=LAMP::vermelho, Intped1=LAMP::vermelho;
unsigned short Intcont=0;
void semaphore(unsigned short* sem1, unsigned short* sem2, unsigned short* ped1) {
    Intcont++;
    if (Intcont==10) {
        Intsem1 = Intsem1<<1;
        Intcont=0;
    }
   *sem1 = Intsem1;
   *sem2 = Intsem2;
   *ped1 = Intped1;
}

void simulate() {
    unsigned short sem1, sem2, ped1;

    for (unsigned int i=0; i< 3e1; i++) {
        semaphore(&sem1, &sem2, &ped1);
        std::cout << "pulso " << i << ": " << sem1 << ", " << sem2 << ", " << ped1 << std::endl;
    }
}

int main()
{
    simulate();
    return 0;
}
