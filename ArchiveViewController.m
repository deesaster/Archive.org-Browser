//
//  ArchiveViewController.m
//  BadAssery2
//
//  Created by Denis Smirnov on 11-11-12.
//  Copyright (c) 2011 Leetr.com. All rights reserved.
//

#import "ArchiveViewController.h"

@implementation ArchiveViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)goaction:(id)sender {
    NSString *urlstring = urltext.text;
    if( [[urlstring substringToIndex:7] compare:@"http://" ] != NSOrderedSame ) {
        urlstring = [NSString stringWithFormat:@"http://%@", urlstring];
    }
    NSURL *url = [NSURL URLWithString:urlstring];
    NSURLRequest *urlrequest = [NSURLRequest requestWithURL:url];
    [webview loadRequest:urlrequest];
}

@end
