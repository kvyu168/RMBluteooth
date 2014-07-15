//
//  ControllerView.m
//  RMBTController
//
//  Created by sonson on 2014/07/15.
//  Copyright (c) 2014年 sonson. All rights reserved.
//

#import "ControllerView.h"
#import "RMBTController.h"

@interface ControllerView () <RMBTControllerDelegate>
@end

@implementation ControllerView

- (void) awakeFromNib{
	[[RMBTController sharedInstance] setDelegate:self];
	_log = [NSMutableString string];
}

- (void)controller:(RMBTController*)controller didReceiveLog:(NSString*)log {
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	formatter.dateStyle = NSDateFormatterMediumStyle;
	formatter.timeStyle = NSDateFormatterMediumStyle;
	[_log appendFormat:@"[%@] %@\r", [formatter stringFromDate:[NSDate date]], log];
	_textView.string = _log;
}

- (IBAction)forward:(id)sender {
	[[RMBTController sharedInstance] hoge];
}

- (IBAction)backward:(id)sender {
}

- (IBAction)right:(id)sender {
}

- (IBAction)left:(id)sender {
}

- (IBAction)stop:(id)sender {
}

- (IBAction)tiltPlus:(id)sender {
}

- (IBAction)tiltMinus:(id)sender {
}

@end
