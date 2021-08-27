//
//  LandmarkRow.swift
//  startup
//
//  Created by Kai on 2021/08/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()//画像をリサイズするために必要
                .frame(width:50, height:50)//画像サイスの指定
            Text(landmark.name)
            
            Spacer()//幅いっぱいに表示する際にいい感じにスペースを開けてくれる
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")//systemName:XXでアイコンを表示できる
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[0])
        }
        .previewLayout(.fixed(width:300, height:70))//UI部品のみをプレビューしてくれる(複数も可)
    }
}
