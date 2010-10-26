//
//  mainViewController.h
//  mainApp
//
//  Created by maliy on 9/10/10.
//  Copyright 2010 interMobile. All rights reserved.
//

#import "mainViewController.h"
#import "cSample.h"

@implementation mainViewController

#pragma mark lifeCycle

- (id) init
{
	if (self = [super init])
	{
		smpl = [[cSample alloc] init];
	}
	return self;
}

- (void) dealloc
{
	[smpl release];
	
	[super dealloc];
}


#pragma mark -

- (void) btnTouch:(UIButton *) sender
{
	[smpl showMessage:NSLocalizedString(@"This method from static library", @"")];
}


#pragma mark -

- (void) viewDidAppear:(BOOL) animated
{
}

- (void) viewDidDisappear:(BOOL) animated
{
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation
{
	return YES;
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
	[super loadView];
	
	self.navigationItem.title = NSLocalizedString(@"Static Library Test", @"");
	
	CGRect screenRect = [[UIScreen mainScreen] applicationFrame];
	
	UIView *contentView = [[UIView alloc] initWithFrame:screenRect];
	contentView.autoresizesSubviews = YES;
	contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	contentView.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.8];
	
	self.view = contentView;
	[contentView release];

	CGRect rct = self.navigationController.navigationBar.bounds;
	rct.origin.y += 3.0;
	UIButton *_btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	_btn.frame = rct;
	_btn.autoresizingMask = UIViewAutoresizingFlexibleWidth;
	[_btn setTitle:NSLocalizedString(@"Touch to call library class", @"") forState:UIControlStateNormal];
	[_btn addTarget:self action:@selector(btnTouch:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:_btn];

}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
	
}



@end
