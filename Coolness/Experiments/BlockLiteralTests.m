// Copyright (C) 2020 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

void sayHello(void) {
    printf("Hello!\n");
}

void saySomethingNTimes(int count, void (*thingToSay)(void)) {
    for (int i = 0; i < count; i++) {
        thingToSay();
    }
}

void saySomethingWithBlock(int count, void (^blockToExecute)(void)) {
    for (int i = 0; i < count; i++) {
        blockToExecute();
    }
}

@interface BlockLiteralTests : XCTestCase
@property (copy, nonatomic) NSString *text;
@end

@implementation BlockLiteralTests

- (void)setUp {
    self.text = @"stormy";
}

- (void)testCapturingSelf {
    typeof(self) __weak weakSelf = self;
    
    void (^weatherBlock)(void) = ^{
        printf("Today's weather is %s.\n", weakSelf.text.UTF8String);
    };
    
    saySomethingWithBlock(3, weatherBlock);
}

- (void)testCapturingState {
    NSString *weather = @"sunny";
    
    void (^weatherBlock)(void) = ^{
        printf("Today's weather is %s.\n", weather.UTF8String);
    };
    
    weatherBlock();
    NSLog(@"%@", weatherBlock);
    
    weather = @"cloudy";
    
    weatherBlock();
    
//    saySomethingWithBlock(3, ^{
//        printf("Today's weather is %s.\n", weather.UTF8String);
//    });
}

- (void)testBlockLiteralCallback {
    saySomethingWithBlock(3, ^{
        printf("Today's weather is sunny.\n");
    });
}

- (void)testBlockLiteral {
    void (^myBlock)(void);
    
    myBlock = ^(void) {
        printf("Today's weather is sunny.\n");
    };
    
    myBlock();
    
    id copyOfMyBlock = [myBlock copy];
    NSLog(@"%@", copyOfMyBlock);
}

- (void)testFunctionPointer {
    sayHello();
    
    void (*myPtr)(void);
    
    myPtr = sayHello;
    
    myPtr();
}

- (void)testCallbackWithFunctionPointer {
    saySomethingNTimes(3, sayHello);
}


@end
