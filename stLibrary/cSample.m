//
//  cSample.m
//  stLibrary
//
//  Created by maliy on 9/10/10.
//  Copyright 2010 interMobile. All rights reserved.
//

#import "cSample.h"


@implementation cSample

#pragma mark lifeCycle

- (void) dealloc
{
	[super dealloc];
}

#pragma mark -

- (void) showMessage:(NSString *) msg
{
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
													message:msg
												   delegate:nil
										  cancelButtonTitle:NSLocalizedString(@"OK", @"")
										  otherButtonTitles: nil];
	[alert show];   
	[alert release];
}


@end
