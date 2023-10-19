//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import SwiftUI

let articleContent: String = """
Behind the self-help cliches and feel-good answers, are you satisfied with who you are and what you’ve attained in life? Can you look yourself in the mirror in the early hours of dawn and honestly answer that question?

Have you carved out a life true to who you are beyond the job, the title, the possessions, and society's tedious obligations? Have you ever accomplished anything on your own terms to be truly proud of?
Have you achieved some aspect of personal excellence through the cultivation of your own creative powers? Or are you simply living out your life as a walking mimicry, relying on customs, fashions, false appearances, and the opinions of others to nourish your sense of self-worth?

These are serious questions that must be met with the utmost sincerity. Because in truth, in the final hours of life, very few people can reflect on their lives and be proud of what they’ve done.

The most prominent deathbed regret for many people is that they wish they had the courage to live a life true to themselves, not the life others expected of them. We lived cowardly and apathetic, afraid to try, afraid to fail, afraid to take full responsibility for our own existence.

Rather than using our own unique strengths and passions in forging our own lives, many of us come to realize late in life that we’ve squandered the treasures within. We gave the reins to our lives over to others and lived like a heedless marionette on the cultural stage.

Repressing the unconscious reality within ourselves, many of us simply don the social mask of appeasement and frantically pursue the dominant yet hollow values of our modern society, whether it is wealth, fame, status, influence, or some fashionable ideology.

However, as Sigmund Freud saw all too clearly: “It is impossible to escape the impression that people commonly use false standards of measurement — that they seek power, success and wealth for themselves and admire them in others, and that they underestimate what is of true value in life.”
"""

@ViewBuilder
func ArticleTextView(text: String, isBold: Bool = true, size: CGFloat) -> some View {
    Text(text)
        .font(.custom(isBold ? "ArialRoundedMTBold" : "ArialRoundedMT", size: size))
}


struct BlogViewTypeOne: View {
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    HeaderView()
                    ArticleTextView(text: "The art of being an artist", size: 28)
                        .padding(.top, 30)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 3)
                        .opacity(0.2)
                    ArticleTextView(text: "Simplified Products", size: 28)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 250, height: 3)
                        .frame(height: 3)
                        .opacity(0.2)
                    ArticleTextView(text: "Tags", size: 18)
                    HashtagView(tags: hashtags) { value in
                        print("Clicked Hashtag :- \(value)")
                    }
                    .frame(height: 150)
                    ArticleTextView(text: "Article Content", size: 24)
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 3)
                        .opacity(0.2)
                    ArticleTextView(text: articleContent, isBold: false, size: 21)
                }
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
    
    @ViewBuilder
    func HeaderView() -> some View {
        HStack {
            ArticleTextView(text: "New Article", size: 34)
            Spacer()
            Image(systemName: "square.and.arrow.down")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
    
    
    
}

struct BlogViewTypeOne_Previews: PreviewProvider {
    static var previews: some View {
        BlogViewTypeOne()
    }
}
