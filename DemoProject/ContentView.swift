//
//  ContentView.swift
//  DemoProject
//
//  Created by 모재현 on 9/10/25.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var wifiEnabled: Bool = true
    
    @StateObject var demoData: DemoData = DemoData()
    
    var body: some View {
//        Toggle(isOn: $wifiEnabled) {
//            Text("Enabled Wi-Fi")
//        }
//        WifiImageView(wifiEnabled: $wifiEnabled)
        
        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
    }
}

//struct WifiImageView: View {
//    
//    @Binding var wifiEnabled: Bool
//    
//    var body: some View {
//        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
//    }
//}

#Preview {
    ContentView(demoData: DemoData())
}
