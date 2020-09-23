//
//  SectionFooterView.m
//  scrollSectionHeaderFooter
//
//  Created by hongtu on 2020/9/23.
//

#import "SectionFooterView.h"

@implementation SectionFooterView

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        
        [self setupUI];
    }
    return self;
}

/*
 非悬停Footer 设置Footer的frame为改变之后的frame, 当Footer到达底部的时候，Footer就会跟着单元内容一起滚动，不再悬停
 */
- (void)setFrame:(CGRect)frame {
    
    [super setFrame:[_tableView rectForFooterInSection:_section]];
}

#pragma mark - 设置界面
- (void)setupUI {
    
    self.contentView.backgroundColor = [UIColor blueColor];
    
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 200, 30)];
    
    _titleLabel.textColor = [UIColor whiteColor];
    _titleLabel.font = [UIFont systemFontOfSize:14];
    
    [self.contentView addSubview:_titleLabel];
}


#pragma mark - 懒加载

@end
