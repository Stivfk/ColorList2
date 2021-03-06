//
//  Constants.h
//  ColorList
//
//  Created by Steeve Fong on 3/25/13.
//  Copyright (c) 2013 Steeve Fong. All rights reserved.
//

#define COLORLISTURL @"http://www.colourlovers.com/api/colors/new?format=json"
#define PALETTELISTURL @"http://www.colourlovers.com/api/palettes/new?format=json"
#define PATTERNLISTURL @"http://www.colourlovers.com/api/patterns/new?format=json"

#define networkNotificationActivityOn()  [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES]
#define networkNotificationActivityOff() [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO]
