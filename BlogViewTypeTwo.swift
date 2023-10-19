//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import SwiftUI

struct BlogViewTypeTwo: View {
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    ArticleTextView(text: "The art of being an artist", size: 38)
                        .padding(.top, 30)
                        .shadow(radius: 2)
                    
                    HStack {
                        Image("1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .mask {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 65, height: 65)
                            }
                            .shadow(radius: 10)
                            .frame(width: 65, height: 65)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            ArticleTextView(text: "Javid Shaikh", size: 18)
                            ArticleTextView(text: "2m Ago", isBold: false, size: 18)
                                .opacity(0.4)
                        }
                        .padding(.leading, 20)
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 44, height: 24)
                                .padding(.trailing, 20)
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 44, height: 24)
                                .padding(.trailing, 20)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    ArticleTextView(text: "Article Content", size: 24)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 3)
                        .opacity(0.2)
                    Image("2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .mask {
                            RoundedRectangle(cornerRadius: 50)
                                
                        }
                        .shadow(radius: 10)
                        .frame(maxWidth: .infinity)
                    
                    VStack {
                        ArticleTextView(text: articleContent, isBold: false, size: 18)
                            .padding()
                    }
                    .background(.white)
                    .mask {
                        RoundedRectangle(cornerRadius: 30)
                    }
                    .offset(x: 0, y: -150)
                    .shadow(radius: 10)
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
    
    @ViewBuilder
    private func HeaderView() -> some View {
        HStack {
            Image(systemName: "chevron.left")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
            Spacer()
            Image(systemName: "ellipsis")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct BlogViewTypeTwo_Previews: PreviewProvider {
    static var previews: some View {
        BlogViewTypeTwo()
    }
}
