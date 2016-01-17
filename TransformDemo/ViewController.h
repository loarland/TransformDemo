//
//  ViewController.h
//  TransformDemo
//
//  Created by Yang on 16/1/17.
//  Copyright © 2016年 Yang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *transformView;

@property (strong, nonatomic) IBOutlet UISlider *slTransform;
@property (strong, nonatomic) IBOutlet UISlider *slRadiants;

@property (strong, nonatomic) IBOutlet UISwitch *swX;
@property (strong, nonatomic) IBOutlet UISwitch *swY;
@property (strong, nonatomic) IBOutlet UISwitch *swZ;

- (IBAction)slTransformValueChanged:(UISlider *)sender;
- (IBAction)slRadiantsValueChanged:(UISlider *)sender;

- (IBAction)swXChanged:(UISwitch *)sender;
- (IBAction)swYChanged:(UISwitch *)sender;
- (IBAction)swZChanged:(UISwitch *)sender;

@end

