#include <iostream>
using namespace std;

    int main(){
        int a, b, c,n, hasil1, hasil2, hasil3, hasil4, c2, n2;

        cout << "ax^n * bx * c";
            cout << "\nMasukan nilai a: ";
        cin >> a;
            cout << "Masukan nilai b: ";
        cin >> b;
            cout << "Masukan nilai c: ";
        cin >> c;
            cout << "Masukan nilai pangkat a: ";
        cin >> n;
            cout << "Masukan nilai pangkat b: ";
        cin >> n2;

        cout << "Angka yang anda input adalah: \n" << a << "x^" << n << " + " << b <<"x^" << n2 << " + " << c;

    hasil1 = n*a;
    hasil2 = n-1;
    hasil3 = n2*b;
    hasil4 = n2-1;
    c2 = c-c;


        cout << n << "*" << a << "x^" << n << "-1"  << " + " << n2 << "*" << b << "x^" << n2 << "-1" << " + " << c2;
        cout << "\nJadi, hasilnya :\n" << hasil1 << "x^" << hasil2 << " + " << hasil3 << "x^" << hasil4 << " + " << c2;

        return 0;
    }