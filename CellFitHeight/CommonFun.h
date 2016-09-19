//
//  CommonFun.h
//  CellFitHeight
//
//  Created by 1 on 16/9/19.
//  Copyright © 2016年 1. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommonFun : NSObject

#define Wi [UIScreen mainScreen].bounds.size.width
#define Hi [UIScreen mainScreen].bounds.size.height
#pragma mark 根据标注尺寸(基于iPhone6尺寸，点)计算实际宽度
/**
 *  @author 张明
 *
 *  @brief 根据标注尺寸(基于iPhone6尺寸)计算实际宽度
 *
 *  @param widthForiPhone6 iPhone6标注图下的实际宽度
 *
 *  @return 根据屏幕宽高计算后的真实宽度
 */
#define f_CalcRealWidthByiPhone6(widthForiPhone6) widthForiPhone6/375.0f*Wi

#pragma mark 根据标注尺寸(基于iPhone6尺寸，点)计算实际高度
/**
 *  @author 张明
 *
 *  @brief 根据标注尺寸(基于iPhone6尺寸)计算实际高度
 *
 *  @param heightForiPhone6 iPhone6标注图下的实际高度
 *
 *  @return 计算后的真实高度
 */
#define f_CalcRealHeightByiPhone6(heightForiPhone6) heightForiPhone6/667.0f*Hi

#pragma mark - 系统颜色
#define COLOR_S_WHITE [UIColor whiteColor]
#define COLOR_S_CLEAR [UIColor clearColor]
#define COLOR_S_RED [UIColor redColor]
#define COLOR_S_GREEN [UIColor greenColor]
#define COLOR_S_BLUE [UIColor blueColor]
#define COLOR_S_BLACK [UIColor blackColor]
#define COLOR_S_LIGHTGRAY [UIColor lightGrayColor]
#define COLOR_S_DRAKGRAY [UIColor darkGrayColor]
#define COLOR_S_GRAY [UIColor grayColor]
#define COLOR_S_GROUPTABLEVIEW_BG [UIColor groupTableViewBackgroundColor]

#pragma mark - 系统字体
#define FONT_S_5 [UIFont systemFontOfSize:5.0f]
#define FONT_S_8 [UIFont systemFontOfSize:8.0f]
#define FONT_S_10 [UIFont systemFontOfSize:10.0f]
#define FONT_S_11 [UIFont systemFontOfSize:11.0f]
#define FONT_S_12 [UIFont systemFontOfSize:12.0f]
#define FONT_S_13 [UIFont systemFontOfSize:13.0f]
#define FONT_S_14 [UIFont systemFontOfSize:14.0f]
#define FONT_S_15 [UIFont systemFontOfSize:15.0f]
#define FONT_S_16 [UIFont systemFontOfSize:16.0f]
#define FONT_S_17 [UIFont systemFontOfSize:17.0f]
#define FONT_S_18 [UIFont systemFontOfSize:18.0f]
#define FONT_S_20 [UIFont systemFontOfSize:20.0f]
#define FONT_S_21 [UIFont systemFontOfSize:21.0f]
#define FONT_S_23 [UIFont systemFontOfSize:23.0f]
#define FONT_S_24 [UIFont systemFontOfSize:24.0f]
#define FONT_S_23 [UIFont systemFontOfSize:23.0f]
#define FONT_S_25 [UIFont systemFontOfSize:25.0f]

@end
