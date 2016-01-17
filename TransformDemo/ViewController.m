//
//  ViewController.m
//  TransformDemo
//
//  Created by Yang on 16/1/17.
//  Copyright © 2016年 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _transformView.layer.shadowColor = [UIColor blackColor].CGColor;
    _transformView.layer.shadowOffset = CGSizeMake(4,4);
    _transformView.layer.shadowOpacity = 0.8;
    _transformView.layer.shadowRadius = 4;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)updateView{
    CGFloat m34 = 800;
    CGFloat value = _slRadiants.value * 180;//（控制翻转角度）
    CGPoint point = CGPointMake(0.5, 0.5);//设定翻转时的中心点，0.5为视图layer的正中
    CATransform3D transfrom = CATransform3DIdentity;
    transfrom.m34 = (_slTransform.value - 0.5) * 10 / m34;
    CGFloat radiants = value / 360.0 * 2 * M_PI;
    CGFloat x = _swX.isOn?1.0f:0.0f;
    CGFloat y = _swY.isOn?1.0f:0.0f;
    CGFloat z = _swZ.isOn?1.0f:0.0f;
    transfrom = CATransform3DRotate(transfrom, radiants, x, y, z);//(后面3个 数字分别代表不同的轴来翻转，本处为x轴)
    CALayer *layer = _transformView.layer;
    layer.anchorPoint = point;
    layer.transform = transfrom;
}

- (IBAction)slTransformValueChanged:(UISlider *)sender {
    [self updateView];
}

- (IBAction)slRadiantsValueChanged:(UISlider *)sender {
    [self updateView];
}

- (IBAction)swXChanged:(UISwitch *)sender {
    [self updateView];
}

- (IBAction)swYChanged:(UISwitch *)sender {
    [self updateView];
}

- (IBAction)swZChanged:(UISwitch *)sender {
    [self updateView];
}
@end
