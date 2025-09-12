//
//  ContentView.swift
//  DemoProject
//
//  Created by 모재현 on 9/10/25.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var wifiEnabled: Bool = true
    
//    @StateObject var demoData: DemoData = DemoData()
    
    let speedsetting = SpeedSetting()
    
    var body: some View {
//        Toggle(isOn: $wifiEnabled) {
//            Text("Enabled Wi-Fi")
//        }
//        WifiImageView(wifiEnabled: $wifiEnabled)
        
//        Text("\(demoData.currentU/*ser), you are user number \(demoData.userCount)")
        VStack {
            SpeedControlView()
            SpeedDisplayView()
        }
        .environmentObject(speedsetting)
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

struct SpeedControlView: View {
    
    @EnvironmentObject var speedsetting: SpeedSetting
    
    var body: some View {
        Slider(value: $speedsetting.speed, in: 0...100)
    }
}

struct SpeedDisplayView: View {
    
    @EnvironmentObject var speedsetting: SpeedSetting
    
    var body: some View {
        Text("Speed = \(speedsetting.speed)")
    }
}

#Preview {
//    ContentView(demoData: DemoData())
    ContentView()
}
