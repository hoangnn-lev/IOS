//
//  TracNghiem.h
//  hoang
//
//  Created by Nguyen Hoang on 12/17/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TracNghiem : UIViewController{
    
    NSTimer *ThoiGian;
    int Diem;
    int CauHoiDangLam;
    int SoCauTraLoiSai;
    NSArray *CacCauHoi;
    NSArray *CacCauTraLoi;
    NSArray *DapAn;

}
@property (weak, nonatomic) IBOutlet UILabel *DemThoiGian;


@property (weak, nonatomic) IBOutlet UILabel *CauHoiSo;

@property (weak, nonatomic) IBOutlet UILabel *NoiDungCauHoi;

@property (weak, nonatomic) IBOutlet UILabel *DapAnA;

@property (weak, nonatomic) IBOutlet UILabel *DapAnB;

@property (weak, nonatomic) IBOutlet UILabel *DapAnC;

@property (weak, nonatomic) IBOutlet UISegmentedControl *CauTraLoi;

@property (weak, nonatomic) IBOutlet UILabel *KetQua;

@property (weak, nonatomic) IBOutlet UIButton *CauTiepTheo;



- (IBAction)CauTraLoi:(id)sender;
- (IBAction)CauTiepTheo:(id)sender;

@end
