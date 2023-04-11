//
//  TitleRow.swift
//  ChatApp
//
//  Created by user on 10.04.2023.
//

import SwiftUI

struct TitleRow: View {
  var imageUrl = URL(string: "https://yandex.ru/images/search?img_url=http%3A%2F%2Fmobimg.b-cdn.net%2Fv3%2Ffetch%2F74%2F74739e1770f31cdbfdde99cc0b2925d3.jpeg%3Fw%3D1470%26r%3D0.5625&lr=213&pos=1&rpt=simage&source=serp&text=%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B0")

  var name = "Sara Smith"

    var body: some View {
      HStack(spacing: 30) {
      AsyncImage(url: imageUrl) { image in
        image.resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 50, height: 50)
          .cornerRadius(50)
      } placeholder: {
        ProgressView()
      }

        VStack(alignment: .leading) {
          Text(name)
            .font(.title).bold()
          Text("Online")
            .font(.caption)
            .foregroundColor(.gray)
        }
        Image(systemName: "phone.fill")
          .foregroundColor(.gray)
          .padding(10)
          .background(.white)
          .cornerRadius(50)
      }
      .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
        .background(Color("Peach"))

    }
}
