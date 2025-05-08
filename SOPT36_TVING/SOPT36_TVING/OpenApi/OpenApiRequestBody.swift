//
//  OpenApiRequestBody.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/8/25.
//

import Foundation

struct OpenApiResponseBody: Codable {
    let boxOfficeResult: BoxOfficeResult
}

struct BoxOfficeResult: Codable {
    let dailyBoxOfficeList: [Movie]
}

struct Movie: Codable {
    let rank: String
    let movieNm: String
    let openDt: String
}
