//
//  GADBannerViewControllerRepresentable.swift
//  SwiftUIGoogleAdsSample
//
//  Created by Daisuke TONOSAKI on 2020/05/03.
//  Copyright © 2020 Daisuke TONOSAKI. All rights reserved.
//

import SwiftUI

struct GADBannerViewControllerRepresentable: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = GADBannerViewController
    static let adsBannerSize: CGSize = CGSize(width: 320, height: 50)
    
    
    func makeUIViewController(context: Context) -> UIViewControllerType {
        return .init()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
}
