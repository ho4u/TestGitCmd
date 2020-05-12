#include <iostream>
#include <fstream>
#include <cstdlib>

using namespace std;

int main()
{
    srand(time(0));
    ofstream outfile1("folder/file1.txt"),
             outfile2("file2.txt"), 
             outfile3("file3.txt");

    const int num_files = 3;
    ofstream *files[num_files] = {
        &outfile1, &outfile2, &outfile3
    };

    for (int i = 0; i != 10; ++i)
    {
        *(files[ rand() % num_files]) << i << " ";
    }

    return 0;
}