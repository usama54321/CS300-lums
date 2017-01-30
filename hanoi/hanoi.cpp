#include <iostream>
#include <string>
using namespace std;

void hanoi(int n, string col1, string col2, string col3);

int main(int argc, char* argv[]) {

  if (argc < 5) {
      cout << "Enter 4 arguments" << endl;
      return 0;
  }

  int x = atoi(argv[1]);

  hanoi(x, argv[2], argv[3], argv[4]);

  return 0;
}



 //@description takes in an integer for the size of the hanoi tower. Prints the sequence
void hanoi(int n, string col1, string col2, string col3) {

  if(n== 0) {
    return;
  }
  hanoi(n-1, col1, col3, col2);
  cout << col1 << "," << col2 << endl;
  hanoi(n-1, col3, col2, col1);
  return;
}
