//
//  DetailView.swift
//  H4XOR
//
//  Created by Jovial Software on 13/11/1941 Saka.
//  Copyright © 1941 Jovial Software. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
