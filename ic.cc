#include <iostream>
#include <math.h>
#define tstudent 1.984984

using namespace std;

int main(){
    double x = 0.89;
    double xh;
    int sum = 0;
    while(cin >> xh){
        sum = sum + (xh -x)*(xh-x);
    }

    double num = (log(4)-x)*(log(4)-x);
    double raiz = 1/98 + num/sum;
    raiz = sqrt(raiz);

    double S = sqrt(0.07628);


    double top = 1.847887 + tstudent * S *raiz;
    double bottom = 1.847887 - tstudent * S *raiz;

    cout << endl;
    cout << bottom << "," << top;
}
