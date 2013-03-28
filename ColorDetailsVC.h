//
//  ColorDetailsVC.h
//  ColorList2
//
//  Created by Steeve Fong on 3/27/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Color;

@interface ColorDetailsVC : UIViewController
@property (weak, nonatomic) IBOutlet UIView * colorView;
@property (weak, nonatomic) IBOutlet UILabel * titleLabel;
@property (weak, nonatomic) IBOutlet UILabel * hexColorLabel;
@property (weak, nonatomic) IBOutlet UILabel * descriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *userButton;

@property (strong, nonatomic) Color * myColor;

-(id)initWithColor:(Color *)currentColor;

@end
