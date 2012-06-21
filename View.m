//
//  View.m
//  RooseveltIsland
//
//  Created by Dominick Ciano on 6/16/12.
//  Copyright (c) 2012 Abel / Noser Corp. All rights reserved.
//

#import <CoreLocation/CLLocation.h>	//for CLLocationCoordinate2D
#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 
 - (void) drawRect: (CGRect) rect
 {
 // drawing code using {Latitude, Longitude} points (larger latitude values brings you further north, larger longitude bring you further east)
 static CLLocationCoordinate2D a[] = {
	 {40.74973504548873, -73.96131978302003},//southern tip
	 {40.750970463094106, -73.96089062957765},
	 {40.751945776569, -73.95986066131593},
	 {40.753571267235685, -73.95917401580812},
	 {40.755261735373224, -73.95728574066163},
	 {40.75877257031703, -73.9544533279419},
	 {40.7609179892842, -73.9526508834839},
	 {40.76429850894985, -73.94930348663331},
	 {40.7687189290773, -73.94535527496339},
	 {40.770539016608474, -73.94389615325929},
	 {40.77099403070164, -73.94303784637452},
	 {40.77222905324795, -73.94175038604737},
	 {40.77248905506945, -73.94123540191652},//lighthouse(northern tip)
	 {40.77001899668668, -73.94097790985109},
	 {40.7687189290773, -73.94252286224366},
	 {40.76670377401617, -73.94441113739015},
	 {40.76351840428776, -73.94707188873292},
	 {40.76078796586341, -73.94930348663331},
	 {40.75877257031703, -73.95144925384523},
	 {40.75812242968641, -73.95213589935304},
	 {40.75740726764872, -73.95256505279542},
	 {40.755911903981016, -73.954110005188},
	 {40.75272601704849, -73.95728574066163},
	 {40.751750715018495, -73.95883069305421},
	 {40.750970463094106, -73.95934567718507},
	 {40.74993011295243, -73.96114812164308}
 };
 static const size_t n = sizeof a / sizeof a[0];
 
 CGContextRef c = UIGraphicsGetCurrentContext();
 
 CGSize s = self.bounds.size;
 CGContextTranslateCTM(c, s.width / 2, s.height / 2);
 
 //Longitude and latitude in degrees of Roosevelt Island,
 CGFloat xtranslate = 73.95;
 CGFloat ytranslate = -40.76
	 ;
 CGFloat scale = 13000;	//pixels per degree of latitude
 
 CGContextScaleCTM(c, scale * cos(ytranslate * M_PI / 180), -scale);
 CGContextTranslateCTM(c, xtranslate, ytranslate);
 
 CGContextBeginPath(c);
 CGContextMoveToPoint(c, a[0].longitude, a[0].latitude);
 
 for (size_t i = 0; i < n; ++i) {
 CGContextAddLineToPoint(c, a[i].longitude, a[i].latitude);
 }
 
 CGContextClosePath(c);
 CGContextSetRGBFillColor(c, 1.0, 0.0, 1.0, 1.0);	//magenta
 CGContextFillPath(c);
 }
 
 @end

