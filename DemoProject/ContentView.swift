//
//  ContentView.swift
//  DemoProject
//
//  Created by 모재현 on 9/10/25.
//

import SwiftUI

struct ContentView: View {
    /*
    @State private var wifiEnabled: Bool = true
     
    @StateObject var demoData: DemoData = DemoData()
     
    let speedsetting = SpeedSetting()
    var colors: [Color] = [.black, .red, .green, .blue]
    var colornames = ["black", "red", "green", "blue"]
    
    @State private var colorIndex: Int = 0
    @State private var rotation: Double = 0
    @State private var text: String = "Welcome to SwiftUI"
     */
    enum DurationError: Error {
        case tooLong
        case tooShort
    }
    
    var body: some View {
        /*
        Toggle(isOn: $wifiEnabled) {
            Text("Enabled Wi-Fi")
        }
        WifiImageView(wifiEnabled: $wifiEnabled)
         
        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
         
        VStack {
            SpeedControlView()
            SpeedDisplayView()
        }
        .environmentObject(speedsetting)
        VStack {
            Spacer()
            Text(text)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .rotationEffect(.degrees(rotation))
                .animation(.easeInOut(duration: 5), value: rotation)
                .foregroundColor(colors[colorIndex])
            
            Spacer()
            Divider()
            Slider(value: $rotation, in: 0...360, step: 0.1)
                .padding()
            
            TextField("Enter text here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Picker(selection: $colorIndex, label: Text("Color")) {
                ForEach (0 ..< colornames.count, id: \.self) {
                    Text(colornames[$0])
                        .foregroundColor(colors[$0])
                }
            }
            .pickerStyle(.wheel)
            .padding()
        }
        */
        Button(action: {
            Task {
                await doSomething()
            }
        }) {
            Text("Do Something")
        }
    }
    
    func doSomething() async {
        await withTaskGroup(of: Void.self) { group in
            for i in 1...5 {
                group.addTask {
                    let result = await takesTooLong()
                    print("Completed Task \(i) = \(result)")
                }
            }
        }
    }
    
    func takesTooLong() async -> Date {
//        sleep(5)
        // 동기 sleep 대신 비동기 sleep 사용
        try? await Task.sleep(nanoseconds: 5 * 1_000_000_000) // 5초
        return Date()
    }
}
/*
struct WifiImageView: View {
    
    @Binding var wifiEnabled: Bool
    
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}

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
 */

#Preview {
    /*
    ContentView(demoData: DemoData())
     */
    ContentView()
}
