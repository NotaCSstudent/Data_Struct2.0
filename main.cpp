#include <iostream>
#include "stack.hpp"



int main()
{
    Stack first;
    first.Append(1);
    first.Append(2);
    first.Append(3);
    first.Append(5);
    first.Append(5);
    first.Append(5);
    first.Show();
}