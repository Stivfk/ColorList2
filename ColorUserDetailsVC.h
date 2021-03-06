//
//  ColorUserDetailsVC.h
//  ColorList2
//
//  Created by Steeve Fong on 3/28/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class User;

@interface ColorUserDetailsVC : KAViewController

- (id)initWithUserName:(NSString *)userName;
- (void)fetchEntries:(NSString *)urlStr;
- (void)inputValues:(User *)values;

@end
