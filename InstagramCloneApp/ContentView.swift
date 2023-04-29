//
//  ContentView.swift
//  InstagramCloneApp
//
//  Created by teona nemsadze on 21.03.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0.0) {
           Header()
            ScrollView(.vertical, showsIndicators: false) {
                
                Stories()
                
                Divider()
                
                Post()
                
                Post(image: "dog", description: "Almost 2 years old")
            }
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .frame(width: 140, height: 80)
            Spacer()
            HStack(spacing: 20.0) {
                Image(systemName: "plus.app.fill")
                Image(systemName: "heart")
                Image(systemName: "message")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    var image: String = "profile"
    var name: String = "Anna Deguz"
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .trailing, endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (spacing: 15){
                Story()
                Story(image: "profile2", name: "John Keny")
                Story(image: "profile3", name: "Rob Ian")
                Story(image: "profile4", name: "Elza Diaz")
                Story(image: "profile5", name: "Keyla Morgan")
                Story(image: "profile6", name: "Mery Grase")
                Story(image: "profile7", name: "Mark Klint")
                Story(image: "profile8", name: "Leo Cheg")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeader: View {
    var body: some View {
        HStack {
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text("Anna Deguz")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image(systemName: "ellipsis")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    var image: String =  "profile"
    
    
    var body: some View {
        VStack(spacing: 0.0) {
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            HStack {
                HStack (spacing: 10) {
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                }
                Spacer()
                
                Image(systemName: "bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct Post: View {
    var image: String = "profile"
    var description: String = "I miss traveling"
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0.0) {
            PostHeader()
            
            PostContent(image: image)
            
            Text("Liked by Anna and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack {
                HStack (spacing: 7.0){
                    Image("profile")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    
                    Text("Add comment")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😊")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack (spacing: 0.0) {
            Divider()
            
            HStack {
                Image(systemName: "house")
                Spacer()
                Image(systemName: "magnifyingglass")
                Spacer()
                Image(systemName: "bag")
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
        }
    }
}
