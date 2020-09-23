//
//  ViewController.m
//  ScrollSectionHeaderFooter
//
//  Created by xx on 2020/9/23.
//

#import "ViewController.h"

#import "SectionHeaderView.h"
#import "SectionFooterView.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    tableView.rowHeight = 50;
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"TableViewCellId"];
    [tableView registerClass:[SectionHeaderView class] forHeaderFooterViewReuseIdentifier:@"SectionHeaderViewId"];
    [tableView registerClass:[SectionFooterView class] forHeaderFooterViewReuseIdentifier:@"SectionFooterViewId"];
    
    [self.view addSubview:tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCellId" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"section = %zd, row = %zd",indexPath.section,indexPath.row];
    
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    SectionHeaderView *header = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"SectionHeaderViewId"];
    
    header.tableView = tableView;
    header.section = section;
    header.titleLabel.text = [NSString stringWithFormat:@"section = %zd",section];
    
    return header;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
    SectionFooterView *footer = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"SectionFooterViewId"];
    
    footer.tableView = tableView;
    footer.section = section;
    footer.titleLabel.text = [NSString stringWithFormat:@"section = %zd",section];
    
    return footer;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    
    return 30;
}

@end
