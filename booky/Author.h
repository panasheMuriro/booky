//
//  Author.h
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Author : NSObject

@property (nonatomic, copy) NSString *name;

-(instancetype) initWithName: (NSString *) name;

@end

NS_ASSUME_NONNULL_END
