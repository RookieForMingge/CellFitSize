//
//  MessageListCell.m
//  Cat
//
//  Created by 1 on 16/9/14.
//  Copyright © 2016年 魏云凤. All rights reserved.
//

#import "MessageListCell.h"
#import "Masonry.h"

@implementation MessageListCell
{
    //消息内容
    UIView              *v_mess;
}

@synthesize lbl_time;
@synthesize lbl_title;
@synthesize lbl_content;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self  = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        [self setUI];
    }
    return self;
}

- (void)setUI
{
    //时间
    lbl_time = [[UILabel alloc]init];
    lbl_time.textColor = [UIColor grayColor];
    lbl_time.backgroundColor = [UIColor greenColor];
    lbl_time.text = @"";
    lbl_time.font = FONT_S_12;
    lbl_time.textAlignment = NSTextAlignmentCenter;
    [self addSubview:lbl_time];
    [lbl_time mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(@(f_CalcRealHeightByiPhone6(20)));
        make.top.equalTo(self.mas_top).offset(f_CalcRealHeightByiPhone6(20));
        make.left.equalTo(self.mas_left);
        make.right.equalTo(self.mas_right);
    }];
    //信息
    v_mess = [[UIView alloc]init];
    v_mess.backgroundColor = COLOR_S_WHITE;
    v_mess.frame = CGRectMake(f_CalcRealWidthByiPhone6(10), f_CalcRealHeightByiPhone6(40), Wi - f_CalcRealWidthByiPhone6(10) * 2, f_CalcRealHeightByiPhone6(80));
    v_mess.layer.cornerRadius = 5.0;
    v_mess.layer.masksToBounds = YES;
    [self addSubview:v_mess];
//    [v_mess mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(lbl_time.mas_bottom);
//        make.height.mas_equalTo(@(f_CalcRealHeightByiPhone6(80)));
//        make.left.equalTo(self.mas_left).offset(f_CalcRealWidthByiPhone6(10));
//        make.right.equalTo(self.mas_right).offset(-f_CalcRealWidthByiPhone6(10));
//    }];
    //信息标题
    lbl_title = [[UILabel alloc]init];
    lbl_title.textColor = COLOR_S_BLACK;
    lbl_title.text = @"";
    lbl_title.font = FONT_S_14;
    lbl_title.textAlignment = NSTextAlignmentLeft;
    [v_mess addSubview:lbl_title];
    [lbl_title mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(@(f_CalcRealHeightByiPhone6(20)));
        make.top.equalTo(v_mess.mas_top).offset(f_CalcRealHeightByiPhone6(5));
        make.left.equalTo(v_mess.mas_left).offset(f_CalcRealWidthByiPhone6(5));
        make.right.equalTo(v_mess.mas_right).offset(-f_CalcRealWidthByiPhone6(5));
    }];
    //信息内容
    lbl_content = [[UILabel alloc]init];
    lbl_content.textColor = COLOR_S_GRAY;
    lbl_content.frame = CGRectMake(f_CalcRealWidthByiPhone6(5), f_CalcRealHeightByiPhone6(25), Wi - f_CalcRealWidthByiPhone6(15) * 2, f_CalcRealHeightByiPhone6(60));
    lbl_content.text = @"";
    lbl_content.numberOfLines = 0;
    lbl_content.font = FONT_S_14;
    lbl_content.textAlignment = NSTextAlignmentLeft;
    [v_mess addSubview:lbl_content];
//    [lbl_content mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(v_mess.mas_bottom);
//        make.top.equalTo(lbl_title.mas_bottom);
//        make.left.equalTo(lbl_title.mas_left);
//        make.right.equalTo(lbl_title.mas_right);
//    }];
}

#pragma mark - 显示数据
- (void)setByString:(NSString *)string
{
    //1、自适应高度
    [self refreshHeight:string];
    //2、赋值
    lbl_time.text = @"2016-09-20";
    lbl_title.text = @"文本信息";
    lbl_content.text = string;
}

- (void)refreshHeight:(NSString *)string
{
    //内容
    NSString *str = string;
    //自适应高度
    CGSize size = CGSizeMake(Wi - f_CalcRealWidthByiPhone6(10) * 2 - f_CalcRealWidthByiPhone6(5) * 2, 0);
    CGRect rect = [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:FONT_S_14} context:nil];
    CGFloat messH = f_CalcRealHeightByiPhone6(25) + rect.size.height + f_CalcRealHeightByiPhone6(10);
    //信息背景
    v_mess.frame = CGRectMake(f_CalcRealWidthByiPhone6(10), f_CalcRealHeightByiPhone6(40), Wi - f_CalcRealWidthByiPhone6(10) * 2, messH);
    //信息内容
    lbl_content.frame = CGRectMake(f_CalcRealWidthByiPhone6(5), f_CalcRealHeightByiPhone6(25), Wi - f_CalcRealWidthByiPhone6(15) * 2, rect.size.height);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
