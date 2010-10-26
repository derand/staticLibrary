//
//  main.m
//  mainApp
//
//  Created by maliy on 9/10/10.
//  Copyright 2010 interMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"mainAppAppDelegate");
    [pool release];
    return retVal;
}
