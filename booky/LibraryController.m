//
//  LibraryController.m
//  booky
//
//  Created by Panashe on 9/21/23.
//

#import "LibraryController.h"
#import "LibraryDAO.h"
#import "Book.h"
#import "Author.h"

@implementation LibraryController

-(void) run{
    LibraryDAO *libraryDao = [LibraryDAO sharedInstance];
    
    Author *author1 = [[Author alloc] initWithName:@"Panashe"];
    Author *author2 = [[Author alloc] initWithName:@"Muriro"];

    
    [libraryDao addBookWithTitle:@"Sheer force of will" author: author1];
    [libraryDao addBookWithTitle:@"Moonlight on the Bayou" author: author2];
    
    NSArray<Book*> *books = [libraryDao getAllBooks];
    
    for (Book *book in books) {
        NSLog(@"Book: %@, written by %@", book.title, book.author.name);
    }
    
    
}
@end
