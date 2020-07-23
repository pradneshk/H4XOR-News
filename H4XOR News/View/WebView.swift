//
//  WebView.swift
//  H4XOR News
//
//  Created by Pradnesh Kore on 21/07/20.
//  Copyright © 2020 Pradnesh Kore. All rights reserved.
//

import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(urlString: "www.google.com")
    }
}
