//
//  WebView.swift
//  H4XOR
//
//  Created by Jovial Software on 13/11/1941 Saka.
//  Copyright © 1941 Jovial Software. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit
struct WebView:UIViewRepresentable{
    let urlString:String?
    func makeUIView(context:Context) ->WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
