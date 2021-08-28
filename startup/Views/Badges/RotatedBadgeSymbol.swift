//
//  RotatedBadgeSymbol.swift
//  startup
//
//  Created by Kai on 2021/08/28.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)//余白の幅
            .rotationEffect(angle, anchor: .bottom)//図の回転
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
