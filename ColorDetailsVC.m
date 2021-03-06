//
//  ColorDetailsVC.m
//  ColorList2
//
//  Created by Steeve Fong on 3/27/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#import "UIColor+hexToColor.h"
#import "ColorUserDetailsVC.h"
#import "ColorDetailsVC.h"
#import "Palette.h"
#import "Color.h"

@implementation ColorDetailsVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(id)initWithColor:(Color *)currentColor
{
    self = [super init];
    
    if (self) {
        _myColor = currentColor;
    }
    
    return self;
}

-(id)initWithPalette:(Palette *)currentPalette
{
    self = [super init];
    
    if (self) {
        _myPalette = currentPalette;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self navigationController] setNavigationBarHidden:NO];
    
    if (_myColor) {
        [_descriptionLabel setText:_myColor.description];
        [_titleLabel setText:_myColor.title];
        [_hexColorLabel setText:_myColor.colorHex];
        [_colorView setBackgroundColor:[UIColor colorFromHexString:_myColor.colorHex]];
        [_hexColorLabel setTextColor:[UIColor invertedColorFromHexString:_myColor.colorHex]];
    }
    else {
        [_descriptionLabel setText:_myPalette.description];
        [_titleLabel setText:_myPalette.title];
    }
}
- (IBAction)buttonPressed:(id)sender {
    ColorUserDetailsVC *vc = [[ColorUserDetailsVC alloc] initWithUserName:_descriptionLabel.text];
    [[self navigationController] pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
