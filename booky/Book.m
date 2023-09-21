//
//  Book.m
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import "Book.h"

@implementation Book

- (instancetype)initWithTitle:(NSString *)title author:(Author *)author{
    self = [super init];
    if(self){
        _title = title;
        _author = author;
    }
    return self;
}

@end
