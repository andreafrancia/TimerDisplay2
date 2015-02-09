//
//  TimerDisplay2Tests.m
//  TimerDisplay2Tests
//
//  Created by Andrea Francia on 2/9/15.
//  Copyright (c) 2015 Andrea Francia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface TimerDisplay2Tests : XCTestCase

@end

@implementation TimerDisplay2Tests

- (void)testExample {
    XCTAssertEqualObjects(@"00:00", [self formatDuration:0]);
    XCTAssertEqualObjects(@"00:01", [self formatDuration:1]);
    XCTAssertEqualObjects(@"00:10", [self formatDuration:10]);
    XCTAssertEqualObjects(@"00:59", [self formatDuration:59]);
    XCTAssertEqualObjects(@"01:00", [self formatDuration:60]);
    XCTAssertEqualObjects(@"60:00", [self formatDuration:60*60]);
}

-(NSString*)formatDuration:(NSTimeInterval)duration
{
    NSInteger minutes = (NSInteger)duration / 60;
    NSInteger seconds = (NSInteger)duration % 60;
    return [NSString stringWithFormat:@"%02ld:%02ld",
            minutes, seconds];
}

@end
