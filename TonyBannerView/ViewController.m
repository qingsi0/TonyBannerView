//
//  ViewController.m
//  TonyBannerView
//
//  Created by apple on 2018/11/27.
//  Copyright © 2018年 feiing. All rights reserved.
//

#import "ViewController.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *imgList = @[
                         @"http://img3.duitang.com/uploads/item/201601/03/20160103215632_M48zu.thumb.700_0.jpeg",
                         @"未知路径，显示占位图",
                         @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1535866967519&di=5faf2fc5574462a62fae61b81b5a0935&imgtype=0&src=http%3A%2F%2Fpic31.nipic.com%2F20130708%2F7447430_090100939000_2.jpg",
                         @"http://img.zcool.cn/community/01b34f58eee017a8012049efcfaf50.jpg@1280w_1l_2o_100sh.jpg"];
    NSArray *titleList = @[@"第1张图片的标题", @"第2张图片的标题", @"第3张图片的标题", @"第4张图片的标题"];
    
    [self createBannerViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 200) withimgList:imgList titleList:titleList];
}

- (void)createBannerViewWithFrame:(CGRect)frame withimgList:(NSArray *)imgList titleList:(NSArray *)titleList{
    TonyBannerView *banner = [TonyBannerView bannerView];
    banner.frame = frame;
    banner.placeholderImg = [UIImage imageNamed:@"SLPlaceholderImageName.jpg"];
    banner.slImages = imgList;
    //设置标题
    banner.slTitles = titleList;
    [banner.titleLabel setTextColor:[UIColor yellowColor]];
    //4. 监听设置代理
    banner.delegate = self;
    //5. banner添加到UI上
    [self.view addSubview:banner];
    //6. 自定义动画时间，建议动画持续时间小于停留时间
    banner.durTimeInterval = 0.2;
    banner.imgStayTimeInterval = 2.5;
}


- (void)bannerView:(TonyBannerView *)banner didClickImagesAtIndex:(NSInteger)index
{
    NSLog(@"点击了%ld", index);
}


@end
