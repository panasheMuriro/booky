//
//  Author.m
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import "Author.h"

@implementation Author

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if(self){
        _name = [name copy];
    }
    return self;
}

@end
