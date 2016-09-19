//
//  MessageListCell.h
//  Cat
//
//  Created by 1 on 16/9/14.
//  Copyright © 2016年 魏云凤. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonFun.h"

@interface MessageListCell : UITableViewCell

//时间
@property(nonatomic)UILabel     *lbl_time;
//信息标题
@property(nonatomic)UILabel     *lbl_title;
//信息内容
@property(nonatomic)UILabel     *lbl_content;

- (void)setByString:(NSString *)string;

@end
