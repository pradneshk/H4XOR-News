//
//  Detail.swift
//  H4XOR News
//
//  Created by Pradnesh Kore on 21/07/20.
//  Copyright © 2020 Pradnesh Kore. All rights reserved.
//
import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

