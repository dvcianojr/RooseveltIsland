//
//  RooseveltIslandAppDelegate.h
//  RooseveltIsland
//
//  Created by Dominick Ciano on 6/16/12.
//  Copyright (c) 2012 Abel / Noser Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface RooseveltIslandAppDelegate : UIResponder <UIApplicationDelegate>
{
	View *view;
	UIWindow *_window;
}


@property (strong, nonatomic) UIWindow *window;

@end
