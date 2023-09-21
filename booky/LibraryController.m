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
#import "LibraryView.h"
@implementation LibraryController

-(void) run{
    LibraryDAO *libraryDao = [LibraryDAO sharedInstance];
    LibraryView *libraryView = [[LibraryView alloc] init];
    
    
    Author *author1 = [[Author alloc] initWithName:@"Panashe"];
    Author *author2 = [[Author alloc] initWithName:@"Muriro"];

    
    [libraryDao addBookWithTitle:@"Sheer force of will" author: author1];
    [libraryDao addBookWithTitle:@"Moonlight on the Bayou" author: author2];
    
    NSArray<Book*> *books = [libraryDao getAllBooks];
    
    for (Book *book in books) {
        [libraryView displayBookTitle:book.title authorName:book.author.name];
    }
    
    
}
@end
