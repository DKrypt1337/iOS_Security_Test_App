//
//  ContentView.swift
//  iOSSecurityTestApp
//
//  Created by Humbarger, Dennis (D.) on 10/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        if #available(iOS 14.0, *) {
            Color.blue
                .ignoresSafeArea() // Ignore just for the color
                .overlay(
                    VStack(spacing: 20) {
                        Text("iOS Security Test App").font(.largeTitle)
                        Text("Select a test below").font(.title).foregroundColor(.white)
                        Spacer()
                        
                        Button("Test One") {
                           
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(8)
                        .padding(.horizontal, 20)
                        
                        Spacer();
                        
                        if (UIDevice.current.isJailBroken == false)
                        {
                            HStack{
                                Text("Jailbreak Status: ");
                                Text(String(UIDevice.current.isJailBroken))
                                    .foregroundColor(Color.green);
                            }
                        }
                        else
                        {
                            HStack{
                                Text("Jailbreak Status: ");
                                Text(String(UIDevice.current.isJailBroken))
                                    .foregroundColor(Color.red);
                            }
                        }
                        
                        
                        
                        if (UIDevice.current.isSimulator == false)
                        {
                            HStack{
                                Text("Simulator Status: ");
                                Text(String(UIDevice.current.isSimulator))
                                    .foregroundColor(Color.green);
                            }
                        }
                        else
                        {
                            HStack{
                                Text("Simulator Status: ");
                                Text(String(UIDevice.current.isSimulator))
                                    .foregroundColor(Color.red);
                            }
                        }
                        
                        Spacer()
                        Spacer()
                        Spacer()
                    })
        } else {
            
            // Fallback on earlier versions
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
