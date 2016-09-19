//
//  ViewController.m
//  CellFitHeight
//
//  Created by 1 on 16/9/19.
//  Copyright © 2016年 1. All rights reserved.
//

#import "ViewController.h"
#import "MessageListCell.h"
#import "CommonFun.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView         *table_messList;
    NSMutableArray      *arr_messlist;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createTableView];
    arr_messlist = [NSMutableArray arrayWithObjects:@"文本，是指书面语言的表现形式",
                    @"文本，是指书面语言的表现形式，从文学角度说，通常是具有完整、系统含义（Message）的一个句子或多个句子的组合。一个文本可以是一个句子（Sentence）、一个段落（Paragraph）或者一个篇章（Discourse）。",
                    @"广义“文本”：任何由书写所固定下来的任何话语。（利科尔） 狭义“文本”：由语言文字组成的文学实体，代指“作品”，相对于作者、世界构成一个独立、自足的系统。",
                    @"文本，是指书面语言的表现形式，从文学角度说，通常是具有完整、系统含义（Message）的一个句子或多个句子的组合。一个文本可以是一个句子（Sentence）、一个段落（Paragraph）或者一个篇章（Discourse）。广义“文本”：任何由书写所固定下来的任何话语。（利科尔） 狭义“文本”：由语言文字组成的文学实体，代指“作品”，相对于作者、世界构成一个独立、自足的系统。",
                    @"文本（text），从词源上来说，它表示编织的东西。这与中国“文”的概念颇有类似之处。“文”取象人形，指纹身，指花纹。《说文解字叙》称：“仓颉初作书，盖依类象形，故曰文。”“文者，物象之本。”物象均具纹路色彩，因以“文”来指称。《周易·系辞下》记伏羲氏“观鸟兽之文”，鸟兽身上的花纹彩羽。该书又载“物相杂故曰文”，物体的形状、线条色彩相互交错，这也是文。“观乎天文，以察时变，观乎人文，以化成天下。”《说文解字》解释“文”为“错画也。”但是文本的概念后来主要变成了：“任何由书写所固定下来的任何话语。”对语言学家来说，文本指的是作品的可见可感的表层结构，是一系列语句串联而成的连贯序列。文本可能只是一个单句，例如谚语、格言、招牌等，但比较普遍的是由一系列句子组成。文本和段落的区别在于，文本构成了一个相对封闭、自足的系统。前苏联符号学家洛特曼指出，文本是外观的，即用一定的符号来表示；它是有限的，既有头有尾；它有内部结构。罗兰·巴特文本一方面是能指，即实际的语言符号以及由它们所组成的词、句子和段落章节，另一方面是所指，即固定的确定的和单一的意思，为表达这种意思的正确性所限定。以上从技术上中性地对文本做出基本界定。",
                    nil];
}

#pragma mark--单元格
- (void)createTableView
{
    table_messList = [[UITableView alloc]initWithFrame:CGRectMake(0,0,Wi,Hi) style:UITableViewStyleGrouped];
    table_messList.delegate = self;
    table_messList.dataSource = self;
    table_messList.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:table_messList];
    [table_messList registerClass:[MessageListCell class] forCellReuseIdentifier:@"MessageListCell"];
}
#pragma mark-tableview的代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.01;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arr_messlist.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MessageListCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MessageListCell"];
    if(!cell)
    {
        cell = [[MessageListCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MessageListCell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    if (arr_messlist.count > 0)
    {
        if (indexPath.row < arr_messlist.count) {
            //显示cell数据
            NSString *str = arr_messlist[indexPath.row];
            [cell setByString:str];
        }
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //获取当前行文本内容
    NSString *str = arr_messlist[indexPath.row];
    //自适应高度
    CGSize size = CGSizeMake(Wi - f_CalcRealWidthByiPhone6(10) * 2 - f_CalcRealWidthByiPhone6(5) * 2, 0);
    CGRect rect = [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.0f]} context:nil];
    CGFloat messH = f_CalcRealHeightByiPhone6(20) + rect.size.height + f_CalcRealHeightByiPhone6(15);
    return f_CalcRealHeightByiPhone6(20) * 2 + messH;
}

@end
