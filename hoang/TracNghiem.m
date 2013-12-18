//
//  TracNghiem.m
//  hoang
//
//  Created by Nguyen Hoang on 12/17/13.
//  Copyright (c) 2013 Nguyen Hoang. All rights reserved.
//

#import "TracNghiem.h"

@implementation TracNghiem
@synthesize CauHoiSo, NoiDungCauHoi, DapAnA,DapAnB,DapAnC,CauTraLoi,CauTiepTheo,KetQua, DemThoiGian;

/*
 * Main function
 * Create by Nguyen Hoang
 */
- (void)viewDidLoad{
    [super viewDidLoad];
    Diem = 0;
    CauHoiDangLam = 0;
    SoCauTraLoiSai = 0;
    CacCauHoi = [NSArray arrayWithObjects:
                 @"Hãng nào đã sản xuất ra smartphone Iphone",
                 @"HDH nào được sử dụng trên Ipad",
                 @"Xcode chạy trên HDH nào",nil];
    CacCauTraLoi = [NSArray arrayWithObjects:@"Apple-Nokia-Samsung",@"Windowphone-IOS-Android",@"Window-Linux-MacOSX", nil];
    DapAn = [NSArray arrayWithObjects:@"0",@"1",@"2", nil];
    ThoiGian = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ThucThi) userInfo:nil repeats:YES];
    
    [CauHoiSo setText:[NSString stringWithFormat:@"Câu hỏi số : %i", CauHoiDangLam +1]];
    
    [NoiDungCauHoi setText:[CacCauHoi objectAtIndex:CauHoiDangLam]];
    
    NSArray *CacDapAn = [[CacCauTraLoi objectAtIndex:CauHoiDangLam] componentsSeparatedByString:@"-"];
    
    [DapAnA setText:[NSString stringWithFormat:@"Đáp án A : %@", [CacDapAn objectAtIndex:0]]];
    [DapAnB setText:[NSString stringWithFormat:@"Đáp án B : %@", [CacDapAn objectAtIndex:1]]];
    [DapAnC setText:[NSString stringWithFormat:@"Đáp án C : %@", [CacDapAn objectAtIndex:2]]];
     
    [CauTraLoi setSelectedSegmentIndex:-1];
}

- (void)ThucThi{
    static int i = 0;
    i++;
    if(i==30){
        i = 0;
        [ThoiGian invalidate];
    }
    [DemThoiGian setText:[NSString stringWithFormat:@"%i",i]];
    
}

- (IBAction)CauTraLoi:(id)sender {
    NSInteger DapAnNguoiDung = [CauTraLoi selectedSegmentIndex];
    NSInteger DapAnChinhThuc = [[DapAn objectAtIndex:CauHoiDangLam] intValue];
    if (DapAnNguoiDung==DapAnChinhThuc) {
        
        [KetQua setText:[NSString stringWithFormat:@"Bạn trả lời Đúng câu hỏi số : %i", CauHoiDangLam+1]];
        Diem++;
        
    }else{
        [KetQua setText:[NSString stringWithFormat:@"Bạn trả lời SAI câu hỏi số : %i", CauHoiDangLam+1]];
        SoCauTraLoiSai++;
    }
}

- (IBAction)CauTiepTheo:(id)sender {
    CauHoiDangLam++;
    if (CauHoiDangLam==3) {
        [KetQua setText:[NSString stringWithFormat:@"Ket qua : \n Dung : %i \n Sai : %i", Diem, SoCauTraLoiSai]];
    }else{
        [CauHoiSo setText:[NSString stringWithFormat:@"Câu hỏi số : %i", CauHoiDangLam +1]];
        
        [NoiDungCauHoi setText:[CacCauHoi objectAtIndex:CauHoiDangLam]];
        
        NSArray *CacDapAn = [[CacCauTraLoi objectAtIndex:CauHoiDangLam] componentsSeparatedByString:@"-"];
        
        [DapAnA setText:[NSString stringWithFormat:@"Đáp án A : %@", [CacDapAn objectAtIndex:0]]];
        [DapAnB setText:[NSString stringWithFormat:@"Đáp án B : %@", [CacDapAn objectAtIndex:1]]];
        [DapAnC setText:[NSString stringWithFormat:@"Đáp án C : %@", [CacDapAn objectAtIndex:2]]];
        
        [CauTraLoi setSelectedSegmentIndex:-1];

    }
}
@end
