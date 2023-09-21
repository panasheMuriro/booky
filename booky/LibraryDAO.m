//
//  LibraryDAO.m
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import "LibraryDAO.h"

@interface LibraryDAO()
@property (nonatomic, strong) NSMutableArray<Book *> *books;
@property (nonatomic, strong) NSMutableArray<Author *> *authors;
@end

@implementation LibraryDAO
+ (instancetype)sharedInstance{
    static LibraryDAO *sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(instancetype) init{
    self = [super init];
    if(self){
        _books = [NSMutableArray array];
        _authors = [NSMutableArray array];
    }
    return self;
}

-(NSArray<Book *>*)getAllBooks{
    return [self.books copy];
}

- (NSArray<Author *> *)getAllAuthors{
    return [self.authors copy];
}

- (void)addBookWithTitle:(NSString *)title author:(Author *)author{
    Book *book = [[Book alloc] initWithTitle:title author:author];
    [self.books addObject:book];
}








@end
