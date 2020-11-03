// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <stdio.h>

void PointerBasics(void) {
//    int foo = 99;
//    int bar = 86;
    int inches = 18;
    int *inchesRef = &inches;
    
    printf("inches is %d, inchesRef is %p\n", *inchesRef, inchesRef);

    *inchesRef += 1;
    
    printf("inches is %d, inchesRef is %p\n", *inchesRef, inchesRef);
    printf("inches is %d, inchesRef is %p\n", *(inchesRef + 1), inchesRef + 1);
    printf("inches is %d, inchesRef is %p\n", *(inchesRef + 2), inchesRef + 2);
}

void ArrayBasics(void) {
    int numbers[10] = { 10, 11, 12, -1, 13 };
    int *myPtr = numbers;
    
    for (int i = 0; i < 10; i++) {
        printf("address is %p, value is %d\n", numbers + i, *(numbers + i));
    }
    
    printf("--------------------\n");
    
    for (; *myPtr != -1; myPtr++) {
        printf("address is %p, value is %d\n", myPtr, *myPtr);
    }
}

void Strings(void) {
    char letters[] = { 'a', 'b', 'c', '\0' };
    char words[] = "abc";
    
    for (int i = 0; i < 4; i++) {
        printf("address is %p, value is %c\n", words + i, *(words + i));
        printf("address is %p, value is %d\n", letters + i, *(letters + i));
    }
    
    printf("letters is %s\n", letters);
}

void Capitalize(char *word) {
    const char delta = 'a' - 'A';
    
    word[0] -= delta;
}

const char Delta = 'a' - 'A';

void Capitalize2(char *word)
{
    static int count;
    
    word[0] -= Delta;
    
    count++;
    printf("count: %d\n", count);
}

void TestCapitalize2(void) {
    char name[] = "bob";
    
    printf("Name is %s\n", name);
    Capitalize2(name);
    printf("Name is %s\n", name);
    Capitalize2(name);
    Capitalize2(name);
}

void TestCapitalize(void) {
    char name[] = "bob";
    
    printf("Name is %s\n", name);
    Capitalize(name);
    printf("Name is %s\n", name);
    
//    char *name2 = "bob";
//    char *name3 = "bob";
//    char name4[] = "bob";
//
//    char *name5 = name;
//    Capitalize(name5);
//
//    Capitalize(name2);
}

int main(int argc, const char * argv[]) {
//    PointerBasics();
//    ArrayBasics();
//    Strings();
    
//    TestCapitalize();
//    TestCapitalize2();

    return 0;
}
