//
//  ArchiveViewController.h
//  BadAssery2
//
//  Created by Denis Smirnov on 11-11-12.
//  Copyright (c) 2011 Leetr.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArchiveViewController : UIViewController {
    IBOutlet UIButton *gobtn;
    IBOutlet UITextField *urltext;
    IBOutlet UIWebView *webview;
}

- (IBAction)goaction:(id)sender;

@end
