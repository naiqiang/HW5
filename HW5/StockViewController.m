//
//  StockViewController.m
//  HW5
//
//  Created by czhang on 2/16/15.
//  Copyright (c) 2015 naiqiang. All rights reserved.
//

#import "StockViewController.h"
#import "RandomView.h"


@interface StockViewController ()

@property (weak) IBOutlet NSButton *refreshButton;
@property (weak) IBOutlet RandomView *randomView;

@end

@implementation StockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do view setup here.
    self.randomView.randomNumberArray = [RandomPercentGenerator arrayOfPercents:20];

}

- (IBAction)onRefresh:(id)sender {
    // new data
    self.randomView.randomNumberArray = [RandomPercentGenerator arrayOfPercents:20];
    // refresh
    [self.randomView display];
}
@end
