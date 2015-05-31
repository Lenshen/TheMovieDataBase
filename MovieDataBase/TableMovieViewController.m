//
//  TableMovieViewController.m
//  MovieDataBase
//
//  Created by MrMessy on 15/5/31.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import "TableMovieViewController.h"
#import "DetailMovieViewController.h"
#import "MovieCell.h"
#import "Movie.h"

@interface TableMovieViewController ()
<UITableViewDataSource,UITableViewDelegate>


@end

@implementation TableMovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建tableview
    CGRect frame = self.view.bounds;
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame];
    [self.view addSubview:tableView];
    //注册MovieCell
    UINib *nib = [UINib nibWithNibName:@"MovieCell" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:@"MovieCell"];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 100;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MovieCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MovieCell" forIndexPath:indexPath];
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DetailMovieViewController *movieDetail = [[DetailMovieViewController alloc] init];

    
    [self.navigationController pushViewController:movieDetail animated:YES];
    
}


@end
