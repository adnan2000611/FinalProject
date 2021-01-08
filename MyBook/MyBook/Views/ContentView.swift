//
//  ContentView.swift
//  MyBook
//
//  Created by Mac on 12/30/20.
//

import SwiftUI


struct UserTextField: View {
    let imageName : String
    let label : String
    @Binding var labeltextfield : String
    
    var body: some View {
        HStack{
            Spacer()
            VStack{
                Image(systemName: imageName).resizable().scaledToFit().frame(width: 40, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            Spacer()
            VStack(alignment: .leading){
                Text(label)
                TextField(label, text: $labeltextfield)
                
            }
            
        }.padding()
    }
}
struct ViewDesignUserPage: ViewModifier {
    var theHeight: CGFloat
    func body(content: Content) -> some View {
        content.frame(width: 420, height: theHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.white).cornerRadius(40)
    }
}
struct TitleDesgin : ViewModifier{
    func body(content: Content) -> some View {
        content.padding(.top, 60).padding([.leading,  .trailing], 30.0).font(.custom("Avenir-Black", size: 30))
    }
}
struct SubtitleDesgin : ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.horizontal, 30.0).modifier(TextDesginNotShow()).padding(.bottom)
    }
}
struct TextDesginNotShow : ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.trailing, 5.0).foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1))).font(.custom("Avenir", size: 17))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NewUser()
        
    }
}
