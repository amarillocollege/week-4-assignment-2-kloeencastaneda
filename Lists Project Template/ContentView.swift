//
//  ContentView.swift
//  Lists Project Template
//
//  Created by [YOUR NAME GOES HERE].
//
import SwiftUI

struct ContentView: View {
    
    var cyberpunkArticles = [
        
        Article(title: "It’s Time to Reimagine the Future of Cyberpunk",
                author: "Madeline Ashby",
                rating: 4,
                excerpt: "In the 20th century, the genre imagined the body modifications and protective streetwear that could save us from our own future. Now it needs to envision humanity anew.",
                image: "Article1"),
        
        Article(title: "The Future in the Flesh: Why Cyberpunk Can’t Forget the Body",
                author: "Lincoln Michel",
                rating: 5,
                excerpt: "In the 1980s, both punk rock and cyberpunk offered a needed counterweight to the excess consumerism and trickle-down conformity. In 2021, our corporate overlords’ profits depend on erasing our physicality to sell us VR office meetings, filtered and photoshopped beauty standards, and surveillance marketing that reduces us to data points. Meanwhile our politicians do nothing as the planet burns and inequality deepens in both bank accounts and bodies. Those in power want us to believe that we will slide seamlessly and inevitably into the world of their making. It’s the right time for literature that reminds us that these emerging technologies are fraught and unequal, that the path we’re on will play out across real bodies suffering in the real world, and that the future is far from inevitable.",
                image: "Article-"),
        
        Article(title: "What is Cyberpunk Fashion?", author: "Pierre Michel",
                rating: 5,
                excerpt: "At its core, cyberpunk fashion is all about pushing boundaries and subverting expectations. It often features bold, eclectic styles that blend traditional punk elements like leather, denim, and studs with futuristic touches like neon colors, holographic prints, and metallic accents.",
                image: "CyberpunkFashionArticle"),
        
        Article(title: "What is Cyberpunk Aesthetic?",
                author: "Wendy Zhou",
                rating: 4,
                excerpt: "If we bypass the fictional world-building and the philosophical aspects of cyberpunk, then cyberpunk aesthetic can be closely related to Neo-Noir aesthetics. Here comes a couple of lists of things that almost always are included in cyberpunk graphics: environmental settings, color palette, clothing and fashion, as well as GUIs.",
                image: "Article??"),
        
        Article(title: "Visions of Artificial Intelligence and Robots in Science Fiction: A Computational Analysis",
                author: "Hirotaka Osawa",
                rating: 5,
                excerpt: "Although creating human-like intelligence is a primary goal of AI, today’s AI are not as intelligent as humans, but they are also not necessarily unsophisticated machines regulated by simple rules easily understood by humans. Human-like images are often used, especially in the design and promotion of commercialized AI; however, we think researchers and technologists should take care to avoid the overuse of this image, and should explain their technologies to avoid these stereotypes.",
                image: "Article4")
    ]
    
    var body: some View {
        

                VStack {
                    List(cyberpunkArticles){ cyber in
                        ArtView(cyber: cyber)
                    }
                }
            }
        }



#Preview {
    ContentView()
}

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var rating: Int
    var excerpt: String
    var image: String
}

struct ArtView: View {

    @State var cyber: Article
    
    var body: some View {
        VStack{
            Image(cyber.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:500)
                .cornerRadius(16)
                
            Spacer()
            Spacer()
            Spacer()
            
            Text(cyber.title)
                .foregroundStyle(.white)
                .font(.system(.title, design: .rounded))
                .italic()
                .fontWeight(.black)
                .foregroundStyle(.white)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                
            Spacer()
            
            Text("By: " + cyber.author)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .font(.system(.title, design: .rounded))
                .fontWeight(.medium)
                .opacity(0.6)
                
            Spacer()
Spacer()
            
            HStack{
                var stars = cyber.rating
                let count = [1...stars]
                  
                ForEach (0..<stars) {_ in
                    Image(systemName: ("star.fill"))
                        .foregroundColor(.purple)
                }
                Spacer()
            }
            Spacer()
            Spacer()
            Divider()
                .frame(minHeight: 3)
                        .overlay(LinearGradient(colors: [.grape,.violet,.peachy], startPoint: .topLeading, endPoint: .bottomTrailing))
            
            Spacer()
            
            Text(cyber.excerpt)
                .fontWeight(.medium)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Spacer()
            
            Divider()
                .frame(minHeight: 3)
                        .overlay(LinearGradient(colors: [.grape,.violet,.peachy], startPoint: .topLeading, endPoint: .bottomTrailing)
                            .ignoresSafeArea())
                        .cornerRadius(16)
            
            Spacer()
            Spacer()
            Spacer()
            
        }
    }
}
