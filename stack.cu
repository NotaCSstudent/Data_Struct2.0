#include <iostream>
#include <bits/stdc++.h>
using namespace std;
class Stack
{
private:
    int Size;
    int* arr;
public:
    Stack();
    ~Stack();
    void Append(int x);
    void Pop();
    void Destroy();
    void Peek();
    void Show();
};
Stack::Stack() : Size(1)
{
    arr = new int[INT_MAX];
}
Stack::~Stack()
{
    arr = nullptr;
}
void Stack::Append(int x)
{
    arr[Size-1] = x;
    Size++;
}
void Stack::Pop()
{
    arr[Size-1] = -1;
    Size--;
}
void Stack::Destroy()
{
    this->~Stack();
}

void Stack::Peek()
{
    cout << this->arr[Size-1] << endl;
}
void Stack::Show()
{
    cout << '[';
    for(int i=Size-2;i>0;i--)
    {
        cout << this->arr[i] << ',';
    }
    cout << this->arr[0] << ']' << endl;
}

