//
//  ContentView.swift
//  SwiftUIGoogleAdsSample
//
//  Created by Daisuke TONOSAKI on 2020/05/03.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView() {
            VStack {
                Spacer()
                
                Text("SwiftUI GoogleAdsSample")
                
                Spacer().frame(height: 30)
                
                NavigationLink(destination: ContentView2()) {
                    Text("Link to Next View.")
                }
                
                Spacer()
                
                GADBannerViewControllerRepresentable().frame(width: GADBannerViewControllerRepresentable.adsBannerSize.width,
                                                             height:GADBannerViewControllerRepresentable.adsBannerSize.height,
                                                             alignment: .center)
            }
            .navigationBarHidden(false)
            .padding()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
