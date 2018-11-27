//
//  TonyBannerView.h
//  SLBannerViewDemo
//
//  Created by apple on 2018/11/24.
//  Copyright © 2018年 Travelcolor. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class TonyBannerView;
@protocol TonyBannerViewDelegate <NSObject>

@optional
/**
 注：圆点页码控制，默认靠下居中
 */
/** 监听点击的图片 */
- (void)bannerView:(TonyBannerView *)banner didClickImagesAtIndex:(NSInteger)index;
@end

@interface TonyBannerView : UIView
/** 要展示的图片数组,支持网络，本地，工程图片可用 */
@property (nonnull, nonatomic, copy) NSArray *slImages;
/** 要展示的标题数组 */
@property (nullable, nonatomic, copy) NSArray *slTitles;
/** 每张图片的停留时间，默认2秒 */
@property (nonatomic, assign) NSTimeInterval imgStayTimeInterval;
/** 图片的切换动画持续时间，默认0.3秒 */
@property (nonatomic, assign) NSTimeInterval durTimeInterval;
/** 标题label,可选修改字体大小位置颜色等 */
@property (nullable, nonatomic, weak) UILabel *titleLabel;
/** 根据需求传入占位图片 */
@property (nullable, nonatomic, strong) UIImage *placeholderImg;

@property (nonatomic, weak) id <TonyBannerViewDelegate> delegate;

/** xib快速构造方法 */
+ (instancetype)bannerViewXib;
/** 代码快速构造方法 */
+ (instancetype)bannerView;
/** 设置单张图片不轮播 */
- (void)setupSingleImage;
@end



NS_ASSUME_NONNULL_END
