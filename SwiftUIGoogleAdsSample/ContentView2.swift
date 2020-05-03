//
//  ContentView2.swift
//  SwiftUIGoogleAdsSample
//
//  Created by Daisuke TONOSAKI on 2020/05/03.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    Spacer().frame(height: 10)
                    
                    Circle().frame(width: 200, height: 200)
                        .foregroundColor(.blue)

                    Circle().frame(width: 200, height: 200)
                        .foregroundColor(.green)
                    
                    Circle().frame(width: 200, height: 200)
                        .foregroundColor(.red)

                    Circle().frame(width: 200, height: 200)
                        .foregroundColor(.yellow)
                    
                    Circle().frame(width: 200, height: 200)
                        .foregroundColor(.purple)
                    
                    Spacer().frame(height: GADBannerViewControllerRepresentable.adsBannerSize.height)
                    
                    Spacer()
                }
            }
            
            VStack {
                Spacer()
                
                GADBannerViewControllerRepresentable().frame(width: GADBannerViewControllerRepresentable.adsBannerSize.width,
                                                             height:GADBannerViewControllerRepresentable.adsBannerSize.height,
                                                             alignment: .center)
            }
        }
        .padding()
        .navigationBarTitle("ScrollView")
        .navigationBarHidden(false)
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
