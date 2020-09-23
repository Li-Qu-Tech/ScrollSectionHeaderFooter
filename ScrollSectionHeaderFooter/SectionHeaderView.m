//
//  SectionHeaderView.m
//  scrollSectionHeaderFooter
//
//  Created by xx on 2020/9/23.
//

#import "SectionHeaderView.h"

@implementation SectionHeaderView

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        
        [self setupUI];
    }
    return self;
}

/*
 非悬停header 设置Header的frame为改变之后的frame, 当Header到达顶部的时候，Header就会跟着单元内容一起滚动，不再悬停
 */
- (void)setFrame:(CGRect)frame {
    
    [super setFrame:[_tableView rectForHeaderInSection:_section]];
}

#pragma mark - 设置界面
- (void)setupUI {
    
    self.contentView.backgroundColor = [UIColor redColor];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 200, 30)];
    
    _titleLabel.textColor = [UIColor whiteColor];
    _titleLabel.font = [UIFont systemFontOfSize:14];
    
    [self.contentView addSubview:_titleLabel];
}


#pragma mark - 懒加载

@end
