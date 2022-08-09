#include <iostream>
using namespace std;
class Cal
{
private:
    /* data */
public:
    Cal(/* args */) {
        cout << "Cal contor" << endl;
    }
    ~Cal() {
        cout << "Cal ~contor" << endl;
    }
    virtual int cal(int a, int b);
};