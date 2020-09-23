//
//  SectionFooterView.h
//  scrollSectionHeaderFooter
//
//  Created by hongtu on 2020/9/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SectionFooterView : UITableViewHeaderFooterView

@property (nonatomic,weak) UITableView *tableView;

@property(nonatomic,assign) NSUInteger section;

@property(nonatomic,strong) UILabel *titleLabel;

@end

NS_ASSUME_NONNULL_END
