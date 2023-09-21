//
//  main.m
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import <Foundation/Foundation.h>
#import "LibraryController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        LibraryController *lib = [[LibraryController alloc] init];
        [lib run];
        
    }
    return 0;
}
