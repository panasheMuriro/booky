//
//  LibraryDAO.h
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Author.h"

NS_ASSUME_NONNULL_BEGIN

@interface LibraryDAO : NSObject
+(instancetype) sharedInstance;
-(NSArray<Book *> *)getAllBooks;
-(NSArray<Author *> *)getAllAuthors;
-(void)addBookWithTitle:(NSString *)title author:(Author *)author;
@end

NS_ASSUME_NONNULL_END
