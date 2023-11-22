//
//  NowPlayingView.swift
//  AppleMusicDemo
//
//  Created by dmoney on 11/22/23.
//

import SwiftUI

struct NowPlayingView: View {
    var body: some View {
            HStack{
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ )
                    .frame(width: 350 , height: 80)
                    .foregroundStyle(.white)
                    .overlay(
                    HStack(){
                        Image(systemName: "music.note.list")
                            .font(.title)
                        Text("Back Then")
                            .font(.title2)
                        Spacer()
                        Image(systemName: "play.fill")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Image(systemName: "forward.fill")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                    }.padding())
                
                
            }
        
    }
}

#Preview {
    


        NowPlayingView()
    
}
