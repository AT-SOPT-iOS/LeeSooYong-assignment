//
//  OpenApiService.swift
//  SOPT36_TVING
//
//  Created by LEESOOYONG on 5/8/25.
//

import Foundation

final class OpenApiService {
    static let shared = OpenApiService()
    private init() {}
    
    func makeRequest(targetDt: String?) -> URLRequest? {
        let apiKey = Bundle.main.openMovieAPIKey
        var urlString = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json"
        
        urlString += "?key=\(apiKey)"
        
        if let targetDt = targetDt, !targetDt.isEmpty,
            let encoded = targetDt.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
            urlString += "&targetDt=\(encoded)"
        }
        
        guard let url = URL(string: urlString) else { return nil }
            
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
    func fetchMovieList(targetDt: String?) async throws -> [Movie] {
        guard let request = makeRequest(targetDt: targetDt) else {
            throw NetworkError.requestEncodingError
        }
        
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.responseError
        }
        
        do {
            let decoded = try JSONDecoder().decode(OpenApiResponseBody.self, from: data)
            return decoded.boxOfficeResult.dailyBoxOfficeList
        } catch {
            print("디코딩 실패:", error)
            throw NetworkError.responseDecodingError
        }
    }
}
