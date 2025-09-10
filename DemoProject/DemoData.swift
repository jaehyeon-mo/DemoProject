//
//  DemoData.swift
//  DemoProject
//
//  Created by 모재현 on 9/10/25.
//

import Foundation
import Combine

class DemoData: ObservableObject {
    
    @Published var userCount = 0
    @Published var currentUser = ""
    
    init() {
        // 데이터를 초기화하기 위한 코드가 여기 온다.
        updateData()
    }
    
    func updateData() {
        // 데이터를 최신 상태로 유지하기 위한 코드가 여기 온다.
    }
}
