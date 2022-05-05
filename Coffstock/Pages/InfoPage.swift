//
//  InfoPage.swift
//  Coffstock
//
//  Created by Ayush Pratap Singh on 02/05/22.
//

import SwiftUI
import WebKit

class WebInterfaceDialogs: NSObject, WKScriptMessageHandler {
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        print(message.body)
    }
}

struct WebView : UIViewRepresentable{
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
              config.userContentController.add(WebInterfaceDialogs() , name: "alert")
              return WKWebView(frame: .zero, configuration: config)
    }
    func updateUIView
    (_ webView: WKWebView, context: Context) {
        let url = URL(string: "https://firtman.github.io/coffeemasters/webapp")
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    
}

struct InfoPage: View {
    var body: some View {
       WebView()
    }
}

struct InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        InfoPage()
    }
}
