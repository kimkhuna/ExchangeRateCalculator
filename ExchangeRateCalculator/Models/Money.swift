//
//  Money.swift
//  ExchangeRateCalculator
//
//  Created by 김경훈 on 2022/10/11.
//

import Foundation

// 비영업일의 데이터, 혹은 영업당일 11시 이전에 해당일의 데이터를 요청할 경우 null 값이 반환


struct Money: Decodable{
    
//    let bkpr: String //bkpr : 장부가격
    let cur_nm: String?// cur_nm : 국가/통화명
    let cur_unit: String? // cur_unit : 통화코드
    let deal_bas_r: String? // deal_bas_r : 매매기준율
//    let kftc_bkpr: String // kftc_bkpr : 서울외국환중개 매매기준율
//    let kftc_deal_bas_r: String // kftc_deal_bas_r : 서울외국환중개 장부가격
//    let result: Int // result : 결과
//    let tend_dd_efee_r: String // tend_dd_efee_r : 10일환가료율
//    let ttb: String // ttb : 전신환(송금) 받으실때
//    let tts: String // tts : 전신환(송금) 보내실때
//    let yy_efee_r: String // yy_efee_r : 년환가료율
    
}

struct Moneys: Decodable{
    let moneyList: [Money]
}
