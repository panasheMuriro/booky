//
//  BookyTests.m
//  BookyTests
//
//  Created by Panashe on 9/21/23.
//

#import <XCTest/XCTest.h>
#import "LibraryDAO.h"
#import "Book.h"
#import "Author.h"

@interface BookyTests : XCTestCase

@end

@implementation BookyTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testAddBook {
    LibraryDAO *dao = [LibraryDAO sharedInstance];
    
    Author *author = [[Author alloc] initWithName:@"Test Author"];
    [dao addBookWithTitle:@"Test Book" author:author];
    
    NSArray<Book *> *books = [dao getAllBooks];
    
    XCTAssertEqual(books.count, 1, @"Expected one book in the library.");
    
    Book *addedBook = books[0];
    XCTAssertEqualObjects(addedBook.title, @"Test Book", @"Unexpected book title.");
    XCTAssertEqualObjects(addedBook.author.name, @"Test Author", @"Unexpected author name.");
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
