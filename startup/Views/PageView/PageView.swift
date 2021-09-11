//
//  PageView.swift
//  startup
//
//  Created by Kai on 2021/09/10.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0

    var body: some View {
        //@Stateとして保存されている値へのバインディングを作成する際には、$構文を使用する
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                .aspectRatio(3 / 2, contentMode: .fit)
        }
    }
}
