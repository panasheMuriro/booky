//
//  Book.h
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import <Foundation/Foundation.h>
#import "Author.h"

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject
@property (nonatomic, copy)NSString *title;
@property (nonatomic, strong) Author *author;

-(instancetype)initWithTitle: (NSString *)title author: (Author *) author;

@end

NS_ASSUME_NONNULL_END
